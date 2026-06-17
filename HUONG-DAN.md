# CryptoWP — Hướng dẫn dự án

Website so sánh **Forex / CFD broker** xây trên WordPress, giao diện mô phỏng trang *Forex Brokers* của Investing.com (layout/chức năng tương đương, **không** sao chép nội dung/logo/nhãn hiệu gốc).

---

## 1. Truy cập nhanh

| Mục | Giá trị |
|---|---|
| Trang chủ | http://crypto-wp.local/ |
| Danh sách broker | http://crypto-wp.local/broker/ |
| Quản trị (wp-admin) | http://crypto-wp.local/wp-admin/ |
| Tài khoản admin | `admin` / `admin123` |
| Database | `crypto_wp` (MariaDB, user `root`, không mật khẩu) |
| Thư mục mã nguồn | `c:\xampp\htdocs\crypto-wp` |

> ⚠️ Đổi mật khẩu `admin123` trước khi đưa lên hosting thật.

---

## 2. Khởi động môi trường (XAMPP)

Sau khi bật/khởi động lại máy, cần chạy lại 2 dịch vụ trong **XAMPP Control Panel**:

1. **Apache** → Start
2. **MySQL** (MariaDB) → Start

Nếu trang báo lỗi *"Error establishing a database connection"* → MySQL chưa chạy.
Nếu trang báo **404/không vào được** → Apache chưa chạy hoặc thiếu cấu hình bên dưới.

### Cấu hình đã thiết lập (không cần làm lại)
- **VirtualHost** `crypto-wp.local` → `C:\xampp\apache\conf\extra\httpd-vhosts.conf`
- **hosts**: dòng `127.0.0.1  crypto-wp.local` trong `C:\Windows\System32\drivers\etc\hosts`
- **Permalink**: `/%postname%/` (Settings → Permalinks)

---

## 3. Cấu trúc dự án

```
crypto-wp/
├─ wp-content/
│  ├─ plugins/broker-manager/      ← Plugin quản lý broker
│  │  ├─ broker-manager.php        ← CPT + meta + shortcode
│  │  └─ assets/broker.css|js      ← Giao diện bảng/card broker
│  └─ themes/crypto-broker/        ← Theme giao diện
│     ├─ style.css                 ← Toàn bộ CSS + bảng màu
│     ├─ functions.php             ← Enqueue, menu, QR, helper
│     ├─ header.php / footer.php    ← Header 2 tầng / Footer (apps + risk disclosure)
│     ├─ front-page.php            ← Trang chủ (intro, TOC, Top Picks, FAQ...)
│     ├─ archive-broker.php        ← Trang /broker/
│     ├─ single-broker.php         ← Trang đánh giá 1 broker
│     └─ index.php / page.php
└─ HUONG-DAN.md                    ← File này
```

---

## 4. Quản lý Broker

### Thêm / sửa broker
Vào **wp-admin → Brokers → Add Broker**. Mỗi broker có các trường (mục *Broker Details*):

| Trường | Ý nghĩa |
|---|---|
| Rating | Điểm 0–5 (quyết định thứ tự xếp hạng, cao → thấp) |
| Traded Assets | Số tài sản giao dịch (vd `1,000+`) |
| Min Deposit | Nạp tối thiểu (USD) |
| Mobile App | `Yes` / `No` |
| Regulators | Cơ quan quản lý, cách nhau dấu phẩy (vd `FCA, ASIC`) |
| Founded | Năm thành lập |
| Spread | vd `From 0.0 pips` |
| Max leverage | vd `1:500` |
| Platforms | vd `MT4, MT5, cTrader` |
| Visit broker URL | Link **affiliate** (nút *Visit Site*) |
| Pros / highlights | Mỗi dòng 1 ý (hiện ở cột ✓ và trang review) |
| Cons | Mỗi dòng 1 ý (trang review) |
| Trusted Partner | Tick = hiện ribbon vàng "Trusted Partner" |

### Logo broker
Dùng ô **Featured image** (Ảnh đại diện) bên phải khi sửa broker. Chưa có ảnh → hệ thống hiển thị chữ viết tắt tên broker.

### Shortcode (dùng trong trang/bài bất kỳ)
- `[broker_comparison]` — bảng so sánh tất cả broker
- `[broker_comparison limit="5"]` — chỉ 5 broker điểm cao nhất
- `[broker_faq]` — khối câu hỏi thường gặp

---

## 5. Tùy chỉnh giao diện

| Muốn đổi | Sửa ở đâu |
|---|---|
| **Bảng màu** (nút xanh, sao cam, link...) | biến CSS đầu `themes/crypto-broker/style.css` và `plugins/broker-manager/assets/broker.css` |
| **Menu header** (2 hàng) | `themes/crypto-broker/header.php` |
| **Tên/avatar tác giả** (Written/Reviewed/Fact Checked By) | mảng `$authors` trong `front-page.php` |
| **Thứ tự/section nội dung, TOC** | `front-page.php` |
| **Footer**: link cột, nút App Store/Google Play, QR | `footer.php` |
| **QR thật** (quét được) | trong `footer.php` thay `cbk_qr_svg(120)` bằng `<img src="...qr.png">` |

> Sau khi sửa CSS, nếu trình duyệt còn cache giao diện cũ → nhấn **Ctrl + F5**. Khi sửa nhiều, tăng số version trong `functions.php` (chuỗi `'2.0.0'`).

---

## 6. Dữ liệu mẫu & WP-CLI

Hiện có **10 broker mẫu** (tên giả định: AlphaFX, PrimeTrade Markets...). Khi có dữ liệu thật, hãy sửa trực tiếp trong wp-admin hoặc xoá và nhập lại.

Chạy WP-CLI **bằng PowerShell** (không dùng Git Bash — Git Bash làm hỏng đường dẫn):

```powershell
cd C:\xampp\htdocs\crypto-wp
php <đường-dẫn>\wp-cli.phar option get siteurl
php <đường-dẫn>\wp-cli.phar post list --post_type=broker
```

Các script nhập liệu mẫu (tham khảo): `wp-content/seed-brokers.php`, `update-brokers-en.php`, `update-spread-en.php`
Chạy: `php wp-cli.phar eval-file wp-content/seed-brokers.php`

---

## 7. Lưu ý pháp lý

- Giao diện/layout mô phỏng Investing.com là hợp pháp; **không** copy nguyên văn nội dung, CSS, logo hay nhãn hiệu của họ.
- Tên/logo broker là nhãn hiệu của bên thứ ba — chỉ dùng khi có quyền (vd chương trình affiliate).
- Luôn giữ **cảnh báo rủi ro**; thông tin trên web mang tính tham khảo, không phải lời khuyên đầu tư.

---

## 8. Checklist trước khi lên hosting thật

- [ ] Đổi mật khẩu admin
- [ ] Thay tên/logo/affiliate broker thật
- [ ] Thay QR + link App Store/Google Play (hoặc ẩn phần này)
- [ ] Cập nhật tên tác giả thật + avatar
- [ ] Điền nội dung trang Terms / Privacy / Risk Warning
- [ ] Đổi `siteurl`/`home` sang tên miền thật
- [ ] Sao lưu database `crypto_wp`
