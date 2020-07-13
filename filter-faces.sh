#!/bin/bash

# install facedetect from https://gitlab.com/wavexx/facedetect
# or https://www.thregr.org/~wavexx/software/facedetect/

mkdir faces
for i in $@
    do
        if facedetect -q ${i}
            then
               mv ${i} faces/
            fi
    done