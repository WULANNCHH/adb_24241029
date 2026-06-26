-- Nama : Wulan Aulia
-- Nim 	: 24241029
-- Kelas : A 
-- Modul : 5

-- menggunakan database
USE pti_mart;

-- join
-- Fungsinya  menggambungkan dua buah atau lebih tabel
-- Praktek 1
-- Ambil pembelian dari setiap pelanggan
SELECT pl.nama_pelanggan, trp.tgl_transaksi, trp.nama_produk, trp.qty 
FROM pelanggan AS pl JOIN tr_penjualan AS trp 
ON pl.kode_pelanggan = trp.kode_pelanggan;
    

-- Praktek 2
SELECT pl.nama_pelanggan, trp.tgl_transaksi, trp.nama_produk, trp.qty 
FROM pelanggan AS pl JOIN tr_penjualan AS trp
ON true;

-- Praktek 3
-- penggunaan INNER JOIN 
SELECT pl.nama_pelanggan, trp.tgl_transaksi, trp.nama_produk, trp.qty 
FROM pelanggan AS pl INNER JOIN tr_penjualan AS trp 
ON pl.kode_pelanggan = trp.kode_pelanggan;

-- Praktek 4
-- LEFT OUTHER JOIN
-- Ambil nama pelanggan yang pernah belanja dan tidak pernah belanjjan
-- keb kolom : kode_pelanggan nama pelanggan, qty
SELECT pl.nama_pelanggan, trp.kode_pelanggan, trp.qty
FROM pelanggan AS pl LEFT JOIN tr_penjualan AS trp
ON pl.kode_pelanggan = trp.kode_pelanggan ORDER BY trp.qty DESC;

-- Praktek 5
-- RIGHT OTURER JOIN
-- ambil semua nama pelanggan tidak pernah belanja 
-- Keb : kode_pelanggan nama_pelanggan 
SELECT trp.kode_pelanggan, pl.nama_pelanggan, trp.qty 
FROM tr_penjualan AS trp RIGHT OUTER JOIN pelanggan AS pl
ON trp.kode_pelanggan = pl.kode_pelanggan
WHERE trp.qty IS NULL;

-- Praktek 6
-- LEFT join 3 TABEL
-- cari tau apa saya produk yang di beli pelanggan
-- Keb kolom : kode pelanggan, Nama Pelanggan, Kategori produk, nama produk, qty
SELECT trp.kode_pelanggan, Nama_Pelanggan, Kategori_produk, trp.nama_produk, trp.qty
FROM pelanggan AS pl LEFT OUTER JOIN tr_penjualan AS trp
ON pl.kode_pelanggan = trp.kode_pelanggan
LEFT OUTER JOIN produk AS pr ON pr.kode_produk = trp.kode_produk
WHERE trp.kode_pelanggan IS NOT NULL ORDER BY kode_pelanggan;

-- Praktek 7  
-- LEFT join 3 TABEL
-- cari tau apa saya produk yang di beli pelanggan urut qty tetingal
-- Keb kolom : kode pelanggan, Nama Pelanggan, Kategori produk, nama produk, qty
SELECT trp.kode_pelanggan, Nama_Pelanggan, Kategori_produk, trp.nama_produk, trp.qty
FROM pelanggan AS pl LEFT OUTER JOIN tr_penjualan AS trp
ON pl.kode_pelanggan = trp.kode_pelanggan
LEFT OUTER JOIN produk AS pr ON pr.kode_produk = trp.kode_produk
WHERE trp.kode_pelanggan IS NOT NULL ORDER BY trp.qty DESC;

-- Praktek 8
-- GROUPING dan FUNGSI agresagasi pada JOIN
-- cari tau berapa banyak total produk yang terjual dikelompokan berdasarkan kategori
-- KEB kolom: kategori produk, nama produk, qty
SELECT pr.kategori_produk , trp.nama_produk , sum(qty) AS qty
FROM tr_penjualan AS trp LEFT OUTER JOIN produk AS pr
ON trp.kode_produk = pr.kode_produk
GROUP BY pr.kategori_produk , trp.nama_produk
ORDER BY sum(qty) DESC;

-- Latihan soal
-- soal 1
SELECT pl.kode_pelanggan, pl.nama_pelanggan, pr.kode_produk, pr.nama_produk, trp.qty
FROM pelanggan AS pl INNER JOIN tr_penjualan AS trp
ON pl.kode_pelanggan = trp.kode_pelanggan
INNER JOIN produk AS pr ON trp.kode_produk = pr.kode_produk;

-- soal 2
SELECT pl.kode_pelanggan, pl.nama_pelanggan, pr.kategori_produk, pr.nama_produk, trp.qty
FROM pelanggan AS pl LEFT JOIN tr_penjualan AS trp
ON pl.kode_pelanggan = trp.kode_pelanggan
LEFT JOIN produk pr ON trp.kode_produk = pr.kode_produk
WHERE trp.qty IS NOT NULL;

-- soal 3
SELECT pr.kategori_produk, SUM(trp.qty) AS total_qty
FROM pelanggan pl INNER JOIN tr_penjualan trp
ON pl.kode_pelanggan = trp.kode_pelanggan
INNER JOIN produk pr
ON trp.kode_produk = pr.kode_produk
GROUP BY pr.kategori_produk;

-- soal 4
SELECT p1.kode_produk, p1.nama_produk AS produk_1,
p2.nama_produk AS produk_2, p1.kategori_produk
FROM produk p1 INNER JOIN produk p2
ON p1.kode_produk = p2.kode_produk;