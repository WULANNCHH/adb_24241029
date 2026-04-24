-- Membuat database (opsional)
CREATE DATABASE IF NOT EXISTS dqlab_sales;
USE dqlab_sales;

-- Membuat tabel penjualan sesuai struktur CSV
CREATE TABLE tr_penjualan_dqlab (
    kode_urut_transaksi INT PRIMARY KEY,
    kode_transaksi VARCHAR(20) NOT NULL,
    kode_pelanggan VARCHAR(20) NOT NULL,
    tgl_transaksi DATETIME NOT NULL,
    no_urut INT NOT NULL,
    kode_produk VARCHAR(20) NOT NULL,
    nama_produk VARCHAR(100) NOT NULL,
    qty INT NOT NULL,
    harga DECIMAL(15,2) NOT NULL,
    diskon_persen DECIMAL(5,2) NOT NULL DEFAULT 0.00
);

-- Insert data dari file CSV
INSERT INTO tr_penjualan_dqlab VALUES
(1,'tr-001','dqlabcust07','2020-05-01 00:00:00',1,'prod-01','Kotak Pensil DQLab',5,62500.00,0.00),
(2,'tr-001','dqlabcust07','2020-05-01 00:00:00',2,'prod-03','Flash disk DQLab 32 GB',1,100000.00,25.00),
(3,'tr-001','dqlabcust07','2020-05-01 00:00:00',3,'prod-09','Buku Planner Agenda DQSQuad',3,92000.00,0.00),
(4,'tr-001','dqlabcust07','2020-05-01 00:00:00',4,'prod-04','Flashdisk DQLab 32 GB',3,40000.00,0.00),
(5,'tr-002','dqlabcust00','2020-05-01 00:00:00',1,'prod-03','Gift Voucher DQLab 100rb',2,100000.00,0.00),
(6,'tr-002','dqlabcust00','2020-05-01 00:00:00',2,'prod-10','Sticky Notes DQLab 500 sheets',4,55000.00,0.00),
(7,'tr-002','dqlabcust00','2020-05-01 00:00:00',3,'prod-07','Tas Travel Organizer DQLab',1,48000.00,0.00),
(8,'tr-003','dqlabcust03','2020-05-03 00:00:00',1,'prod-02','Flashdisk DQLab 64 GB',2,55000.00,12.50),
(9,'tr-004','dqlabcust03','2020-05-03 00:00:00',1,'prod-10','Sticky Notes DQLab 500 sheets',5,55000.00,0.00),
(10,'tr-004','dqlabcust03','2020-05-03 00:00:00',2,'prod-04','Flashdisk DQLab 32 GB',4,40000.00,0.00),
(11,'tr-005','dqlabcust00','2020-06-12 00:00:00',1,'prod-09','Buku Planner Agenda DQSQuad',3,92000.00,0.00),
(12,'tr-005','dqlabcust00','2020-06-12 00:00:00',2,'prod-01','Kotak Pensil DQLab',1,62500.00,5.00),
(13,'tr-005','dqlabcust00','2020-06-12 00:00:00',3,'prod-04','Flashdisk DQLab 32 GB',2,40000.00,0.00),
(14,'tr-006','dqlabcust02','2020-06-19 00:00:00',1,'prod-05','Gift Voucher DQLab 250rb',4,250000.00,0.00),
(15,'tr-006','dqlabcust02','2020-06-19 00:00:00',2,'prod-08','Gantungan Kunci DQLab',2,15800.00,0.00);

-- Query verifikasi data
SELECT * FROM tr_penjualan_dqlab ORDER BY kode_urut_transaksi;