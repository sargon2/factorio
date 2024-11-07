#!/bin/bash -ex

# Fatul reads the old blueprints to try to minimize the diff.  That's WAY too stateful. (I got a weird error when it was doing the diff.)
# So, to prevent that, just clear them out first to ensure they're stateless.
rm -rf blueprints/

./fatul/decode blueprints
