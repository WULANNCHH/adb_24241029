-- Nama  : Wulan Aulia
-- NIM   : 24241029
-- Kelas : PTI A / IV
-- Modul : 2

-- Menggunakan database
USE pti_mart;

-- Menampilkan daftar database
SHOW DATABASES;

-- Melihat isi tabel pelanggan
SELECT * FROM pelanggan;

-- Melihat isi tabel produk
SELECT * FROM produk;

-- Case 1:
-- Tim sales mencari nama customer dan alamatnya
SELECT 
    nama_pelanggan AS nama_customer,
    alamat AS alamat_customer
FROM pelanggan;

-- Case 2:
-- Tim sales ingin melihat nama produk dan harganya
SELECT 
    nama_produk,
    harga AS harga_produk
FROM produk;