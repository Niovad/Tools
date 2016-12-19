#!/usr/bin/env bash

if [ "$1" = test ]; then
    LD_PRELOAD="" mysql -u root -ptoor archipelago.test
else
    LD_PRELOAD="" mysql -u root -ptoor archipelago
fi
