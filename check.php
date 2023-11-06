<?php
	$key = file_get_contents('checkKey');
	$n = file_get_contents('n');
	if (substr($key,0,strlen($n))==$n) echo substr($key,strlen($n),null);
?>
