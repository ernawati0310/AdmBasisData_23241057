-- Nama : Aulia Zaskia
-- NIM : 23241045
-- kelas : B 

-- mebuat database 
CREATE DATABASE mandalika_mart;

-- menggunakan database 'mandalika_mart'
USE mandalika_mart;

-- membuat tabel dalam database 'mandalika_mart
CREATE TABLE member (
member_id varchar(10),
username_id varchar(20),
nama varchar(15),
tanggal_lahir datetime,
angka_favorit int);

-- membuat tabel dalam database 'undikma_mart'
CREATE TABLE produk (
id_produk varchar(10),
nama_produk varchar(25),
kategori varchar(15),
harga int,
Qty int);

-- membuat tabel transaksi dalam database 'mandalika_mart'
CREATE TABLE transaksi_penjualan (
tgl_jual datetime,
id_produk varchar(10),
nama_produk varchar(25),
harga int,
Qty int);

-- mengupdate primary key tabel member, produk 
ALTER TABLE member 
ADD PRIMARY KEY (member_id);

ALTER TABLE produk 
ADD PRIMARY KEY (id_produk);

-- mengupdate foreign key tabel transaksi_penjualan
ALTER TABLE transaksi_penjualan 
ADD CONSTRAINT FK_memberTransaksi
FOREIGN KEY (member_id) REFERENCES member(member_id);

ALTER TABLE transaksi_penjualan
ADD CONSTRAINT FK_memberTransaksi
FOREIGN KEY (id_produk) REFERENCES member(id_produk);

-- mengisi data pada tabel
INSERT INTO member(member_id, username, nama, tanggal_lahir, angka_favorit)
VALUE ('ID-07', 'webmaster', 'Admin', '2005-10-29', 29);

-- mengakses isi data pada tabel member
SELECT * FROM member;
