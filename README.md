# Tools to build archipelago

This repository contains a set of tools I created to help me having a clean environment while working on [Archipelago](https://github.com/Archipelago).  
I do not pretend to make a generic solution, it's only something I'm using by myself and which work with the tools I'm using. It requires the `enlightenment` window manager, the `terminology` terminal, the command `torsocks` from **tor** and `inotify`.

## How it works

It assumes that you have a directory architecture that look like the following:
```
├── api
├── database
├── tools
└── website
```
It requires to put the file `env.sh` somewhere in your environment. This script will go to your third desktop, open `terminology` with three splits. The whole terminal is wrapped into tor, making it way safer.  
An environment variable named `AR_TMP_DIR` is available within this term. It's the path to the stdout and stderr of the lauched services.  
Each service has four commands: `start`, `stop`, `status` and `restart`.  
To add a service, you can copy an existing service `cp api .`. Nothing more. Symlinks are working too.
