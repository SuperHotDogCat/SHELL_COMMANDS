#!/bin/sh

#標準入力で指定した回数だけ音楽を再生するシェルスクリプト 使用例 ./playMusicNtimes.sh 10
n=$1 #$1で標準入力1番目(0 index)の引数を受け取る, どうやら数字として勝手に解釈してくれる
for ((i=1; i<=n; i++)); do
        filename=$2 #標準入力2番目に流したい音楽を指定
        play $filename &
        player_pid=$! #$!で最後に実行したバックグラウンドプロセスIDとなります。つまり, 上で実行したplay $filenameになります。
        wait $player_pid #上のplay $filenameが終了するまで待機します
done
