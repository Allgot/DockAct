#!/bin/bash

dune build

dune exec ./main.exe

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"