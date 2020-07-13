#!/bin/bash
shopt -s extglob

if [ -z $1 ]
    then
        echo "Usage: extract-frames.sh videofilename [target-directory] [threshold]"
        echo "If target-directory is not set, a heuristic will be applied"
        exit 1
    fi

TARGETDIR=$2
if [ -z ${TARGETDIR} ]
    then
        TARGETDIR=${1%.@(mkv|mp4|mov|avi)}-slides
    fi

THRESHOLD=$3
if [ -z ${THRESHOLD}]
    then
        THRESHOLD="0.3"
    fi

echo "Filtering ${1} into ${TARGETDIR}"
mkdir "${TARGETDIR}"
ffmpeg -i "${1}" -vf  "select=gt(scene\,${THRESHOLD}), scale=1280:720" -vsync vfr "${TARGETDIR}/slide%03d.png"
