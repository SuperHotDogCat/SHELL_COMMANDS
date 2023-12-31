#!/bin/bash

# ディレクトリ内の音楽ファイルを取得
music_files=("$1"/*.mp3)
index=$2 
if ! [[ $index =~ ^[0-9]+$ ]]; then
    index=0 #標準入力がなかったら最初から再生する。
fi
echo $index
# 音楽を再生
for ((i=index; i<${#music_files[@]}; i++)); do
    music_file="${music_files[$i]}"
    play "$music_file" &
    player_pid=$!
    wait $player_pid
done
