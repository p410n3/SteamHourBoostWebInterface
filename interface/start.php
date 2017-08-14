<?php
    exec('sudo -u root /var/steam_sudo_wrapper/start.sh');
	sleep(3);
	header("Location: ./index.php");
?>