#!/bin/bash -ex

BP_STORAGE="/mnt/c/Users/dbese/AppData/Roaming/Factorio/blueprint-storage.dat"

./factorio-blueprint-decoder/decode $BP_STORAGE | ./factorio-blueprint-decoder/encode-export-string | ./fatul/decode blueprints -
