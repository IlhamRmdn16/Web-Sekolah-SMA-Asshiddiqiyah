<?php

session_start();

if (!isset($_SESSION["ssLogin"])) {
    header("Location: ../auth/login.php");
    exit;
}

require_once "../config.php";

//Jika Tombol Simpan Ditekan
if (isset($_POST['simpan'])) {
    //Ambil Value elemen yang di posting
    $username = trim(htmlspecialchars($_POST['username']));
    $nama = trim(htmlspecialchars($_POST['nama']));
    $jabatan = $_POST['jabatan'];
    $alamat = trim(htmlspecialchars($_POST['alamat']));
    $gambar = trim(htmlspecialchars($_FILES['image']['name']));
    $password = 1234;
    $pass = password_hash($password, PASSWORD_DEFAULT);

    //Cek Username
    $cekusername = mysqli_query($koneksi, "SELECT * FROM tbl_user WHERE username = '$username'");
    if (mysqli_num_rows($cekusername) > 0) {
        header("location:add-user.php?msg=cancel");
        return;
    }

    //Upload Gambar
    if ($gambar != null) {
        $url = 'add-user.php';
        $gambar = uploadimg($url);
    } else {
        $gambar = 'default.jpg';
    }

    mysqli_query($koneksi, "INSERT INTO tbl_user VALUES(null, '$username' , '$pass','$nama','$alamat','$jabatan','$gambar')");

    header("location:add-user.php?msg=added");
    return;
}


?>