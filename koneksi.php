<?php
global $koneksi;
$koneksi = mysqli_connect("localhost", "root", "");
<<<<<<< HEAD
	if (!$koneksi) {
		die("Database connection problem");
	}
	$db_use = mysqli_select_db($koneksi, "db_binus_group5") or die("Select db problem !!");
=======
if (!$koneksi) {
	die("Database connection problem");
}
$db_use = mysqli_select_db($koneksi, "db_binus_group5") or die("Select db problem !!");
>>>>>>> upstream/main
?>