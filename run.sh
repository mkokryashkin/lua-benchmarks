#!/bin/bash
LUAW="<YOUR LUA WASM INTERPRETER COMMAND> -"
BENCHMARKS=$(ls -p  *.lua | grep -v / | tr '\n' ',' | head -c -1)
hyperfine -L  bench $BENCHMARKS "luajit {bench}" "lua5.4 {bench}" "$LUAW < {bench}"
