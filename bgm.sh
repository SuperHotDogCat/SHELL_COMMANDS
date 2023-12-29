#!/bin/bash

# ディレクトリ内の音楽ファイルを取得
music_files=("$1"/*.mp3)
# 音楽を再生
for music_file in "${music_files[@]}"; do
    play "$music_file" &
    player_pid=$!
    wait $player_pid
done
