create database if not exists donhang;
use donhang;
create table Nhacc(
MaNCC int primary key,
TenNCC varchar(50),
Diachi varchar(50),
Sdt varchar(50)
);
create table PhieuXuat(
SoPX int primary key,
NgayXuat date
);
create table VatTu(
MaVTU int primary key,
TenVTU varchar(50)
);
create table phieuxuat_vattuPhieuXuat_SoPXDGXuatPhieuXuat_VatTu(
PhieuXuat_SoPX int,
VatTu_MaVTU int,
DGXuat int,
SLXuat int,
primary key(PhieuXuat_SoPX,VatTu_MaVTU),
foreign key(PhieuXuat_SoPX) references PhieuXuat(SoPX),
foreign key(VatTu_MaVTU) references VatTu(MaVTU)
);
create table PhieuNhap(
SoPN int primary key,
NgayNhap date
);
create table Vattu_Phieunhap(
Vattu_MaVTU int,
PhieuNhap_SoPN int,
DGNhap int,
SLNHap int,
primary key(Vattu_MaVTU,PhieuNhap_SoPN),
foreign key(Phieuxuat_SoPX) references VatTu(MaVTU),
foreign key(PhieuNhap_SoPN) references PhieuNhap(SoPN)
);
create table DonDH(
SoDH int primary key,
NgayDH date,
Nhacc_MaNCC int
foreign key(Nhacc_MaNCC) references Nhacc(MaNCC)
);
create table Vattu_Donhang(
Vattu_MaVTU int,
DonDH_SoDH int,
primary key(Vattu_MaVTU,DonDH_SoDH),
foreign key(Vattu_MaVTU) references VatTu(MaVTU),
foreign key(DonDH_SoDH) references DonDH(SoDH)
);





