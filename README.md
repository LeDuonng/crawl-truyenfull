# Crawl Truyện Full

Công cụ crawl truyện từ truyenfull.vision và lưu thành file Word và text.

## Tính năng

- Tự động tìm chương cuối cùng của truyện
- Crawl tự động từ chương 1 đến chương cuối
- Lưu thành file Word đầy đủ
- Chia nhỏ thành các file text theo số từ
- Tự động loại bỏ quảng cáo và nội dung thừa
- Xử lý thông minh các URL đặc biệt (như chương 699-700)
- Hỗ trợ retry khi gặp lỗi
- Đa luồng để tăng tốc độ crawl
- Ghi log chi tiết quá trình crawl
- Vẫn tiếp tục nếu gặp chương trống hoặc lỗi

## Yêu cầu

- Python 3.6+
- Các thư viện:
  - requests
  - beautifulsoup4
  - python-docx

## Cài đặt

1. Clone repository:
```bash
git clone https://github.com/LeDuonng/crawl-truyenfull.git
cd crawl-truyenfull
```

2. Cài đặt các thư viện:
```bash
pip install -r requirements.txt
```

## Sử dụng

1. Chạy trực tiếp với URL:
```bash
python main.py https://truyenfull.vision/ten-truyen/
```

2. Hoặc chạy file batch và nhập URL khi được yêu cầu:
```bash
run.bat
```

3. Đợi quá trình crawl hoàn tất

4. Kết quả sẽ được lưu trong thư mục theo tên truyện:
   - `ten_truyen.docx`: File Word chứa toàn bộ truyện
   - `ten_truyen_part_001.txt`, `ten_truyen_part_002.txt`,...: Các file text chia nhỏ
   - Thư mục `logs` chứa file log chi tiết

## Chi tiết hoạt động

1. Tìm chương cuối cùng:
   - Tìm link "Cuối" trong phân trang
   - Tìm trang có số lớn nhất trong phân trang
   - Truy cập trang cuối để lấy số chương lớn nhất

2. Crawl nội dung:
   - Sử dụng đa luồng (5 luồng mặc định)
   - Xử lý theo batch (10 chương mỗi batch)
   - Thử các URL đặc biệt nếu không tìm thấy chương

3. Lưu trữ:
   - File docx đầy đủ
   - Các file text chia nhỏ (khoảng 18000 từ mỗi file)

## Xử lý lỗi

- Script sẽ tự động thử lại tối đa 3 lần cho mỗi chương khi gặp lỗi
- Script sẽ tiếp tục crawl nếu gặp chương trống hoặc lỗi
- Script chỉ dừng khi gặp 3 chương trống liên tiếp
- Tất cả lỗi đều được ghi vào file log
