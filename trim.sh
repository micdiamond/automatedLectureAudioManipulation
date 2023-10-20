# Line 2 for For Mac users: tells the operating system what shell interpreter to us to interpret this script
# !/bin/bash

# Locate to the directory where the original lecture audio and video files are saved 
cd /Users/YourUsername/Desktop/TrimLec

# Removes the 30 second copyright message that plays at the start of every lecture
# for all audio files
for file in *.mp3; do
name=${file%%[.]*};
ffmpeg -i "$file" -ss 30 -vcodec copy -acodec copy "$name trimmed.mp3"
done

# Removes the 30 second copyright message that plays at the start of every video lecture
for all audio filesfor file in *.mp4; do
name=${file%%[.]*};
ffmpeg -i "$file" -ss 30 -vcodec copy -acodec copy "$name trimmed.mp4"
done

# Adds a musical backing track over all the audio lectures to make it them enjoyable to listen to while I was going about my day.
for file in *.mp3; do
name=${file%%[.]*};
ffmpeg -i "$file" -i /Users/YourUsername/Desktop/TrimLec/hiphoptrack/2hrhiphopmq.wav -filter_complex amerge -ac 2 -c:a libmp3lame -q:a 4 "$name wMusic.mp3"
mv "$name wMusic.mp3" /Users/YourUsername/Documents/2018\ Uni/Semester\ 2/LectureCaptureSem2/zLecsMusicBackingmp3  
mv "$name.mp3" /Users/YourUsername/.Trash
done

# Sorts and moves all lecture videos into their respective course folder (using bash and regex)
mv ./*Cog* ./11_CogRecordings/Video
mv ./*Cap* ./11_CapRecordings/Video
mv ./*Soc* ./11_SocRecordings/Video
Done
