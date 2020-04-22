
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
<?php
session_start();
if(isset($_SESSION['email'])) {
    echo '<script>window.location.replace("./index.php");</script>';
} else {
$email = "admin";
$password = "admin";
if(isset($_POST['email']) && isset($_POST['password'])) {
	if($_POST['email'] == $email && $_POST['password'] == $password) {
		session_start();
		$_SESSION['email'] = $_POST['email'];
		$_SESSION['password'] = $_POST['password'];
		echo '<meta http-equiv="refresh" content="2; url=./index.php"/>';
		echo "<center><h1>Berhasil, dalam 2 detik kamu akan dialihkan ke halaman utama</h1></center>";
	} elseif($_POST['email'] != $email && $_POST['password'] == $password) {
		echo "<center><h1>Gagal!, Email Salah</h1></center>";
	} elseif($_POST['email'] == $email && $_POST['password'] != $password) {
		echo "<center><h1>Gagal!, Password Salah</h1></center>";
	} elseif($_POST['email'] != $email && $_POST['password'] != $password) {
		echo "<center><h1>Gagal!, Email & Password Salah</h1></center>";
	} 
} else {
	echo "<center><h1>Gagal!, jangan biarkan email & password kosong</h1></center>";
}
}
?>