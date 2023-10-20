# Automated Lecture Audio Manipulation Script

## Introduction

I wrote this script during my university days in 2018 to provide a collection of utilities that enhanced the experience of my downloaded lecture audio and video content. The initial moments of every lecture were marred by a loud and jarring 30-second copyright message. This script automated the task of trimming off this start segment, allowing the lecture to begin at the start of the lecture. It then adds a musical backing track to the lecture which improved their listenability as I went about my day.
Lastly it reads the file name to determine what subject the lecture belowngs to and moves the files to their course folders that they are meant to be in on my computer.

## Script Breakdown

1. **Remove Copyright Message from Audio**: All `.mp3` files within the designated directory undergo a trimming process, eliminating the first 30 seconds.
2. **Remove Copyright Message from Video**: Similarly, the script processes `.mp4` files, ensuring the first 30 seconds are trimmed off.
3. **Add Musical Backing to Audios**: An overlay of a chosen musical track enriches each `.mp3` file. Once this fusion is complete, the newly produced files with this musical undertone are transferred to a dedicated directory, while the unaltered originals find their way to the trash.
4. **Sort and Move Videos**: The script the by categorizing and relocating lecture audio and videos into their correspending course folders. It uses REGEX to identifiy by which course code was used in the audio or video's file name. e.g.,`Cog`, `Cap`, and `Soc`.

## Initial Setup

1. Firstly, station your original lecture audio and video files inside the `/Users/YourUsername/Desktop/TrimLec` directory. If this directory differs on your machine, adjust the file path accordingly in the script.
2. Deposit your chosen backing track within the confines of `/Users/YourUsername/Desktop/TrimLec/hiphoptrack/`. Again, if this directory is different on your machine, tweak the file path in the script to match your setup.

## Running the Script

1. Make the script executabile using the terminal command:
   ```bash
   chmod +x /path_to_script/trim.sh
   ```

2. Once that's confirmed, proceed to run the script:
   ```bash
   ./path_to_script/trim.sh
   ```

## Considerations

- Prior to deploying the script, replace `YourUsername` with your computers username.
- Ensuring that the directories mentioned in the script, such as `11_CogRecordings/Video`, are in place or be prepared to modify the script to mirror your directory structure.
- A word of caution: this script lacks in-depth error handling. Always have a backup of your files, especially when they hold significant value.

## Future Development:
- An improvement would be to use variables for paths to make it easier to modify.
Then remove absolute paths, so the user can specify the desired path or use relative paths.

e.g.,


#### Directory where the original lecture audio and video files are saved
```bash
LECTURE_DIR="./TrimLec"
```

#### Background music track path
```bash
MUSIC_TRACK="./hiphoptrack/2hrhiphopmq.wav"
```

#### Directory to move modified audio with music backing track
```bash
DESTINATION_DIR="./LectureWithMusic"
```

### And then call the directeries where they are needed:
e.g.,
```bash
cd $LECTURE_DIR

...

mv "$name wMusic.mp3" $DESTINATION_DIR
```


## Troubleshooting

- For any hiccups, double-check the accuracy of file and folder paths.
- Always make sure you possess the required permissions to execute and transfer files.
- A quick check on whether `ffmpeg` is properly installed and operational can be done by keying in `ffmpeg -version` in the terminal.
