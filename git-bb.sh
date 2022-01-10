#!/bin/bash

bb_push() {
    cp ~/Git/python_learn/* ~/BitBucket/python_learn
    cd ~/BitBucket/python_learn
    sleep 2
    git add .
    git commit -m "migrate"
    git push origin
}

bb_push