
select * from Thong_tin_tao_tai_khoan_thuthu;
-- thêm thủ thư---
INSERT INTO Thong_tin_tao_tai_khoan_thuthu
    ([Mã tài khoản], [Họ tên], [Giới tính], [Ngày sinh], [Số điện thoại],[Email])
VALUES
    ('TT00105', 'NGUYEN VAN BA','NAM', '2003-04-02', '0978656789', 'nguyenvanba@gmail.com');
--xóa thủ thư--
delete from Thong_tin_tao_tai_khoan_thuthu
where [Mã tài khoản]='TT00105';
--sửa thủ thư--
UPDATE Thong_tin_tao_tai_khoan_thuthu 

SET [Giới tính] = 'NAM'

WHERE [Mã tài khoản] = 'TT000104';
--tìm kiếm thủ thư
SELECT * FROM Thong_tin_tao_tai_khoan_thuthu WHERE [Mã tài khoản] = 'TT000101';
SELECT * FROM Thong_tin_tao_tai_khoan_thuthu WHERE [Giới tính] = 'NAM';
SELECT * FROM Thong_tin_tao_tai_khoan_thuthu WHERE [Giới tính] LIKE 'N%';

















------------------Tạo tài khoản độc giả--------------------------------------------
select * from Tạo_tài_khoản_độc_giả;
INSERT INTO Tạo_tài_khoản_độc_giả
    ([Mã thẻ], [Họ tên], [Giới tính],[Số điện thoại], [Ngày sinh], [Phí thường niên])
VALUES
    ('DG10116', 'NGUYEN VAN BON','NAM', '04-04-2003', '074635189', '50.000');
--xóa --
delete from Tạo_tài_khoản_độc_giả
where [Mã thẻ] ='DG10116';
--sửa thủ thư--
UPDATE Tạo_tài_khoản_độc_giả 

SET [Phí thường niên] = '50.000'

WHERE [Mã thẻ] = 'DG10116';
--tìm kiếm
SELECT * FROM Tạo_tài_khoản_độc_giả WHERE [Phí thường niên] = '50.000';
SELECT * FROM Tạo_tài_khoản_độc_giả WHERE [Phí thường niên] = '0';
SELECT * FROM Tạo_tài_khoản_độc_giả WHERE [Họ tên] LIKE 'L%';
















-------------Tạo thẻ người dùng----------------------
select * from Tạo_thẻ_người_dùng;
INSERT INTO Tạo_thẻ_người_dùng
    ([Mã thẻ], [Họ tên], [Giới tính], [Ngày sinh],[Số điện thoại] )
VALUES
    ('DG10116', 'NGUYEN VAN BON','NAM', '2003-05-05', '074635189');
--xóa --
delete from Tạo_tài_khoản_độc_giả
where [Mã thẻ] ='DG10116';
--sửa --
UPDATE Tạo_thẻ_người_dùng 

SET [Họ tên] = 'NGUYEN VAN LAM'

WHERE [Mã thẻ] = 'DG10116';
--tìm kiếm ----
SELECT * FROM Tạo_thẻ_người_dùng WHERE [Họ tên] like 'C%';
SELECT * FROM Tạo_thẻ_người_dùng WHERE [Ngày sinh] = '2003-05-05';















------------------cập nhập thông tin độc giả -------------------------
select * from Cập_nhập_thông_tin_độc_giả;
INSERT INTO Cập_nhập_thông_tin_độc_giả
    ([Mã thẻ], [Họ tên], [Giới tính], [Ngày sinh],[Số sách đang mượn],[Số điện thoại],[Tình trạng thẻ] )
VALUES
    ('DG1200', 'LE THI TUOI','NAM', '01-04-2003', '0', '057896754','Khoa the');
--xóa --
delete from Cập_nhập_thông_tin_độc_giả
where [Mã thẻ] ='DG10101';
--sửa--
UPDATE Cập_nhập_thông_tin_độc_giả 

SET [Tình trạng thẻ] = 'Khoa the'

WHERE [Mã thẻ] = 'DG10115';
--tìm kiếm ----
SELECT * FROM Cập_nhập_thông_tin_độc_giả WHERE [Họ tên] like 'L%';
SELECT * FROM Cập_nhập_thông_tin_độc_giả WHERE [Số sách đang mượn] = '1';


SELECT * FROM Cập_nhập_thông_tin_độc_giả
WHERE [Số sách đang mượn] = (SELECT MIN([Số sách đang mượn]) FROM Cập_nhập_thông_tin_độc_giả);


SELECT * FROM Cập_nhập_thông_tin_độc_giả
WHERE [Số sách đang mượn] = (SELECT MAX([Số sách đang mượn]) FROM Cập_nhập_thông_tin_độc_giả);








----------quản lí sách----------------------------------




select * from Quản_lí_sách;
INSERT INTO Quản_lí_sách
    ([Mã sách], [Tên sách], [Năm xuất bản], [Số lượng], [Tác giả xuất bản],[Ngôn ngữ],[Thể loại],[Tình trạng])
VALUES
    ('MS539', 'MAI','2023', '1', 'TRAN THANH', 'Tieng viet','Tinh cam','Moi');
--xóa--
delete from Quản_lí_sách
where [Mã sách]='MS539';
--sửa --
UPDATE Quản_lí_sách 

SET [Tình trạng] = 'cũ'

WHERE [Mã sách]='MS539';
--tìm kiếm --
SELECT * FROM Quản_lí_sách WHERE [Tên sách] like 'L%';
SELECT * FROM Quản_lí_sách WHERE [Số lượng] = '50';
SELECT * FROM Quản_lí_sách WHERE [Tác giả xuất bản] LIKE 'N%';




-----------------Lập mượn sách-------------------
select * from Lập_phiếu_mượn_sách;
INSERT INTO Lập_phiếu_mượn_sách
    ([Mã phiếu], [Ngày mượn], [Ngày trả], [Tình trạng sách], [Số lượng mượn],[Tên sách],[Độc giả],[Mã độc giả],[Người lập phiếu])
VALUES
    ('MS000', '2024-06-04','2024-06-11', 'Moi', '1', 'Ô long viện','TRẦN VĂN LỘC','DG10103','LÊ VĂN ANH');
--xóa --
delete from Quản_lí_sách
where [Mã sách]='MS000';
--sửa --
UPDATE Lập_phiếu_mượn_sách 

SET [Tình trạng sách] = 'cũ'

WHERE [Mã phiếu]='MS000';
--tìm kiếm --
SELECT * FROM Lập_phiếu_mượn_sách WHERE [Tên sách] like 'L%';
SELECT * FROM Lập_phiếu_mượn_sách WHERE [Độc giả] like 'N%';








---------Lập phiếu trả-------------------
select * from Lập_phiếu_trả;
INSERT INTO Lập_phiếu_trả
    ([Mã phiếu], [Tên sách],[Độc giả], [Ngày trả],  [Số lượng trả],[Người lập phiếu])
VALUES
    ('MP000', 'ô long viện','CHU MINH THANH','2024-06-29',  '1', 'LÊ VĂN ANH');
--xóa --
delete from Lập_phiếu_trả
where [Mã phiếu]='MP000';
--sửa --
UPDATE Lập_phiếu_trả 

SET [Người lập phiếu] = 'VU THI NGOC'

WHERE [Mã phiếu]='MS000';
--tìm kiếm --
SELECT * FROM Lập_phiếu_mượn_sách WHERE [Tên sách] like 'L%';
SELECT * FROM Lập_phiếu_mượn_sách WHERE [Độc giả] like 'N%';





-------------Lập phiếu phạt------------
SELECT * FROM Lập_phiếu_phạt_cho_độc_giả;
INSERT INTO Lập_phiếu_phạt_cho_độc_giả
    ([Mã độc giả], [Họ tên],[Tên sách], [Số lượng sách mượn],  [Ngày Mượn],[Ngày trả],[Ngày độc giả trả sách],[Tình trạng],[Số ngày quá hạn],[Gía trị phạt])
VALUES
    ('DG10110', 'TRẦN THỊ CÚC','Tắt đèn','1',  '2024-06-02', '2024-06-09','2024-06-13','quá hạn','4 ngày','5000');
--xóa --
delete from Lập_phiếu_phạt_cho_độc_giả
where [Mã độc giả]='DG10110';
--sửa --
UPDATE Lập_phiếu_phạt_cho_độc_giả 

SET [Gía trị phạt] = '30000'

WHERE [Mã độc giả]='DG10108';
--tìm kiếm --
SELECT * FROM Lập_phiếu_phạt_cho_độc_giả WHERE [Tên sách] like 'L%';
SELECT * FROM Lập_phiếu_phạt_cho_độc_giả WHERE [Gía trị phạt] ='30000';













-------------Quản lí phiếu nhắc nhở-------------------
select*from Quản_lí_phiếu_nhắc_nhở;
INSERT INTO Quản_lí_phiếu_nhắc_nhở
    ([Mã độc giả], [Tên độc giả],[Số lần vi phạm])
VALUES
    ('DG10108', 'CHU MINH THÀNH','2');
--xóa --
delete from Quản_lí_phiếu_nhắc_nhở
where [Mã độc giả]='DG10108';
--sửa --
UPDATE Quản_lí_phiếu_nhắc_nhở 

SET [Số lần vi phạm] = '1'

WHERE [Mã độc giả]='DG10108';
--tìm kiếm --
SELECT * FROM Quản_lí_phiếu_nhắc_nhở WHERE [Tên độc giả] like 'L%';

SELECT * FROM Quản_lí_phiếu_nhắc_nhở
WHERE [Số lần vi phạm] = (SELECT MAX([Số lần vi phạm]) FROM Quản_lí_phiếu_nhắc_nhở);
SELECT * FROM Quản_lí_phiếu_nhắc_nhở
WHERE [Số lần vi phạm] = (SELECT MIN([Số lần vi phạm]) FROM Quản_lí_phiếu_nhắc_nhở);









-------------Thống kê bạn đọc----------------------------------------
select*from Thống_kê_bạn_đọc;
INSERT INTO Thống_kê_bạn_đọc
    ([Mã độc giả], [Họ tên],[Giới tính],[Ngày sinh],[Số điện thoại],[Số lần mượn],[Loại sách],[Số lượng])
VALUES
    ('DG10133', 'LAM','NU','2003-05-02','065748354','1','tieu thuyet','1');
--xóa --
delete from Thống_kê_bạn_đọc
where [Mã độc giả]='DG10133';
--sửa --
UPDATE Thống_kê_bạn_đọc 

SET [Số lần mượn] = '2'

WHERE [Mã độc giả]='DG10133';
--tìm kiếm--
SELECT * FROM Thống_kê_bạn_đọc WHERE [Họ tên] like 'L%';

SELECT * FROM Thống_kê_bạn_đọc
WHERE [Số lần mượn] = (SELECT MAX([Số lần mượn]) FROM Thống_kê_bạn_đọc);
SELECT * FROM Thống_kê_bạn_đọc
WHERE [Số lần mượn] = (SELECT MIN([Số lần mượn]) FROM Thống_kê_bạn_đọc);











------------Thống kê báo cáo bạn đọc----------------
select * from Thống_kê_báo_cáo_bạn_đọc;
INSERT INTO Thống_kê_báo_cáo_bạn_đọc
    ([Mã thẻ], [Họ tên],[Giới tính],[Ngày sinh],[Số sách đang mượn],[Số điện thoại],[Tình trạng mượn sách])
VALUES
    ('DG10133', 'LAM','NU','2003-05-02','1','065748354','Mới');
--xóa --
delete from Thống_kê_báo_cáo_bạn_đọc
where [Mã thẻ]='DG10133';
--sửa --
UPDATE Thống_kê_báo_cáo_bạn_đọc 

SET [Số sách đang mượn] = '2'

WHERE [Mã thẻ]='DG10102';
--tìm kiếm --
SELECT * FROM Thống_kê_báo_cáo_bạn_đọc WHERE [Họ tên] like 'L%';

SELECT * FROM Thống_kê_báo_cáo_bạn_đọc
WHERE [Số sách đang mượn] = (SELECT MAX([Số sách đang mượn]) FROM Thống_kê_báo_cáo_bạn_đọc);
SELECT * FROM Thống_kê_báo_cáo_bạn_đọc
WHERE [Số sách đang mượn] = (SELECT MIN([Số sách đang mượn]) FROM Thống_kê_báo_cáo_bạn_đọc);
-------------Thống kê sách hỏng------------------
select * from Thống_kê_sách_hỏng;
INSERT INTO Thống_kê_sách_hỏng
    ([Mã sách], [Tên sách],[Tình trạng sách])
VALUES
    ('MS6574839', N'Đỏ đen',N'Cũ');
--xóa --
delete from Thống_kê_sách_hỏng
where [Mã sách]='MS6574839';
--sửa --
UPDATE Thống_kê_sách_hỏng 

SET [Tình trạng sách] = N'Mới'

WHERE [Mã sách]='MS6574839';
SELECT * FROM Thống_kê_sách_hỏng WHERE [Tình trạng sách] = N'Lỗi'
SELECT * FROM Thống_kê_sách_hỏng WHERE [Tình trạng sách] = N'Mất sách'
SELECT * FROM Thống_kê_sách_hỏng WHERE [Tình trạng sách] = N'Trả sách quá hạn'
---thống kê tieefnn nọp phạt--------------
select * from Thống_kê_tiền_nộp_phạt;
INSERT INTO Thống_kê_tiền_nộp_phạt
    ([Mã sách], [Tên sách],[Mã độc giả],[Tình trạng sách],[Tiền vi phạm])
VALUES
    ('MS69765', N'Truyện kiều','DG10101',N'Trả sách quá hạn','5000');
--xóa--
delete from Thống_kê_tiền_nộp_phạt
where [Mã sách]='MS69';
--sửa --
UPDATE Thống_kê_tiền_nộp_phạt 

SET [Tiền vi phạm] = N'5000'

WHERE [Mã sách]='MS69765';
--tìm --
SELECT * FROM Thống_kê_sách_hỏng WHERE [Tình trạng sách] like 'L%';

SELECT * FROM Thống_kê_tiền_nộp_phạt WHERE [Tình trạng sách] = N'Lỗi'
SELECT * FROM Thống_kê_tiền_nộp_phạt WHERE [Tình trạng sách] = N'Mất sách'
SELECT * FROM Thống_kê_tiền_nộp_phạt WHERE [Tình trạng sách] = N'Trả sách quá hạn'
SELECT * FROM Thống_kê_tiền_nộp_phạt WHERE [Tình trạng sách] = N'Rách'
------------thống kê tra cứu sách----------
SELECT * FROM Thống_kê_tra_cứu_sách;
INSERT INTO Thống_kê_tra_cứu_sách
    ([Mã sách], [Tên sách],[Năm xuất bản],[Số lượng],[Tác giả xuất bản],[Ngôn ngữ],[Thể loại],[Tình trạng],[Số lần mượn])
VALUES
    ('MS539', N'Thế giới động vật','2023','10',N'Trần Ánh',N'Tiếng việt',N'Tiểu thuyết',N'Mới','1');
--xóa --
delete from Thống_kê_tra_cứu_sách
where [Mã sách]='MS539';
--sửa --
UPDATE Thống_kê_tra_cứu_sách 

SET [Thể loại] = N'Động vật'

WHERE [Mã sách]='MS539';
--tìm kiếm --

SELECT * FROM Thống_kê_tra_cứu_sách WHERE [Tên sách] like 'L%';
SELECT * FROM Thống_kê_tra_cứu_sách WHERE [Tác giả xuất bản] like 'N%';
SELECT * FROM Thống_kê_tra_cứu_sách WHERE [Thể loại] = N'Tiểu thuyết';
SELECT * FROM Thống_kê_tra_cứu_sách WHERE [Thể loại] = N'Truyện tranh';
SELECT * FROM Thống_kê_tra_cứu_sách WHERE [Thể loại] = N'Trinh thám';
SELECT * FROM Thống_kê_tra_cứu_sách
WHERE [Số lượng] = (SELECT MAX([Số lượng]) FROM Thống_kê_tra_cứu_sách);
SELECT * FROM Thống_kê_tra_cứu_sách

WHERE [Số lượng] = (SELECT MIN( [Số lượng]) FROM Thống_kê_tra_cứu_sách);
SELECT * FROM Thống_kê_tra_cứu_sách
WHERE [Số lần mượn] = (SELECT MAX([Số lần mượn]) FROM Thống_kê_tra_cứu_sách);
SELECT * FROM Thống_kê_tra_cứu_sách

WHERE [Số lần mượn] = (SELECT MIN([Số lần mượn]) FROM Thống_kê_tra_cứu_sách);

----tra cứu thông tin muowjn tra-------------
select* from Tra_cứu_thông_tin_mượn_trả_độc_giả;
INSERT INTO Tra_cứu_thông_tin_mượn_trả_độc_giả
    ([Mã phiếu], [Ngày mượn],[Ngày trả],[Tình trạng],[Số lượng],[Tên sách],[Độc giả],[Mã độc giả],[Người làm phiếu])
VALUES
    ('MP75849', '2024-06-01','2024-06-06','Mới','1',N'Tắt đèn',N'Cúc',N'DG1000',N'LÊ VĂN ANH');
	delete from Tra_cứu_thông_tin_mượn_trả_độc_giả
where [Mã phiếu]='MP75849';
--sửa --
UPDATE Tra_cứu_thông_tin_mượn_trả_độc_giả 

SET [Số lượng] = N'2'

WHERE [Mã phiếu]='MP75849';



SELECT * FROM Tra_cứu_thông_tin_mượn_trả_độc_giả WHERE [Tên sách] like'T%';

SELECT * FROM Tra_cứu_thông_tin_mượn_trả_độc_giả
WHERE [Số lượng] = (SELECT MAX([Số lượng]) FROM Tra_cứu_thông_tin_mượn_trả_độc_giả);
SELECT * FROM Tra_cứu_thông_tin_mượn_trả_độc_giả

WHERE [Số lượng] = (SELECT MIN( [Số lượng]) FROM Tra_cứu_thông_tin_mượn_trả_độc_giả);
SELECT * FROM Tra_cứu_thông_tin_mượn_trả_độc_giả

-------đăng nhjp độc giả--------
select * from dang_nhap_doc_gia;
---đăng nhập thủ thư---------
select * from dang_nhap_thu_thu;