#!/bin/bash

for i in {1..4}
    do
        echo "Dogs are really awesome pets but has attacked me three times" > ./loop-pet${i}.txt
        echo "Created loop-pet${i}.txt"
    done
