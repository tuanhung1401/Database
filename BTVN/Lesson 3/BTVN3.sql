CREATE DATABASE btvn_buoi_3;
CREATE TABLE nha_cung_cap( 
	ma_nha_cung_cap VARCHAR(50) PRIMARY KEY, 
	ten_nha_cung_cap VARCHAR(50), 
	dia_chi VARCHAR(50), 
	phone VARCHAR(50)
	);
CREATE TABLE thuoc (
	ma_thuoc VARCHAR(50) PRIMARY KEY, 
	ten_thuoc VARCHAR(50), 
	don_vi_tin VARCHAR(50), 
	so_luong int
	);
CREATE TABLE nhan_vien (
	ma_nhan_vien INT PRIMARY KEY AUTO_INCREMENT, 
	ten_nhan_vien VARCHAR(50), 
	chuc_vu VARCHAR(50), 
	score int, 
	Salary double
	);
INSERT INTO nha_cung_cap (ma_nha_cung_cap, ten_nha_cung_cap, dia_chi, phone)
VALUES 
('SUP1', 'Mediphar', 'Hà Nội', '0903850866'),
('SUP2', 'Traphaco', 'Thái Lan', '0369374368'),
('SUP3', 'DHG', 'Nhật Bản', '0382210995'),
('SUP4', 'Dược phẩm Hà Tây', 'Hà Nội', '0372760339'),
('SUP5', 'Codupha', 'Hàn Quốc', '0869199924'),
('SUP6', 'Dược phẩm Đông Á', 'Hà Nội', '0387366499'),
('SUP7', 'Zeullig Parma', 'Singapore', '0398760788'),
('SUP8', 'Megalife Science', 'Hà Nội', '0343629866'),
('SUP9', 'Diethelm Keller Siber Hegner', 'Thụy Sĩ', '0967697849'),
('SUP10', 'Dược phẩm Đông Đô', 'Đông Lào', '0325143766');

INSERT INTO thuoc (ma_thuoc, ten_thuoc, don_vi_tin, so_luong)
VALUES
('ATV', 'Atorvastatin', 'viên', 250),
('LVT', 'Levothyroxine', 'vỉ', 100),
('MF', '	Metformin', 'viên', 700),
('LSN', 'Lisinopril', 'viên', 300),
('ALD', '	Amlodipine', 'gói', 250),
('OPZ', '	Omeprazole', 'vỉ', 70),
('HCT', 'Hydrochlorothiazide', 'hộp', 95),
('ECL', 'Escitalopram', 'túi', 34),
('FXT', 'Fluoxetine', 'viên', 800),
('TMD', 'Tramadol', 'hộp', 200);

INSERT INTO nhan_vien (ten_nhan_vien, chuc_vu, score, Salary)
VALUES
('Lý Trung Hải', 'Nhân viên', 100 ,10000000),
('Lục Trung Dũng', 'Nhân viên', 40 ,12000000),
('Lê Anh Vũ', 'Nhân viên', 70 ,14000000),
('Phùng Gia Hùng', 'Quản lý', 62 ,20000000),
('Khương Thành Công', 'Nhân viên', 82 ,16000000),
('Tô Ðức Giang', 'Nhân viên',91 ,11000000),
('Khâu Quang Hưng', 'Nhân viên',23 ,5000000),
('An Khánh Minh', 'Quản lý',19 ,25000000),
('Nhan Hữu Phước', 'Nhân viên',56 ,7000000),
('Quách Phúc Duy', 'Nhân viên', 43, 8000000);

CREATE TABLE kho_quan_ly_thuoc (
	ma_nha_cung_cap VARCHAR(50),
	ma_thuoc VARCHAR(50),
	FOREIGN KEY (ma_thuoc) REFERENCES thuoc(ma_thuoc),
	FOREIGN KEY (ma_nha_cung_cap) REFERENCES nha_cung_cap(ma_nha_cung_cap)
	);


INSERT INTO kho_quan_ly_thuoc (ma_nha_cung_cap, ma_thuoc)
VALUES
('SUP1', 'ATV'),
('SUP1', 'LVT'),
('SUP1', 'ECL'),
('SUP2', 'MF'),
('SUP2', 'ECL'),
('SUP3', 'HCT'),
('SUP4', 'TMD'),
('SUP4', 'ALD'),
('SUP4', 'FXT'),
('SUP4', 'ATV'),
('SUP5', 'ATV'),
('SUP6', 'ATV'),
('SUP6', 'MF'),
('SUP6', 'ALD'),
('SUP8', 'FXT'),
('SUP9', 'ATV'),
('SUP9', 'LSN'),
('SUP9', 'FXT'),
('SUP9', 'ALD'),
('SUP10', 'ATV'),
('SUP10', 'LVT'),
('SUP10', 'FXT'),
('SUP10', 'MF'),
('SUP10', 'LSN'),
('SUP10', 'HCT'),
('SUP10', 'ECL'),
('SUP10', 'TMD');

SELECT *
FROM nha_cung_cap 
WHERE dia_chi = 'Hà Nội';

SELECT ten_nha_cung_cap, COUNT(kho_quan_ly_thuoc.ma_nha_cung_cap) AS so_loai_thuoc
FROM kho_quan_ly_thuoc JOIN nha_cung_cap
ON kho_quan_ly_thuoc.ma_nha_cung_cap = nha_cung_cap.ma_nha_cung_cap
GROUP BY kho_quan_ly_thuoc.ma_nha_cung_cap;

SELECT AVG(score) AS diem_trung_binh_chuyen_can 
FROM nhan_vien;

SELECT SUM(salary) AS tong_tien_luong
FROM nhan_vien;

