select id, nama from produk_type;
--1.a 
insert into produk_type(nama) values 
	('baju'),
	('celana'),
	('sepatu');
--1.b 
insert into produk ( nama, stok, harga, produk_type_id) values 
	('baju_kameja', 5, 55000, 1), 
	('baju_oblong', 10, 40000,1);
--1,c 
insert into produk (nama, stok, harga, produk_type_id) values 
	('celana_pendek', 9, 20000, 2), 
	('celana_panjang', 5, 40000, 2), 
	('celana_dalam', 15, 17000, 2);
--1.d 
insert into produk (nama, stok, harga, produk_type_id) values 
	('sepatu_bola', 12, 600000, 3), 
	('sepatu_gunung', 11, 80000, 3), 
	('sepatu_santai', 35, 90000, 3);
select * from produk;

--1.e 
insert into produk_deskripsi (deskripsi, spesifikasi) values 
	('baru', 'bahan_bagus'), 
	('lama', 'bahan_sedang'), 
	('second', 'bahan_kurang');
select * from produk_deskripsi;

--1.f 
insert into payment_method (nama) values 
	('wallet'), ('COD'), ('Transfer_bank');
select*from payment_method;

--1.g 
insert into pelanggan(nama, alamat, tanggal_lahir, status_user, gender, created_at, updated_at) values 
	('mega', 'pontianak', '1996-06-12', 'tetap', 'perempuan', '2022-09-22', '2023-09-12'), 
	('danang', 'jakarta_utara', '2000-09-21', 'kontrak', 'laki-laki', '2022-09-21', '2023-09-02'),
	('melani', 'bandung', '2001-09-21', 'magang', 'perempuan', '2021-09-21', '2023-09-21'),
	('dado', 'sekadau', '2002-09-21', 'tetap', 'laki-laki', '2021-09-25', '2022-09-28'),
	('indra', 'medan', '2012-09-21', 'magang', 'laki-laki', '2023-08-21', '2023-09-11');

select * from pelanggan;

--1.h 
select*from transaksi;
insert into transaksi(tanggal, paid_amount, status, id_pelanggan, id_payment_method) values
	('2023-08-22', 300400, 'lunas', 1, 1), 
	('2023-08-02', 300000, 'pay_later', 1, 2),
	('2023-08-12', 450000, 'lunas', 1, 2),
	('2023-06-21', 200400, 'lunas', 2, 1), 
	('2023-06-05', 250000, 'pay_later', 2, 2),
	('2023-06-11', 250000, 'lunas', 2, 3),
	('2023-09-28', 200400, 'pay_later', 3, 1), 
	('2023-09-08', 250000, 'pay_later', 3, 2),
	('2023-09-10', 250000, 'lunas', 3, 3);
select*from transaksi limit(9);

--1.i 
insert into transaksi(id_produk,id_transaksi, quantity,harga,subtotal) values
	(1, 1, 3, 39000, 117000), (2, 1, 2, 39000, 79000), 
	(3, 1, 2, 34000, 360000),(1, 2, 3, 39000, 117000), (2, 2, 2, 39000, 79000), 
	(3, 2, 2, 34000, 360000),(1, 3, 3, 39000, 117000), (2, 3, 2, 39000, 79000), 
	(3, 3, 2, 34000, 360000),(1, 4, 3, 39000, 117000), (2, 4, 2, 39000, 79000), 
	(3, 4, 2, 34000, 360000);
	
select * from detail_transaksi;
	
--2.a 
select*from pelanggan where gender ='laki-laki';

--2.b
select *from produk where id=3;
	
--2.c 
select*from pelanggan where created_at > current_date - interval '30 day' and nama like '%a%';

--2. d 
select count(1) from pelanggan where gender ='perempuan';

--2.e 
select * from pelanggan order by nama;

--2.f 
select * from detail_transaksi where id_produk = 3 limit (5);
select * from detail_transaksi;
--3.a 
update produk set nama = 'product_dummy' where id = 1;
select * from produk;

--3.b 
update detail_transaksi set quantity = 3 where id_produk = 1;

--4.a 
select * from produk;
delete from produk where id = 1; 

--4.b 
delete from produk where produk_type_id = 1; 





