# scp from hosta to hostb via hostc
scp -r -oProxyCommand="ssh -p 50022 -W %h:%p hostc" srcdir  hostb:/pathto/dstdir

