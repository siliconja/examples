    // DEBUG
    FILE *fdbg = fopen("/tmp/hwinfo.debug.log", "a");
    if (fdbg) {
        fprintf(fdbg, "hwinfo: ");
        time_t rawtime;
        struct tm * timeinfo;
        time ( &rawtime );
        timeinfo = localtime (&rawtime);
        fprintf(fdbg, "(%s)", asctime(timeinfo));
        for (int argi = 0; argi < argc; argi++) {
            fprintf(fdbg, "%s ", argv[argi]);
        }
        fprintf(fdbg, "\n");
        fclose(fdbg);
    }
    // END DEBUG
