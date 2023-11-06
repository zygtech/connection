<?php
	echo(hash('sha512', random_bytes(512) . microtime()));
?>
