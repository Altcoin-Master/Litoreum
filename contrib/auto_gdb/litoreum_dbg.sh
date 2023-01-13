#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.litoreumcore/litoreumd.pid file instead
litoreum_pid=$(<~/.litoreumcore/testnet3/litoreumd.pid)
sudo gdb -batch -ex "source debug.gdb" litoreumd ${litoreum_pid}
