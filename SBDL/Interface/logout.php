
<?php
session_start();
if(isset($_SESSION['email'])) {
    session_destroy();
    ?>
    <meta http-equiv="refresh" content="2; url=./login.php"/>
    <center><h2>Berhasil Logout</h2>kamu akan dialihkan kembali ke halaman login dalam 2 detik</center>
    <?php
} else {
    ?>
    <meta http-equiv="refresh" content="2; url=./login.php"/>
    <center><h2>Gagal Logout</h2>Silahkan login terlebih dahulu<br/><br/>kamu akan dialihkan kembali ke halaman login dalam 2 detik</center>
    <?php
}
?>
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
<?php
session_start();
if(isset($_SESSION['email'])) {
    session_destroy();
    ?>
    <meta http-equiv="refresh" content="2; url=./login.php"/>
    <center><h2>Berhasil Logout</h2>kamu akan dialihkan kembali ke halaman login dalam 2 detik</center>
    <?php
} else {
    ?>
    <meta http-equiv="refresh" content="2; url=./login.php"/>
    <center><h2>Gagal Logout</h2>Silahkan login terlebih dahulu<br/><br/>kamu akan dialihkan kembali ke halaman login dalam 2 detik</center>
    <?php
}
?>