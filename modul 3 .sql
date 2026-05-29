-- Nama: Wulan Aulia
-- NIM: 24241029
-- Kelas: A
-- Modul: 3

-- Nilai Literal
-- Operator Matematika
-- Operator Perbandingan
-- Operator Logika
-- Fungsi Matematika dan Tanggal (Date)
-- Klausa WHERE dan LIKE

-- Praktek 1
-- Menggunakan nilai literal pada SELECT
SELECT 77;

-- Praktek 2
-- Menampilkan nilai literal dengan tipe data berbeda
SELECT 77 AS angka,
FALSE AS nilai_logika,
'PTI' AS teks;

-- NULL berarti tidak memiliki nilai atau kosong
-- Praktek 3
SELECT NULL AS kosong;

-- Operator Matematika
-- Praktek 4
SELECT 
5 % 2 AS sisa_bagi,
5 / 2 AS hasil_bagi_1,
5 DIV 2 AS hasil_bagi_2;

-- Latihan Mandiri 1
SELECT 5 * 4;
SELECT (4 * 8) % 7;
SELECT (4 * 8) MOD 7;
SELECT 12 + 4;
SELECT 20 - 7;
SELECT 81 / 9;
SELECT 25 MOD 4;
SELECT (10 + 5) * 2;
SELECT ((8 * 5) + 10) % 6;

-- Praktek 5
-- Menggunakan database
USE pti_mart;

-- Praktek 6
-- Mengalikan qty dan harga
SELECT qty * harga AS total_beli
FROM tr_penjualan;

-- Operator Perbandingan
-- Praktek 7
SELECT 
5 = 5 AS sama_dengan,
5 != 5 AS tidak_sama_1,
5 != 4 AS tidak_sama_2;

-- Latihan Mandiri 2
SELECT 1 = TRUE;
SELECT 1 = FALSE;
SELECT 5 >= 5;
SELECT 5.2 = 5.20000;
SELECT NULL = 1;
SELECT NULL = NULL;
SELECT NULL IS NULL;

-- Fungsi Matematika
-- Praktek 8
SELECT 
POW(3,2) AS pangkat,
ROUND(3.14) AS round_1,
ROUND(3.54) AS round_2,
ROUND(3.155,1) AS round_3,
ROUND(3.155,2) AS round_4,
FLOOR(4.28) AS floor_1,
FLOOR(4.78) AS floor_2,
CEILING(4.39) AS ceil_1,
CEILING(4.55) AS ceil_2;

-- Fungsi Tanggal
-- Praktek 9
SELECT 
NOW() AS waktu_sekarang,
YEAR('2022-05-03') AS tahun,
ROUND(DATEDIFF(NOW(), '2022-05-03') / 30) AS selisih_bulan,
DAY('2022-05-03') AS hari;

-- Latihan Mandiri 3
SELECT DATEDIFF(NOW(), '2022-07-23');
SELECT YEAR('2022-07-23');
SELECT MONTH('2022-07-23');
SELECT DAY('2022-07-23');
SELECT YEAR(NOW());

-- Fungsi penting lainnya
SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();

-- Praktek 10
-- Menghitung selisih hari transaksi
SELECT DATEDIFF(NOW(), tgl_transaksi) AS selisih_hari
FROM tr_penjualan;

-- WHERE digunakan untuk memfilter data

-- Praktek 11
-- qty lebih dari 3
SELECT 
nama_produk, qty FROM tr_penjualan
WHERE qty > 3;

-- harga maksimal 10000
SELECT nama_produk, harga
FROM tr_penjualan
WHERE harga <= 10000;

-- Praktek 12
-- WHERE dengan operator AND
SELECT 
nama_produk, qty FROM tr_penjualan
WHERE qty > 3
AND MONTH(tgl_transaksi) = 6;

-- Praktek 13
-- WHERE exact match
SELECT nama_produk,qty
FROM tr_penjualan
WHERE nama_produk = 'Flashdisk DQLab 32 GB';

-- Praktek 14
-- WHERE dengan LIKE
SELECT nama_produk
FROM tr_penjualan
WHERE nama_produk LIKE 'F%';

-- Latihan LIKE
-- Karakter kedua huruf a
SELECT nama_produk
FROM tr_penjualan
WHERE nama_produk LIKE '_a%';

-- Mengandung huruf t
SELECT nama_produk
FROM tr_penjualan
WHERE nama_produk LIKE '%t%';

-- Mengandung kata "un"
SELECT nama_produk
FROM tr_penjualan
WHERE nama_produk LIKE '%un%';

-- Praktek 15
-- LIKE dan operator perbandingan
SELECT nama_produk,qty
FROM tr_penjualan
WHERE nama_produk LIKE 'F%'
AND qty > 2;