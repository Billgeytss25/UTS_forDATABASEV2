-- Tabel Supplier
CREATE TABLE Supplier (
    kode_supplier VARCHAR(10) PRIMARY KEY,
    nama_supplier VARCHAR(50),
    alamat_supplier VARCHAR(100)
);

-- Tabel Barang
CREATE TABLE Barang (
    kode_barang VARCHAR(10) PRIMARY KEY,
    nama_barang VARCHAR(50),
    harga INT
);

-- Tabel Pengadaan
CREATE TABLE Pengadaan (
    kode_pengadaan VARCHAR(10) PRIMARY KEY,
    tanggal_pengadaan DATE,
    kode_supplier VARCHAR(10),
    FOREIGN KEY (kode_supplier) REFERENCES Supplier(kode_supplier)
);

-- Tabel Pengadaan_Detail
CREATE TABLE Pengadaan_Detail (
    kode_pengadaan VARCHAR(10),
    kode_barang VARCHAR(10),
    jumlah INT,
    total_harga INT,
    PRIMARY KEY (kode_pengadaan, kode_barang),
    FOREIGN KEY (kode_pengadaan) REFERENCES Pengadaan(kode_pengadaan),
    FOREIGN KEY (kode_barang) REFERENCES Barang(kode_barang)
);
