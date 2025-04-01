# Crawl Truyện Full

Công cụ crawl truyện từ truyenfull.vision và lưu thành file Word và text.

## Tính năng

- Crawl tự động từ chương 1 đến hết
- Lưu thành file Word đầy đủ
- Chia nhỏ thành các file text theo số từ
- Tự động loại bỏ quảng cáo
- Hỗ trợ retry khi gặp lỗi
- Đa luồng để tăng tốc độ crawl

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

1. Chạy file batch:
```bash
run.bat
```

2. Nhập URL truyện khi được yêu cầu (ví dụ: https://truyenfull.vision/ten-truyen/)

3. Đợi quá trình crawl hoàn tất

4. Kết quả sẽ được lưu trong thư mục theo tên truyện:
   - `full_story.docx`: File Word chứa toàn bộ truyện
   - `ten_truyen_part_001.txt`, `ten_truyen_part_002.txt`,...: Các file text chia nhỏ

## Lưu ý

- Mỗi file text chứa khoảng 18000 từ
- Các file được lưu dưới dạng UTF-8
- Tự động loại bỏ quảng cáo và text không cần thiết
- Nếu gặp lỗi 503, chương sẽ được thử lại tối đa 3 lần 