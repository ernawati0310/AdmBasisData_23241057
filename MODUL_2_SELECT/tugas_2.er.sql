-- membuat database
CREATE DATABASE penjualan_handphone_berbasis_web;
USE penjualan_handphone_berbasis_web;

-- membuat tabel database 'penjualan_handphone_berbasis_web'
CREATE TABLE  karyawan (
	id_karyawan varchar(10),
    nama varchar(50),
    kata_sandi varchar(12),
    jabatan varchar (15),
    hak_askses varchar(12));
    
CREATE TABLE produk_handphone (
	id_produk varchar(12),
    merek varchar (12),
    model varchar(25),
    stok int, 
    harga int);
    ALTER table produk_handphone
    modify model varchar(25) after merek;
    
CREATE TABLE akun_pembeli (
	id_pembeli varchar(12),
    nama varchar (12),
    kata_sandi varchar(10),
	data_pribadi varchar(12));
    
    CREATE TABLE akun_karyawan (
	id_karyawan varchar(12),
    nama varchar (12),
    email varchar(10),
    nomor_telephone int,
    unit_kerja varchar(12));
    
    CREATE TABLE transaksi (
	id_transaksi varchar(10),
	id_produk varchar (10),
	nama varchar(10),
    alamat varchar(12),
    nomor_telephone varchar(15),
    model_hp varchar(25),
    QTY int,
    harga int );
    
    ALTER TABLE transaksi
    drop id_pembeli;
    
-- Mengupdate primary key tabel
ALTER TABLE karyawan
ADD PRIMARY KEY (id_karyawan);

ALTER TABLE transaksi
ADD PRIMARY KEY (id_transaksi);

ALTER TABLE produk_handphone
ADD PRIMARY KEY (id_produk);

ALTER TABLE akun_pembeli
ADD PRIMARY KEY (id_pembeli);

ALTER TABLE akun_karyawan
ADD PRIMARY KEY (id_karyawan);

ALTER TABLE transaksi
ADD CONSTRAINT FK_ProdukTransaksi
FOREIGN KEY (id_produk) REFERENCES produk_handphone(id_produk);

-- mengisi data pada tabel customer
INSERT INTO karyawan (id_karyawan, nama, kata_sandi, jabatan, hak_askses)
VALUES 	('001234', 'Haris_Munandar', 'haris22', 'admin', 'Akses data'),
		('003455', 'Agus Buntung', 'Pulau rinca','marketing','tidak ada'),
		('003454', 'Ali Buntung', 'Pulau ranca','marketing','tidak ada'),
        ('003465', 'Rio Buntung', 'Pulau ronca','service','tidak ada'),
		('003469', 'sao Buntung', 'Pulau butik','service','tidak ada');
SELECT *FROM karyawan;

INSERT INTO produk_handphone(id_produk, merek, model, stok, harga)
VALUES	('007781', 'vivo', 'vivo y16', '120','1800000'),
		('007782', 'asus', 'Zenfone M1', '100','2800000'),
        ('007783', 'Xiaomi', 'Poco X3', '90','3800000'),
        ('007784', 'Xiaomi', 'Poco F6', '100','5800000'),
        ('007785', 'Oppo', 'Oppo reno 5','100','1999000');
SELECT *FROM produk_handphone;

INSERT INTO akun_pembeli(id_pembeli, nama, kata_sandi, data_pribadi)
VALUES	('67831', 'titi kamal', 'titi22','081805771222'),
		('67832', 'titi jawa', 'jawa32','081805881222'),
		('67833', 'rudi ', 'rudi12','082305881222'),
        ('67834', 'Ahmad', 'ahnad11','081805882322'),
        ('67835', 'Made', 'Made43','081824881222');
SELECT *FROM akun_pembeli;

INSERT INTO akun_karyawan(id_karyawan, nama, email, nomor_telephone, unit_kerja)
VALUES	('001234', 'Haris_Munandar', 'aul6@gmail.com', '081234567856', 'admin'),
		('003455', 'Agus Buntung', 'agus@gmail.com', '081234567842', 'marketing'),
        ('003454', 'Ali Buntung', 'ali@gmail.com', '081233267842', 'marketing'),
        ('003465', 'Rio Buntung', 'Rio@gmail.com', '08123343842', 'marketing'),
        ('003469', 'Sao Buntung', 'Sao@gmail.com', '08123343242', 'marketing');
SELECT *FROM akun_karyawan;

INSERT INTO transaksi(id_transaksi, id_produk, nama, alamat, nomor_telephone, model_hp, QTY, harga)
VALUES	('T001', '007781', 'titi kamal', 'Mataram', '081805771222','vivo y16','1','1800000'),
		('T002', '007782', 'titi jawa', 'Gomong', '081805731422','Zenfone M1','2','5600000'),
        ('T003', '007783', 'rudi', 'Gangsar', '081805712444','Poco X3','1','3800000'),
		('T004', '007784', 'Ahmad', 'Pondok indah', '08180514244','Poco F6','1','5800000'),
		('T005', '007785', 'Made', 'Pondok Galih', '0818012244','Oppo reno 5','1','1999000');
SELECT *FROM transaksi;

-- membuat 10 query SELECT dari database yang dibuat
-- 1 mengambil kolom id_karyawan pada tabel akun_karyawan 
SELECT id_karyawan FROM akun_karyawan;

-- 2 mengambil lebih dari 1 kolom (id_pembeli dan nama) pada tabel akun_pembeli
SELECT id_pembeli, nama FROM akun_pembeli;

-- 3 mengambil seluruh kolom pada tabel karyawan
SELECT * FROM karyawan;

-- 4 menggunakan PREFIX nama tabel untuk kolom id_produk pada tabel produk_handphone 
SELECT produk_handphone.id_produk FROM produk_handphone;

-- 5 menggunakan nama database dan tabel sebagai PREFIX untuk kolom id_transaksi pada tabel transaksi
SELECT penjualan_handphone_berbasis_web.transaksi.id_transaksi FROM transaksi;

-- 6 menggunakan nama database dan tabel PREFIX untuk kolom id_pembeli, nama pada tabel akun_pembeli
SELECT penjualan_handphone_berbasis_web.akun_pembeli.id_pembeli, nama FROM akun_pembeli;

-- 7 mengganti sementara nama kolom kata_sandi dengan ALIAS pada tabel karyawan
SELECT kata_sandi AS KD FROM karyawan;

-- 8 mengganti sementara nama kolom nama dan alamat dengan ALIAS pada tabel transaksi
SELECT nama AS NAMA, alamat AS ALMT FROM transaksi;

-- 9 mengkombinasikan PREFIX dan ALIAS pada kolom id_karyawan pada tabel akun_karyawan
SELECT akun_karyawan.id_karyawan AS IDK FROM akun_karyawan;

-- 10 mengkombinasikan PREFIX dan ALIAS dari database pada tabel produk_handphone untuk kolom merek, model
SELECT penjualan_handphone_berbasis_web.produk_handphone.merek AS MRK, model AS MDL FROM produk_handphone;