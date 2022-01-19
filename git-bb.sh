#!/bin/bash

bb_push() {
    cp ~/GitHub/shell/* ~/BitBucket/shell
    cd ~/BitBucket/shell
    sleep 2
    git add .
    git commit -m "$(date)"
    git push origin
}

bb_push