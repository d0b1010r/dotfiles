#!/bin/bash

HASHES=$(git log --grep=$1 --format='%H')
DIFFS=""

for HASH in "$HASHES"; do
    DIFF=$(git show $HASH)
    DIFFS="$DIFFS":"$DIFF"
done

echo "$DIFFS" | sed "s/^-/`echo -e \"\x1b\"`[41m-/;s/^+/`echo -e \"\x1b\"`[42m+/;s/^@/`echo -e \"\x1b\"`[34m@/;s/$/`echo -e \"\x1b\"`[0m/" | less -R
