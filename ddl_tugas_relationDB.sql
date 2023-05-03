create database relationDB;
use relationDB;

-- 2. Buatlah table-table yang dibutuhkan (DDL), dan merelasikan antar table tersebut. Sesuaikan dengan fitur yang ada.

create table admin(
id int primary key auto_increment,
nama varchar(50),
no_tlp varchar(20),
email varchar(50) unique,
pasword varchar(20)
);

create table genre(
id int primary key auto_increment,
jenis_genre varchar(50),
insert_at datetime default current_timestamp,
read_at datetime default current_timestamp,
update_at datetime default current_timestamp,
delete_at datetime
);

create table buku(
id int primary key auto_increment,
genre_id int,
judul_buku varchar(100),
pengarang varchar(50),
penerbit varchar(50),
tahun_terbit int,
insert_at datetime default current_timestamp,
read_at datetime default current_timestamp,
update_at datetime default current_timestamp,
delete_at datetime,
constraint fk_g_b foreign key(genre_id) references genre(id) on delete cascade
);
create table kelola(
id int primary key auto_increment,
admin_id int,
buku_id int,
insert_at datetime default current_timestamp,
read_at datetime default current_timestamp,
update_at datetime default current_timestamp,
delete_at datetime,
constraint fk_b_k foreign key(buku_id) references buku(id) on delete cascade,
constraint fk_a_k foreign key(admin_id) references admin(id) on delete cascade
);

create table user(
id int primary key auto_increment,
nama varchar(50),
npm int,
umur int,
kota_asal varchar(20)
);

create table member(
user_id int primary key,
username varchar(50) unique,
pasword varchar(20),
constraint fk_u_m foreign key(user_id) references user(id) on delete cascade
);

create table buku_member(
id int primary key auto_increment,
member_id int,
buku_id int,
genre_id int,
constraint fk_m_bm foreign key(member_id) references member(user_id) on delete cascade,
constraint fk_b_bm foreign key(buku_id) references buku(id) on delete cascade,
constraint fk_g_bm foreign key(genre_id) references genre(id) on delete cascade
);

create table peminjaman(
id int primary key auto_increment,
total_buku int,
pinjam_at datetime,
kembali_at datetime,
member_id int,
buku_id int,
genre_id int,
constraint fk_m_p foreign key(member_id) references member(user_id) on delete cascade,
constraint fk_g_p foreign key(genre_id) references genre(id) on delete cascade,
constraint fk_b_p foreign key(buku_id) references buku(id) on delete cascade
);

create table detil_peminjaman(
peminjaman_id int primary key,
status_peminjaman ENUM('pinjam','sudah kembali'),
status_return ENUM('tepat waktu','telat','belum kembali'),
denda decimal,
constraint fk_dp_p foreign key(peminjaman_id) references peminjaman(id) on delete cascade
);

