create table giohang
(
	idgh int primary key,
	taikhoan nvarchar(50),
	mamon int,
	soluong int
)
create table binhluanmonan
(
	idbl int primary key,
	mamon int,
	taikhoan nvarchar,
	yeucau nvarchar(max),
	phanhoi nvarchar(max),
)
create table monan
(
	mamon int primary key,
	tenmon nvarchar(max),
	dongia int,
	thanhphan nvarchar(max),
	loai nvarchar(50),
	hinhanh nvarchar(50)
)
create table binhluanblog
(
	idbl int primary key,
	idblog int,
	taikhoan nvarchar(50),
	yeucau nvarchar(max),
	phanhoi nvarchar(max)
)
create table hinhanhmota
(
	id int primary key,
	diachi nvarchar(50)
)
create table hoadon
(
	id int primary key,
	mamon int,
	taikhoan nvarchar(50),
	soluong int,
	thanhtien int
)
create table blog
(
	idblog int primary key,
	tieude nvarchar(max),
	chude nvarchar(50),
	noidungngan nvarchar(max),
	tieudedu nvarchar(max),
	noidungdu nvarchar(max),
	hinhanh nvarchar(50),
	nguoidang nvarchar(50),
	thoigian DateTime
)
--thêm bảng blog
insert into blog
values (
	'1',
	'Our secrets of most delicious meat in the world!',
	'dinner',
	'Refresh yourself while enjoying a flavorsome dinner or a lunch at our place. We at the Bettaso offer different beverages as well 
	as spirits, and liquors!... Virginia Finest: Smithfield Ham 
	Celebrate this year’s Lovers Day by visiting our cozy, romantic Restaurant! Each year we are introducing some new themed party...',
	'Virginia’s Finest: Smithfield Ham',
	'Celebrate this year’s Lovers Day by visiting our cozy, romantic Restaurant!
	Each year we are introducing some new themed party for that occasion… And this time, the Valentine’s Day will be set amid Parisian decor!
	So, with such sweet touches as little lit Eiffel Towers on the tables instead of candles, French paintings on the walls and a French live music…. This will be a very special Valentine’s Day for you and your 2nd half!
	Also, we’re offering a new, special menu for this day.
	It will be consisting of our most popular dishes, as well as the best French cuisine dishes.
	So, French onion soup, mushroom sauces, meat with camembert cheese and many other French dishes will be served on this day.
	And of course, the French atmosphere will not be complete without wine!
	For that reason, we opened up our wine cellar and now we offer a wide variety of true French wines to all our guests!',
	'',
	'admin',
	'2022-6-5'
)
select b.idblog,tieude,chude,noidungngan,tieudedu,noidungdu,hinhanh,nguoidang,thoigian, dbo.demCmt(b.idblog) as soluong
from blog b, binhluanblog c
where b.tieude != '' and b.idblog = 2
group by b.idblog,tieude,chude,noidungngan,tieudedu,noidungdu,hinhanh,nguoidang,thoigian

alter table binhluanblog
add thoigian datetime

alter table binhluanblog
drop thoigian

print dbo.demCmt(2)


execute selectBlog 2

execute addComment '2', N'Thanh Hùng', N'Ngon tuyệt'