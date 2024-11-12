-- 1. Insert data ke tabel Supplier
INSERT INTO Supplier (kode_supplier, nama_supplier, alamat_supplier) VALUES
('SUP001', 'PT. ABC', 'Jl. Merdeka No. 1'),
('SUP002', 'PT. XYZ', 'Jl. Sudirman No. 20');

-- 2. Insert data ke tabel Barang
INSERT INTO Barang (kode_barang, nama_barang, harga) VALUES
('BRG001', 'Indomie Goreng', 100000),
('BRG002', 'Indomie Goreng Jumbo', 200000),
('BRG003', 'Mie Sedaap Goreng', 100000);

-- 3. Insert data ke tabel Pengadaan
INSERT INTO Pengadaan (kode_pengadaan, tanggal_pengadaan, kode_supplier) VALUES
('PGD001', '2024-10-15', 'SUP001'),
('PGD002', '2024-10-15', 'SUP002'),
('PGD003', '2024-10-16', 'SUP001');

-- 4. Insert data ke tabel Pengadaan_Detail
INSERT INTO Pengadaan_Detail (kode_pengadaan, kode_barang, jumlah, total_harga) VALUES
('PGD001', 'BRG001', 10, 1000000),
('PGD002', 'BRG002', 5, 1000000),
('PGD003', 'BRG001', 8, 800000),
('PGD003', 'BRG003', 4, 400000);
