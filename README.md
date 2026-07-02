# ppic-geographical-analytics-system
Data Analyst
# Case Study: End-to-End PPIC & Geographical Expansion Analytics
> **Sistem Monitoring Manufaktur Terintegrasi via Cloud MySQL & Google Looker Studio Geo-Intelligence**

## 👤 Profil Project
* **Disusun Oleh:** Khaerul Amin
* **Fokus Kompetensi:** Production Planning & Inventory Control (PPIC), Database Management (MySQL), Business Intelligence (Looker Studio), Data Analytics

---

## 1. Latar Belakang & Identifikasi Masalah
Pada industri manufaktur kemasan plastik berorientasi ekspor dengan variasi produk tinggi, kendala utamanya adalah lambatnya mendeteksi ketimpangan pasar dan kebocoran material (*scrap*) di setiap regional negara tujuan. Proyek ini membangun arsitektur data terintegrasi guna memetakan performa produksi, pemenuhan total *Purchase Order* (PO), serta tingkat kegagalan kualitas (*Reject Rate*) yang dikelompokkan secara spesifik berdasarkan wilayah negara tujuan ekspor di Asia-Pasifik secara *real-time*.

## 2. Arsitektur Sistem & Data Modeling
Sistem menggunakan database relasional terpusat pada **Aiven Cloud Managed MySQL** yang diakses via **DBeaver Enterprise**, kemudian dikoneksikan secara langsung ke **Google Looker Studio**.

### Struktur Tabel Master (`sales_orders`)
* `po_number` (VARCHAR, PK): Nomor unik Purchase Order.
* `customer_name` (VARCHAR): Nama perusahaan pelanggan.
* `material_name` (VARCHAR): Jenis produk kemasan plastik.
* `qty_order_kg` (INT): Kuantitas pesanan (Kg).
* `negara_tujuan` (VARCHAR): Destinasi pengiriman produk (10 Negara Asia).
* `tanggal_kirim` (DATE): Batas waktu pengiriman.

### Struktur Tabel Transaksi (`ppic_production`)
* `po_number` (VARCHAR, FK): Kunci relasi data lapangan ke tabel sales.
* `hasil_produksi_kg` (INT): Realisasi output aktual di lantai pabrik.
* `reject_kg` (INT): Akumulasi material cacat/*scrap* yang terbuang.

## 3. Business Intelligence Dashboard (Looker Studio)
Dashboard dikembangkan dengan tema visual *Emerald Industrial* yang profesional, mencakup:
1. **Executive Summary Layer:** Metrik makro fungsional (**20 Total PO, 10 Negara, Target 50.150 Kg, Aktual 49.250 Kg**).
2. **Geographical Area Layer:** Peta interaktif berbasis koordinat regional Asia untuk menyorot area distribusi utama secara padat.
3. **Operational Performance & Demand Layer:** Tabel tabulasi silang (*Pivot Table heatmap*) digabungkan dengan grafik tren komposit untuk mendeteksi anomali operasional lapangan.

*(Tips: Kamu bisa upload screenshot dashboard-mu di sini nanti)*

## 4. Kesimpulan & Dampak Bisnis (Business Impact)
* **Deteksi Cepat Anomali Material:** Mengidentifikasi secara instan wilayah ekspor yang kurang efisien (seperti Filipina dan Australia yang memiliki volume *reject* tinggi meskipun total produksinya rendah).



