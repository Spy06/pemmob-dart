# Backend CodeIgniter 4 (toko-api)

Direktori ini berisi file-file backend CodeIgniter 4 dan database MySQL sesuai dengan panduan pada file PDF (halaman 13-26):

## 1. Database
- File SQL: `toko_api.sql`
- Buat database dengan nama `toko_api` di phpMyAdmin (XAMPP).
- Import `toko_api.sql` yang berisi tabel:
  - `member`
  - `member_token`
  - `produk`

## 2. Struktur CodeIgniter 4 (di folder `C:\xampp\htdocs\toko-api`)
Salin file-file berikut ke project CodeIgniter 4 Anda:
- `app/Config/Database.php`: Konfigurasi koneksi MySQL ke database `toko_api`.
- `app/Config/Routes.php`: Routing endpoint `/registrasi`, `/login`, dan REST `/produk`.
- `app/Controllers/RestfulController.php`: Controller dasar format JSON dan `responseHasil()`.
- `app/Controllers/RegistrasiController.php`: Endpoint `POST /registrasi`.
- `app/Controllers/LoginController.php`: Endpoint `POST /login` (mengembalikan auth token).
- `app/Controllers/ProdukController.php`: CRUD produk (`create`, `list`, `detail`, `ubah`, `hapus`).
- `app/Models/MRegistrasi.php`
- `app/Models/MMember.php`
- `app/Models/MLogin.php`
- `app/Models/MProduk.php`

## 3. Endpoint API (Testing via Postman)
- **POST** `http://localhost/toko-api/public/registrasi`
- **POST** `http://localhost/toko-api/public/login`
- **GET** `http://localhost/toko-api/public/produk`
- **POST** `http://localhost/toko-api/public/produk`
- **GET** `http://localhost/toko-api/public/produk/{id}`
- **PUT** `http://localhost/toko-api/public/produk/{id}`
- **DELETE** `http://localhost/toko-api/public/produk/{id}`
