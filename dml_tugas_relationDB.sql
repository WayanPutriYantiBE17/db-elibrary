-- 3. Masukkan data kedalam table. Data yang dimasukkan harus data yang sesuai dengan tema aplikasi. Tidak boleh asal. Misalnya data yang bukan buku.
--   Notes: Data yang dimasukkan harus real

-- data user
insert into user(nama,kota_asal,npm,umur)
values ('Sarah wijaya','Lampung', 183023,20);

-- data member
insert into member(user_id,username,pasword)
values (1,'sarah.wijaya23','114289');

-- data ini dibuat menyesuaikan soal nomor 4 c
insert into member(user_id,username,pasword)
values (2,'sari.wati23','178289'),(3,'maria.nabila19','179892'),(4,'santi.putri26','888132'),(5,'malla.alengasa23','1712232'),(6,'dodi.habib23','912332');

-- data admin
insert into admin(nama,no_tlp,email,pasword)
values ('Susi Susanti', '08112944064', 'susisusanti23@gmail.com','malamhari34#'),
('Dodi Marga Narendra', '081230044757','dodimarga563@gmail.com','sandikala');

-- data genre
insert into genre(jenis_genre)
values ('Realistic Fiction');

-- data buku
insert into buku(genre_id,judul_buku,pengarang,penerbit,tahun_terbit)
values (1,'Home Sweet Loan','Almira Bastari','Gramedia Media Utama', 2022);

-- data kelola
insert into kelola(admin_id, buku_id)
values (1,1);

-- data buku member
insert into buku_member(member_id,buku_id,genre_id)
values (1,1,1);

-- data peminjaman
insert into peminjaman(member_id,buku_id,genre_id,pinjam_at,total_buku)
values (1,1,1,'2023-04-28 13:00:00',1);

-- data detail peminjaman
insert into detil_peminjaman(peminjaman_id,status_peminjaman,status_return,denda)
values (1,'pinjam','belum kembali',0);

-- data ini ditambahkan untuk melengkapi data peminjaman di soal 4.f
insert into detil_peminjaman(peminjaman_id,status_peminjaman,status_return,denda)
values (2,'pinjam','belum kembali',0),(3,'pinjam','belum kembali',0),(4,'pinjam','belum kembali',0),
(5,'pinjam','belum kembali',0),(6,'pinjam','belum kembali',0);

-- 4. Buatlah query untuk:
-- a. menambahkan 5 data genre
	insert into genre(jenis_genre)
    values ('Science fiction'),('Romantis'),('Fantasi'),('Horor'),('Historical');
    
    -- b. Menambahkan 5 data buku untuk masing-masing genre
	insert into buku(genre_id,judul_buku,pengarang,penerbit,tahun_terbit)
    values (2,'Red Rising (Red Rising #1)','Pierca Brown','Gramedia Pustaka Utama',2017),
    (2,'Golden Son (Red Rising #2)','Pierca Brown','Gramedia Pustaka Utama',2015),
    (2,'Morning Star (Red Rising #3)','Pierca Brown','Gramedia Pustaka Utama',2018),
    (2,'The Time Machine','H.G. Wells','William Heinemann (UK), Henry Holt (US)',1895),
    (2,'The Ballad of Songbirds and Snakes','Suzanne Collins','Scholastic',2020),
    (3,'Ayat-Ayat Cinta','Habiburrahman El Shirazy','Republika',2008),
    (3,'Sunshine Becomes You','Ilana Tan','Gramedia Pustaka Utama',2012),
    (3,'Dilan: Dia Adalah Dilanku Tahun 1990','Pidi Baiq','Pastel Books (Mizan Group)',2018),
    (3,'Daun yang Jatuh Tidak Pernah Membenci Angin','Tere Liye','Gramedia Pustaka Utama',2010),
    (3,'Perahu Kertas','Dee Lestari','PT. Bentang Pustaka',2015),
    (4,'Teh dan Penghianat','Iksana Bayu','PT. Gafrika Mardi Yuana',2019),
    (4,'The Chronicles of Narnia #2: The Lion, the Witch and the Wardrobe','C. S.. Lewis','Harper',1994),
    (4,'The Son Of Neptune','Rick Riordan','NOURA BOOKS PUBLISHING',2011),
    (4,'Charlie and The Chocolate Factory','Roald Dahl','George Allen & Unwin',1964),
    (4,'Alvaro Aurora','Faradilla Azzahra','Moka Media',2019),
    (5,'Entrok','Okky Madasari','Gramedia Pustaka Utama',2021),
    (5,'Hilang dalam Dekapan Semeru','Fajar Raditya','PT. Elex Media Komputindo',2022),
    (5,'Misteri Patung Garam','Ruwi Meita','Gagas Media',2015),
    (5,'Narik Sukma','Dewie Yulliantika Sofia','Cahaya Dua Belas Semesta',2019),
    (5,'Pesta Bunuh Diri','Daniel Ahmad','Gagas Media',2022),
    (6,'Almost Heaven','Judith Mcnaught','Gramedia Pustaka Utama',2020),
    (6,'The Duke and I','Julia Quinn','Gramedia Pustaka Utama',2018),
    (6,'The Tattooist of Auschwitz','Heather Morris','Gramedia Pustaka Utama',2020),
    (6,'Love in the Afternoon','Lisa Kleypas','Gramedia Pustaka Utama',2018),
    (6,'Pride and Prejudice','Jane Austen','Gramedia Pustaka Utama',2017);
    
    -- c. menambahkan 5 user
insert into user(nama,kota_asal,npm,umur)
values ('Sari Wati','Lampung', 189023,20), ('Maria Nabila','Sumedang', 189019,20), ('Santi Putri','Lampung', 189026,20), ('Malla Alengsa','Jakarta',179023,21),('Doni Habib','Lampung', 179023,21);

-- d. tampilkan hasil pencarian data buku berdasarkan judul buku
select judul_buku,pengarang,penerbit,tahun_terbit from buku where judul_buku = 'The Duke and I';

-- e. Tampilkan hasil pencarian data buku berdasarkan genre id
select judul_buku,pengarang,penerbit,tahun_terbit from buku where genre_id = 3;

-- f. Menambahkan data peminjaman buku dengan rincian:
-- -User 1 meminjam buku dengan id 1 (member_id = user_id)
insert into peminjaman(member_id,buku_id,genre_id,pinjam_at,total_buku)
values (1,1,1,'2023-04-30 08:00:00',1);

-- -User 1 meminjam buku dengan id 2 (member_id = user_id)
insert into peminjaman(member_id,buku_id,genre_id,pinjam_at,total_buku)
values (1,2,2,'2023-04-30 09:00:00',1);

-- User 1 meminjam salah satu buku yang bergenre 2
insert into peminjaman(member_id,buku_id,genre_id,pinjam_at,total_buku)
values (1,4,2,'2023-04-30 09:10:00',1);

-- -User 2 meminjam buku dengan id 3
insert into peminjaman(member_id,buku_id,genre_id,pinjam_at,total_buku)
values (2,3,2,'2023-04-30 09:20:00',1);

-- -User 3 meminjam buku dengan id 1
insert into peminjaman(member_id,buku_id,genre_id,pinjam_at,total_buku)
values (3,1,1,'2023-04-30 09:21:00',1);

-- g. Mengubah status peminjaman buku yang  dipinjam oleh user 1 dan buku dengan id 1 tadi menjadi dikembalikan
update peminjaman 
set kembali_at = '2023-05-3 08:00:00 ' 
where id = 1;

-- h. Tampilkan data user beserta buku yang masih dipinjam/belum dikembalikan
select u.*,b.judul_buku from user u inner join member m on u.id = m.user_id
inner join peminjaman p on m.user_id = p.member_id
inner join buku b on b.id = p.buku_id
where p.kembali_at is null ;

-- i. Tampilkan data buku yang statusnya telah dikembalikan oleh user
select u.*,b.judul_buku from user u inner join member m on u.id = m.user_id
inner join peminjaman p on m.user_id = p.member_id
inner join buku b on b.id = p.buku_id
where p.kembali_at is not null ;

-- j. Tampilkan data buku yang belum pernah dipinjam oleh user
select * from buku where id not in (select distinct buku_id from peminjaman);

-- k. Tampilkan data user beserta banyaknya buku yang pernah dia pinjam
select u.nama,u.npm,u.umur,u.kota_asal,count(p.buku_id) as jumlah_buku
from user as u inner join member m on m.user_id=u.id
left join peminjaman p on p.member_id = m.user_id
group by u.nama;

-- l. Tampilkan data user yang belum pernah meminjam buku
select u.* from user u inner join member m on u.id = m.user_id
where u.id not in (select distinct member_id from peminjaman)
group by u.nama;

-- m. Tampilkan data user yang sudah pernah meminjam buku
select u.* from user u inner join member m on u.id = m.user_id
where u.id in (select distinct member_id from peminjaman)
group by u.nama;

-- n. Tampilkan data user yang paling banyak meminjam buku
select u.*,count(p.pinjam_at) as jumlah_buku from user u inner join member m on u.id = m.user_id
inner join peminjaman p on p.member_id = m.user_id
group by u.nama
order by jumlah_buku desc
limit 1;

-- o. tampilkan data genre beserta banyaknya buku di masing-masing genre
select g.jenis_genre, count(b.id) as jumlah_buku from buku b
inner join genre g on g.id = b.genre_id
group by b.genre_id;

-- p. Tampilkan genre yang paling banyak dipinjam bukunya oleh user
select p.genre_id,g.jenis_genre, count(p.genre_id) as total_genre from genre g 
inner join peminjaman p on p.genre_id = g.id
group by jenis_genre
order by total_genre desc
limit 1; 

-- q. Tampilkan data user, beserta buku yang dipinjam dan sekaligus genre dari buku tersebut dalam satu query statement
select p.id,u.*,g.jenis_genre,b.judul_buku from user u
inner join member m on m.user_id = u.id
inner join peminjaman p on m.user_id = p.member_id
inner join buku b on b.id=p.buku_id
inner join genre g on g.id = p.genre_id;
