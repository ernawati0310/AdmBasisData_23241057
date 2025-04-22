-- membuat database
CREATE DATABASE penjualan_handphone_berbasis_web;
USE penjualan_handphone_berbasis_web;
-- menggunakan database 'penjualan_handphone_berbasis_web'
USE penjualan_handphone_berbasis_web;

-- membuat tabel database 'penjualan_handphone_berbasis_web'
CREATE TABLE  karyawan (
	id_karyawan varchar(10),
    nama varchar(50),
    kata_sandi varchar(12),
    jabatan varchar (15),
    hak_askses varchar(10));
    
CREATE TABLE pembeli (
	id_pembeli varchar(10),
	nama varchar(10),
    alamat varchar(12),
    nomor_telephone int,
    alamat_surel varchar(12));
    
CREATE TABLE produk_handphone (
	id_produk varchar(12),
    merek varchar (12),
    model varchar(10),
    stok int, 
    harga int);
    
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
    
-- Mengupdate primary key tabel
ALTER TABLE karyawan
ADD PRIMARY KEY (id_karyawan);

ALTER TABLE pembeli
ADD PRIMARY KEY (id_pembeli);

ALTER TABLE produk_handphone
ADD PRIMARY KEY (id_handphone);

ALTER TABLE akun_pembeli
ADD PRIMARY KEY (id_pembeli);

ALTER TABLE akun_karyawan
ADD PRIMARY KEY (id_karyawan);

-- mengisi data pada tabel customer
INSERT INTO karyawan (id_karyawan, nama, kata_sandi, jabatan, hak_akses)
VALUES ('001234', 'Haris_Munandar', 'haris22', 'admin', 'sistem_operasi')

INSERT INTO pembeli (id_pembeli, nama, alamat, nomor_telephone, alamat_surel)
VALUES ('003455', 'Agus Buntung', 'Pulau rinca', '081236782156', 'gus33@gmail.com')

INSERT INTO produk handphone(id_handphone, merek, model, harga, stok)
VALUES ('007788', 'vivo', 'vivo y16', '1.800.000', '120')

INSERT INTO akun pembeli (id_pembeli, nama pengguna, kata_sandi , alamat surel)
VALUES ('67834', 'titi kamal', 'titi22', '', 'titi5@gmail.com') 

INSERT INTO akun karyawan(id_karyawan, nama, email, nomor telepon, unit kerja)
VALUES ('556677', 'Aulia Zaskia', 'aul6@gmail.com', '081234567856', 'pemasaran')





