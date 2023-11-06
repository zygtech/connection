#on connection
php n.php > n

#through shared 'toomi' n

#with every voice chunk
soxi -s OO.wav > ms
cat n ms | minimodem --write 1200 -f key.wav
pad_len=$(( 75000 - $(soxi -s key.wav)))
sox key.wav Nkey.wav pad 0 "$pad_len"s
sox Nkey.wav OO.wav L.wav

#cleaning
rm Nkey.wav
rm key.wav
rm ms

#through light L
