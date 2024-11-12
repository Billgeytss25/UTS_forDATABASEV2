SELECT 
    Pengadaan.kode_pengadaan AS Kode_pengadaan,
    Pengadaan.tanggal_pengadaan AS Tgl_pengadaan,
    Supplier.kode_supplier AS Kode_supplier,
    Supplier.nama_supplier AS Nama_supplier,
    Supplier.alamat_supplier AS Alamat_Supplier,
    Barang.kode_barang AS Kode_barang,
    Barang.nama_barang AS nama_barang,
    Pengadaan_Detail.jumlah AS qty,
    Barang.harga AS harga_satuan,
    Pengadaan_Detail.total_harga AS total_harga
FROM 
    Pengadaan
JOIN 
    Supplier ON Pengadaan.kode_supplier = Supplier.kode_supplier
JOIN 
    Pengadaan_Detail ON Pengadaan.kode_pengadaan = Pengadaan_Detail.kode_pengadaan
JOIN 
    Barang ON Pengadaan_Detail.kode_barang = Barang.kode_barang
WHERE 
    Pengadaan.kode_pengadaan = 'PGD002';
