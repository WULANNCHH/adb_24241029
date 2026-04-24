CREATE TABLE `DOKTER` (
  `id_dokter` integer PRIMARY KEY,
  `nama` varchar(30),
  `spesialis` varchar(30),
  `no_tlp` integer,
  `kode_poli` integer
);

CREATE TABLE `POLIKLINIK` (
  `kode_poli` integer PRIMARY KEY,
  `nama_poli` varchar(20)
);

CREATE TABLE `PASIEN` (
  `NIK` integer PRIMARY KEY,
  `nama` varchar(30),
  `alamat` varchar(50),
  `sex` bool,
  `BOD` timestamp
);

CREATE TABLE `PENDAFTARAN` (
  `no_antrean` integer PRIMARY KEY,
  `kode_poli` integer,
  `NIK` integer,
  `tgl_lahir` datetime
);

CREATE TABLE `OBAT` (
  `kode_obat` integer PRIMARY KEY,
  `nama_obat` varchar(255),
  `harga` integer
);

CREATE TABLE `REKAM_MEDIS` (
  `no_rekam_medis` integer PRIMARY KEY,
  `NIK` integer,
  `kode_obat` integer,
  `tgl_rm` timestamp
);

ALTER TABLE `DOKTER` ADD FOREIGN KEY (`kode_poli`) REFERENCES `POLIKLINIK` (`kode_poli`);

ALTER TABLE `PENDAFTARAN` ADD FOREIGN KEY (`kode_poli`) REFERENCES `POLIKLINIK` (`kode_poli`);

ALTER TABLE `PENDAFTARAN` ADD FOREIGN KEY (`NIK`) REFERENCES `PASIEN` (`NIK`);

ALTER TABLE `REKAM_MEDIS` ADD FOREIGN KEY (`NIK`) REFERENCES `PASIEN` (`NIK`);

ALTER TABLE `OBAT` ADD FOREIGN KEY (`kode_obat`) REFERENCES `REKAM_MEDIS` (`kode_obat`);
