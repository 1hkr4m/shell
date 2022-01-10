#!/bin/bash

bb_push() {
    cp ~/Git/shell/* ~/BitBucket/shell
    cd ~/BitBucket/shell
    sleep 2
    git add .
    git commit -m "update from git hub"
    git push origin
}

bb_push