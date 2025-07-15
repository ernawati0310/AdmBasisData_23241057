-- Nama		: Ernawati
-- NIM		: 23241057
-- Kelas	: PTI 4/B 

-- menggunakan database
USE pti_mart; 

-- SELECT * FROM tr_penjualan;


-- /* munculkan kode pelanggan, nama produk, jumlah, harga, dan total dari semua produk yang pernah ditransaksinya, namun output yang diminta adalah
-- total harga minimal 200.000 dari diurutkan berdasarkan total harga terkecil*/
SELECT tp.kode_pelanggan, pr.nama_produk, tp.jumlah, tp.harga, (tp.jumlah * tp.harga) AS total_harga
FROM  tr_penjualan t JOIN  produk pr ON tp.kode_produk = pr.kode_produk 
WHERE (tp.jumlah * tp.harga) >= 200000
ORDER BY total_harga ASC;



-- soal 2
-- tampilkan nama pelanggan dan nilai transaksinya dengan nilai transaksi terbesar
SELECT p.nama_pelanggan, (t.jumlah * pr.harga) AS nilai_transaksi FROM transaksi t JOIN produk pr ON t.kode_produk = pr.kode_produk JOIN pelanggan p ON t.kode_pelanggan = p.kode_pelanggan
ORDER BY nilai_transaksi DESC LIMIT 1;
