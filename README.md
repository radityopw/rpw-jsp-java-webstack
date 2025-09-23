# Java Webstack Project

![Docker Logo](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Tomcat Logo](https://img.shields.io/badge/tomcat-%23F8DC75.svg?style=for-the-badge&logo=apache-tomcat&logoColor=black)
![MySQL Logo](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white)
![MinIO Logo](https://img.shields.io/badge/minio-%23ff504c.svg?style=for-the-badge&logo=minio&logoColor=white)
![Memcached Logo](https://img.shields.io/badge/memcached-%23000.svg?style=for-the-badge&logo=memcached&logoColor=white)

---

## Deskripsi Proyek

Proyek ini adalah template dasar untuk pengembangan aplikasi web berbasis **Java, JSP, dan Servlets** yang berjalan di atas Apache Tomcat. Dengan menggunakan **Docker Compose**, proyek ini mengintegrasikan beberapa layanan penting untuk memfasilitasi pengembangan full-stack secara lokal.

Layanan yang di-orkestrasi dalam proyek ini mencakup:
* **Tomcat**: Server aplikasi yang menjalankan webapp.
* **MySQL**: Database relasional untuk penyimpanan data.
* **MinIO**: Penyimpanan objek (object storage) yang kompatibel dengan API S3.
* **Memcached**: Sistem caching dalam memori untuk meningkatkan performa aplikasi.

Seluruh konfigurasi ini memungkinkan developer untuk fokus pada kode aplikasi tanpa harus repot menginstal dan mengkonfigurasi setiap layanan secara manual.

---

## Struktur Direktori

Berikut adalah struktur dasar direktori dari proyek ini:

.
├── ROOT/
│   ├── WEB-INF/
│   │   ├── classes/
│   │   │   └── web/
│   │   │       └── ...
│   │   ├── lib/
│   │   │   └── ... (jar files for MySQL, MinIO, Memcached)
│   │   └── web.xml
│   └── index.jsp
└── compose.yml

* **`ROOT/`**: Direktori ini adalah **web aplikasi** Tomcat Anda. File `.jsp` dan `.java` Anda ditempatkan di sini. Direktori ini di-mount ke dalam kontainer Tomcat, yang memungkinkan perubahan kode langsung tercermin saat kontainer berjalan.
* **`compose.yml`**: File Docker Compose yang mendefinisikan dan mengelola semua layanan dalam proyek.

---

## Persyaratan Sistem

Pastikan Anda telah menginstal **Docker** dan **Docker Compose** di sistem Anda.

---

## Cara Menjalankan Proyek

1.  **Clone repositori ini**:
    ```bash
    git clone [https://github.com/nama-pengguna/nama-repositori.git](https://github.com/nama-pengguna/nama-repositori.git)
    cd nama-repositori
    ```

2.  **Jalankan aplikasi dengan Docker Compose**:
    ```bash
    docker-compose -f compose.yml up -d
    ```
    Perintah ini akan membangun, membuat, dan memulai semua kontainer yang dibutuhkan (Tomcat, MySQL, MinIO, Memcached) di latar belakang (`-d`).

3.  **Akses Aplikasi**:
    Setelah kontainer berjalan, Anda dapat mengakses aplikasi JSP Anda di:
    ```
    http://localhost:8080/
    ```

---

## Konfigurasi Layanan

Semua layanan dikonfigurasi dalam file `compose.yml`. Anda dapat memodifikasi variabel lingkungan atau konfigurasi lainnya sesuai kebutuhan.

* **MySQL**: Akses database dengan kredensial yang ditentukan di `compose.yml`.
* **MinIO**: Konsol MinIO dapat diakses di `http://localhost:9001` dengan kredensial yang ditentukan dalam file konfigurasi.
* **Tomcat**: Kontainer Tomcat akan secara otomatis me-load aplikasi dari folder `ROOT/`.

---

## Menghentikan Proyek

Untuk menghentikan dan menghapus semua kontainer yang terkait dengan proyek ini, jalankan perintah berikut:

```bash
docker-compose -f compose.yml down