#!/usr/bin/env bash

cd "$(dirname "$0")"


export XDG_DATA_HOME="data"
export XDG_CONFIG_HOME="config"
export XDG_STATE_HOME="state"
export XDG_CACHE_HOME="cache"
export XDG_RUNTIME_DIR="runtime"
export XDG_DATA_DIRS="dirs:data_dirs"
export XDG_CONFIG_DIRS="dirs:config_dirs"

haxe test.hxml # gen test.js
