--1. 
select * from transaksi where id_pelanggan =1
union
select * from transaksi where id_pelanggan =2 order by id_pelanggan;


--2.
select paid_amount from transaksi where id_pelanggan = 1;

--3. 
SELECT sum(transaksi.paid_amount) total_transaksi_type_id_2
FROM detail_transaksi
join transaksi on detail_transaksi.id_transaksi = transaksi.id_transaksi
join produk on produk.id=detail_transaksi.id_produk
join produk_type on produk_type.id = produk.produk_type_id where produk_type.id = 2;

--4. 
select p.id "id_produk", p.nama "nama_produk", p.stok, p.harga, p.produk_type_id, p.produk_desc_id, p.merk_id, pt.nama "nama_type" from produk p 
join 
produk_type pt on pt.id = p.produk_type_id;

--5. 
select t.id_transaksi, t.tanggal "tanggal_transaksi", t.paid_amount, t.status, t.id_payment_method, t.id_pelanggan, pl.nama "nama_pelanggan", p.nama "nama_produk" from transaksi t
join pelanggan pl on t.id_pelanggan = pl.id
join  detail_transaksi dt on dt.id_transaksi = t.id_transaksi
join produk p on p.id = dt.id_produk

--6. 

select nama from produk where id not in (select id_produk from detail_transaksi ) order by nama;