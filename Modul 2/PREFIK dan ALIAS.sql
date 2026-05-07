-- Nama : Wulan Aulia
-- Nim : 24241029
-- Kelas : PTI A / IV
-- Modul : 2

-- menggunakan database
USE pti_mart; -- USE nama_db;

-- mengambil 1 kolom saja dari 1 taable 
-- mengambil kolom nama produk dari table produk
SELECT nama_produk FROM produk;

-- mengambil > 1 kolom dari 1 table 
-- mengambil kolom nama_produk dari harga dari table produk
SELECT nama_produk.harga FROM produk;

-- mengambil semua kolom 
SELECT * FROM produk;

-- mengambil 2 kolom dari 1 tabel
SELECT kode_produk,nama_produk FROM produk;

-- mengambil semua kolom
SELECT * FROM produk;


-- PREFIK dan ALIAS 
-- PREFIK
-- bagian nama objek database yang levelnya lebih tinggi 
SELECT produk.nama_produk FROM produk;

-- full hirarki nama_db.nama_table.nama_colum
SELECT pti_mart.produk.nama_produk FROM produk;

-- mengambil 2 kolom ang sama dalam 2 tabel yang berbeda
SELECT produk.harga, tr_penjualan.harga FROM produk, tr_penjualan;

-- ALIAS
-- nama pengganti sementara dari nama objek database
-- mengganti sementara nama kolom 'nama_produk' dengan 'ap'
SELECT nama_produk as mp FROM produk;

-- mengganti nama sementara 
SELECT nama_produk as np FROM PRODUK;

-- 	menggunakan ANALISA dan PREFIX bersamaan
SELECT tp.nama_produk as np FROM produk as tp;