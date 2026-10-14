# Wrapper Vercel - Pondok Pesantren Darul Aman Gombara

Proyek ini adalah static wrapper modern berbasis **Vercel** yang dirancang untuk menghubungkan **Custom Domain** resmi (seperti `psb.darulaman.sch.id` atau `darulaman.sch.id`) ke aplikasi **Google Apps Script Web App** resmi Pondok Pesantren Darul Aman Gombara (Yayasan Buq’atun Mubarakah Makassar).

---

## 🎯 Fitur Wrapper

- **Full Viewport Responsive**: Menggunakan `100vw`, `100vh`, dan CSS `100dvh` dengan dukungan area aman iOS Safari (`viewport-fit=cover`).
- **Branded Islamic Preloader**: Tampilan layar pembuka elegan bertema Biru Royal (*Darul Aman Blue*) dan Emas (*Gold*), logo kubah/kitab suci, serta animasi loading bar dinamis saat Google Apps Script cold-start.
- **Smart Loading Dismiss**: Preloader otomatis memudar lembut (*fade-out*) saat iframe selesai dimuat, dengan failsafe timeout otomatis.
- **Rich OpenGraph & SEO**: Judul, deskripsi, favicon SVG islami, dan pratinjau tautan WhatsApp/Facebook/Twitter yang siap pakai.
- **Full Permissions Pass-Through**: Iframe mendukung izin kamera (upload bukti transfer/berkas PPDB), clipboard, mikrofon, dan mode layar penuh (*fullscreen*).

---

## 🚀 Panduan Deploy ke Vercel & Setup Custom Domain

### 1. Hubungkan ke Vercel
1. Buka [https://vercel.com/dashboard](https://vercel.com/dashboard) dan login menggunakan akun GitHub Anda.
2. Klik tombol **"Add New..."** lalu pilih **"Project"**.
3. Pilih repositori GitHub proyek PSB Darul Aman Anda.
4. Pada bagian **Framework Preset**, pilih **"Other"** (karena ini adalah static HTML).
5. Klik tombol **"Deploy"**. Dalam hitungan detik, situs Anda sudah online dengan domain `.vercel.app`.

---

### 2. Memasang Custom Domain di Vercel (`psb.darulaman.sch.id`)
1. Di halaman proyek Vercel Anda, buka tab **Settings** &rarr; **Domains**.
2. Masukkan nama subdomain Anda:
   ```text
   psb.darulaman.sch.id
   ```
3. Klik **Add**.
4. Di panel DNS hosting domain utama (`darulaman.sch.id`), tambahkan DNS record:
   - **Type**: `CNAME`
   - **Name**: `psb`
   - **Value / Target**: `cname.vercel-dns.com`
5. Tunggu propagasi DNS (biasanya 5–15 menit). Vercel akan otomatis menerbitkan sertifikat SSL HTTPS gratis!

---

## ⚙️ Mengubah URL Google Apps Script di Masa Depan

Jika Anda melakukan deployment versi baru di Google Apps Script:
1. Buka file [`index.html`](index.html).
2. Temukan atribut `src` pada tag `<iframe>`:
   ```html
   <iframe
     id="app-frame"
     src="https://script.google.com/macros/s/AKfycbyIJ0-af1ADRAPsspRFfE-LbszJc4k2lJeU9Kg8zSpoFfHv8v1_1Gi_d9pIFLiurWs/exec"
     ...
   >
   ```
3. Ubah URL tersebut dengan URL Web App Apps Script terbaru Anda.
4. Simpan, lakukan commit, dan push ke GitHub. Vercel akan otomatis melakukan auto-redeploy!
