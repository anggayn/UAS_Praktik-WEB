<?php
$koneksi = mysqli_connect('localhost', 'root', '', 'animal_care');

// Mengatur tingkat pelaporan kesalahan
error_reporting(E_ALL);
ini_set('display_errors', 1);

if (!$koneksi) {
    die("Koneksi dengan database gagal: " . mysqli_connect_errno() . " " . mysqli_connect_error());
}

// Fungsi untuk menyimpan data ke database saat sign up
function signUp($nama, $email, $password)
{
    global $koneksi;

    // Melakukan sanitasi data sebelum disimpan ke database
    $nama = mysqli_real_escape_string($koneksi, $nama);
    $email = mysqli_real_escape_string($koneksi, $email);
    $password = mysqli_real_escape_string($koneksi, $password);

    // Menyimpan data ke tabel pengguna
    $sql = "INSERT INTO signup (nama, email, password) VALUES ('$nama', '$email', '$password')";

    if (mysqli_query($koneksi, $sql)) {
        echo "<script>alert('Registrasi Berhasil'); window.location.href='login.php'</script>";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($koneksi);
    }
}

// Fungsi untuk menyimpan data dari database saat sign in
function signIn($email, $password)
{
    global $koneksi;

    // Melakukan sanitasi data sebelum digunakan dalam query
    $email = mysqli_real_escape_string($koneksi, $email);
    $password = mysqli_real_escape_string($koneksi, $password);

    // Memeriksa keberadaan pengguna dengan email dan password yang sesuai
    $sql = "SELECT * FROM signup WHERE email = '$email' AND password = '$password'";
    $result = mysqli_query($koneksi, $sql);

    if (mysqli_num_rows($result) > 0) {
        // Pengguna ditemukan, lakukan tindakan selanjutnya (misalnya, tampilkan halaman selamat datang)
        echo "<script>alert('Login berhasil'); window.location.href='index.php'</script>";
    } else {
        // Pengguna tidak ditemukan atau kombinasi email dan password salah
        echo "<script>alert('Email atau password salah'); window.location.href='login.php'</script>";
    }
}

// Memproses form sign up
if (isset($_POST['sign_up'])) {
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    signUp($nama, $email, $password);
}

// Memproses form sign in
if (isset($_POST['sign_in'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];
    signIn($email, $password);
}

mysqli_close($koneksi);
?>
