-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:20:30.311




-- tables
-- Table TNhanvien
CREATE TABLE TNhanvien (
    MaNV varchar(20)    NOT NULL ,
    TenNV varchar(50)    NOT NULL ,
    Ngaysinh date    NOT NULL ,
    Goitinh int    NOT NULL ,
    Email varchar    NOT NULL ,
    Mucluong numeric    NOT NULL ,
    MaPhong varchar(20)    NOT NULL ,
    CONSTRAINT TNhanvien_pk PRIMARY KEY (MaNV)
);

-- Table TPhongban
CREATE TABLE TPhongban (
    MaPhong int    NOT NULL ,
    TenPhong int    NOT NULL ,
    TNhanvien_MaNV varchar(20)    NOT NULL ,
    CONSTRAINT TPhongban_pk PRIMARY KEY (MaPhong)
);





-- foreign keys
-- Reference:  TPhongban_TNhanvien (table: TPhongban)


ALTER TABLE TPhongban ADD CONSTRAINT TPhongban_TNhanvien FOREIGN KEY TPhongban_TNhanvien (TNhanvien_MaNV)
    REFERENCES TNhanvien (MaNV);



-- End of file.

