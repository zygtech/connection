#from lights
sox L.wav checkKey.wav trim 0 75000s

#reading connection key
minimodem --read 1200 -f checkKey.wav > checkKey

#reading voice chunk
sox L.wav OO.wav trim 75000s 

#only if both key and length of chunk match
if [ "$(php check.php)" != "$(soxi -s OO.wav)" ] ; then
	rm OO.wav 
else
	play OO.wav
fi

#cleaning
rm checkKey.wav
rm checkKey

