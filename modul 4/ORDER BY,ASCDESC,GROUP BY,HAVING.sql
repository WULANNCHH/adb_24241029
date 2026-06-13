-- Nama : Wulan aulia
-- NIM	: 24241029
-- Kelas : A
-- Modul : 4

-- menggunakan database
USE pti_mart;

-- ORDER BY, ASC/DESC, GROUP BY, HAVING
-- ORDER BY, menyusun urutan data sesuai nilai dari kolom
-- Praktek #1
-- Ambil nama_produk, qty dari tabel penjualan urut berdasarkan qty
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty;

-- Praktek #2
-- Ambil nama_produk, qty dari tabel penjualan urut berdasarkan qty dan nama_produk
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty, nama_produk;

-- Latihan Mandiri
-- Soal 1
SELECT * FROM tr_penjualan ORDER BY qty, tgl_transaksi;
-- Soal 2
SELECT * FROM pelanggan ORDER BY nama_pelanggan;
-- Soal 3
SELECT * FROM pelanggan ORDER BY alamat;

-- ASC dan DESC pada ORDER BY
-- Praktek #3
-- Ambil nama_produk dan qty dari penjualan urut qty terbesar ke kecil
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC;

-- Praktek #4
-- Ambil nama_produk dan qty dari penjualan urut qty, nama_prdouk terbesar ke kecil
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC, nama_produk; 

-- Latihan Madiri
-- Soal 1
SELECT * FROM tr_penjualan 
ORDER BY tgl_transaksi DESC, qty ASC;
-- Soal 2
SELECT * FROM pelanggan
ORDER BY nama_pelanggan DESC;
-- Soal 3
SELECT * FROM pelanggan
ORDER BY alamat DESC;

-- ORDER BY dari hasil perhitungan
-- Praktek #5
-- Ambil nama_produk, qty, harga, dan total, urut berdasar total terbesar
SELECT nama_produk, qty, harga, qty*harga AS total
FROM tr_penjualan
ORDER BY total DESC;

-- Latihan Mandiri
SELECT *,
       (qty * harga - diskon_persen) AS total_harga
FROM tr_penjualan
ORDER BY total_harga DESC;

-- WHERE dengan ORDER BY
-- mengurutkan (ORDER BY) hasil filter data (WHERE)
-- Praktek #6
-- Ambil semua nama_produk dan qty yang huruf depan 'F' urut qty
SELECT nama_produk, qty FROM tr_penjualan
WHERE nama_produk LIKE 'F%' ORDER BY qty DESC;

-- Latihan 
-- Soal 1 
SELECT *
FROM tr_penjualan
WHERE diskon_persen > 0
ORDER BY harga DESC;
-- Soal 2
SELECT nama_produk, qty, harga
FROM tr_penjualan
WHERE harga >= 100000
ORDER BY harga DESC;
-- Soal 3
SELECT nama_produk, qty, harga
FROM tr_penjualan
WHERE harga >= 100000
   OR nama_produk LIKE 'T%'
ORDER BY diskon_persen DESC;

-- Fungsi Agregasi
-- fungsi untuk mengolah beberapa row (baris) data untuk menghasilkan nilai baru
-- bentuk SUM, AVERAGE, MAX, MIN
-- Praktek #7
-- Jumlahkan qty dari semua transaksi penjualan
SELECT SUM(qty) FROM tr_penjualan;

-- Praktek #8
-- Berapa rata-rata qty dari semua transaksi penjualan
SELECT AVG(qty) FROM tr_penjualan;

-- Praktek #9
-- Berapa jumlah transaksi
SELECT COUNT(no_urut) FROM tr_penjualan;

-- Praktek #10
-- Berapa pelanggan unik yang bertransaksi
SELECT COUNT(DISTINCT kode_pelanggan) FROM tr_penjualan;

-- Praktek #11
-- Qty max dan min dari transaksi penjualan
SELECT MAX(qty), MIN(qty) FROM tr_penjualan;

-- Praktek #12
-- tampilkan jumlah seluruh baris pelanggan dan pelanggan unik
SELECT COUNT(*), COUNT(DISTINCT kode_pelanggan) 
FROM tr_penjualan;

-- Praktek #13
-- Penggunaan kolom lain + Agregasi
SELECT nama_produk, MAX(qty) FROM tr_penjualan;

-- GROUP BY
-- mengelompokkan data berdasarkan satu kolom yang dipilih
-- Praktek #14
SELECT nama_produk FROM tr_penjualan; -- sebelum GROUP BY
SELECT nama_produk FROM tr_penjualan GROUP BY nama_produk;
-- beda dengan agregasi COUNT DISTINCT
SELECT COUNT(distinct nama_produk) FROM tr_penjualan;

-- dua kolom atau lebih
-- Praktek #15
SELECT nama_produk, qty FROM tr_penjualan
GROUP BY nama_produk, qty;

-- Praktek #16
-- GROUP BY dengan Agregasi
-- ambil jumlah qty berdasark kelompok nama_produk 
SELECT nama_produk, SUM(qty) FROM tr_penjualan
GROUP BY nama_produk;

-- Praktek #17
-- GROUP BY + Agregasi + ORDER BY
-- ambil jumlah qty berdasark kelompok nama_produk, urut qty terbesar
SELECT nama_produk, SUM(qty) FROM tr_penjualan
GROUP BY nama_produk ORDER BY SUM(qty) DESC;

-- Praktek #18
-- HAVING
-- sama seperti WHERE yaitu sebagai filter khusus untuk GROUP BY
-- HAVING filter khusus untuk hasil fungsi agregasi
-- ambil jumlah qty berdasark kelompok nama_produk, yang jml qty < 6,
-- urut qty terbesar
SELECT nama_produk, SUM(qty) FROM tr_penjualan
GROUP BY nama_produk 
HAVING SUM(qty) < 6
ORDER BY SUM(qty) DESC;