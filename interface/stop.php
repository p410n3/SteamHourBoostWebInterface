<?php
  if($_SESSION['Active'] == false){ /* Redirects user to Login.php if not logged in */
    header("location:login.php");
	  exit;
}
	  
    exec('sudo -u root /var/steam_sudo_wrapper/stop.sh');
	sleep(3);
	header("Location: ./index.php");
?>
