#!/bin/sh
ls $(dirname "$0")
env LD_LIBRARY_PATH=$(dirname "$0")/usr/bin/lib $(dirname "$0")/usr/bin/otter_store
