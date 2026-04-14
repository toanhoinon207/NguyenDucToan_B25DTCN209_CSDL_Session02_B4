-- Giải pháp 1: ALTER trực tiếp (Chuyển kiểu dữ liệu ngay trên cột cũ)
-- Giải pháp 2: Migration (Tạo cột mới - Copy dữ liệu - Xóa cột cũ - Đổi tên)
--     Tiêu chí	      |    ALTER trực tiếp   |     Migration
--     Đơn giản	      |     Rất đơn giản	 |      Phức tạp
--     Rủi ro lỗi     |        Cao hơn	     |      Rất thấp
--    Thời gian chạy  |	        Nhanh	     |   Chậm (2M records)
--     Downtime	      |         Thấp         |	     Cao hơn 
--      An toàn	      |      Trung bình	     |       Cao nhất
-- Chọn ALTER trực tiếp

alter table users
modify phone varchar(15);
