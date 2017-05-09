//
// thru.go
//
// Show average network throughput on a Linux box.
//

package main

import (
    "bufio"
    "fmt"
    "log"
    "os"
    "os/exec"
    "os/signal"
    "strings"
    "strconv"
    "syscall"
    "time"
)

const statsfile = "/proc/net/dev"

type IfaceStat struct {
    name string
    txb uint64
    rxb uint64
}

// parse one interface line from /proc/net/dev,
// returning (interface_name, tx_bytes, rx_bytes)
func parse_one_line(input string, stat *IfaceStat) {
    stat.name = ""
    items := strings.Fields(input)
    if (len(items) < 10) {
        return
    }
    var err error
    stat.name = strings.TrimRight(items[0], ":")
    stat.rxb, err = strconv.ParseUint(items[1], 10, 64)
    if err != nil {
        stat.name = ""
        return
    }
    stat.txb, err = strconv.ParseUint(items[9], 10, 64)
    if err != nil {
        stat.name = ""
        return
    }
}

func read_interface_stats(rates map[string]IfaceStat) {
    file, err := os.Open(statsfile)
    if (err != nil) {
        log.Fatal(err)
    }
    defer file.Close()

    scanner := bufio.NewScanner(file)
    for scanner.Scan() {
        var stat IfaceStat
        parse_one_line(scanner.Text(), &stat)
        if stat.name == "" {
            continue
        }

        prev := rates[stat.name]
        bytes_per_second := (stat.rxb - prev.rxb) + (stat.txb - prev.txb)
        kbps := (float64(bytes_per_second) * 8.0) / 1024.0
        rates[stat.name] = stat

        fmt.Printf("%16s %16d %16d %16.2f\n",
                   stat.name, stat.rxb, stat.txb, kbps)
    }

    if err := scanner.Err(); err != nil {
        log.Fatal(err)
    }
}

func cls() {
    cmd := exec.Command("clear")
    cmd.Stdout = os.Stdout
    cmd.Run()
}

func print_header() {
    fmt.Printf("%16s %16s %16s %16s\n",
                "INTERFACE", "Rx(bytes)", "Tx(bytes)", "Throughput(kbps)")
    fmt.Printf("%s\n", strings.Repeat("-", 67))
}

func the_end() {
    fmt.Println("\ngoodbye")
}

func main() {
    // setup CTRL+C signal handling
    c := make(chan os.Signal, 2)
    signal.Notify(c, os.Interrupt, syscall.SIGTERM)
    go func() {
        <-c
        the_end()
        os.Exit(1)
    }()

    // tx/rx data is kept here: map["interface_name"]=IfaceStat
    rates := make(map[string]IfaceStat)

    for {
        cls()
        print_header()
        read_interface_stats(rates)
        time.Sleep(1 * time.Second)
    }
}
