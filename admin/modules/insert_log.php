<?php
$host = 'localhost';
$user = 'root';
$pass = '';
$db = 'akasia';

$mid = $_SESSION['mid'];
$bid = $attachment_d['biblio_id'];

$conn = mysqli_connect($host, $user, $pass, $db) or die("Tidak Terhubung Ke Server Database");

mysqli_query($conn, "INSERT INTO ebook_log(member_id, biblio_id) VALUES($mid, $bid)");
?>
