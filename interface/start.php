<?php
require_once ('config.php'); // For storing username and password.
session_start();

    exec('sudo -u root /var/steam_sudo_wrapper/start.sh');
	sleep(3);
	header("Location: ./index.php");
?>
