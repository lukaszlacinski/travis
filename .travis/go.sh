#!/bin/bash

for p in $(xargs -n1 -d: <<< $PATH); do
    echo $p | grep '/go' > /dev/null
    if [ $? -ne 0 ]; then
        TMPPATH=$p:$TMPPATH
    fi
done
export PATH=$TMPPATH
echo $PATH

