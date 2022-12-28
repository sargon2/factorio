#!/bin/bash -ex

BP_STORAGE="/mnt/c/Users/dbese/AppData/Roaming/Factorio/blueprint-storage.dat"

# Fatul reads the old blueprints to try to minimize the diff.  That's WAY too stateful. (I got a weird error when it was doing the diff.)
# So, to prevent that, just clear them out first to ensure they're stateless.
rm -rf blueprints/

./factorio-blueprint-decoder/decode $BP_STORAGE | ./factorio-blueprint-decoder/encode-export-string | ./fatul/decode blueprints -
