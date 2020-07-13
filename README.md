# video-slide-extractor

Two simple scripts to extract keyframes with set number of changes and then filter out frames with faces

You've listened to a great talk and you would like to go over slides and include them in your notes.
You don't want to to over the video again, so you:

 - Extract keyframes that are likely to contain new slides (extract-frames.sh)
 - If the conference has good production, you filter out every slide that has faces. Since this is fuzzy, you can go over two directories - faces/ and the original directory (filter-faces.sh)

## Installation

You need opencv, including contrib for filtering faces, [facedetect](https://www.thregr.org/~wavexx/software/facedetect/)
and ffmpeg.

## Usage

Extract by simply running the script:

```shell
extract-frame.sh path-to-video.mp4
```

Output slides will be in path-to-video-slides/

You can customize how it works

```shell
extract-frame.sh path-to-video.mp4 output-slides 0.4
```

This will extract keyframes that changed 40% or more over the previous keyframe
and resulting slides are saved into output-slides/

Go to output directory and run

```shell
filter-faces.sh *.png
```


## If you liked these script, please donate

If you like these scripts, [support me by sending a small donation](https://juraj.bednar.io/en/support-me/)
