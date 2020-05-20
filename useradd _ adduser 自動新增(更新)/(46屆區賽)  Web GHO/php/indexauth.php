<?php
/*	echo $_SERVER['SCRIPT_FILENAME'];*/
#	echo $_SERVER['SCRIPT_URL'];
	if (!isset($_SERVER['PHP_AUTH_USER'])) {
		header('WWW-authenticate: Basic realm="my realm"');
		header('HTTP/1.0 401 Unauthorized');
		echo 'Text to sen if user hit cancel button';
	exit;
	}else{
		echo "<p>Hello {$_SERVER['PHP_AUTH_USER']}.</p>";
		echo "<p>You entered {$_SERVER['PHP_AUTH_PW']} as your password.</p>";
	}
?>

