#!/bin/bash -ex

cp /mnt/c/Users/dbese/AppData/Roaming/Factorio/blueprint-storage.dat .

./factorio-blueprint-decoder/decode blueprint-storage.dat | ./factorio-blueprint-decoder/encode-export-string | ./fatul/decode blueprints -
