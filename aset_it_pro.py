import mysql.connector

# Fungsi untuk Input Data
def tambah_aset_baru():
    try:
        # Koneksi ke MySQL
        db = mysql.connector.connect(
            host="127.0.0.1",
            user="root",
            password="",
            database="db_it_support"
        )
        cursor = db.cursor()

        print("=== FORM INPUT ASET KANTOR ===")
        # Input dari User
        kode = input("Masukkan Kode Aset (contoh: AST-01): ")
        nama = input("Nama Barang: ")
        sn   = input("Serial Number: ")
        lok  = input("Lokasi Penempatan: ")

        # Query SQL (Sesuaikan dengan kolom tabel di phpMyAdmin)
        sql = "INSERT INTO inventaris (kode_aset, nama_barang, serial_number, lokasi) VALUES (%s, %s, %s, %s)"
        val = (kode, nama, sn, lok)

        cursor.execute(sql, val)
        db.commit() # Menyimpan data ke MySQL

        print(f"\n✅ DATA BERHASIL DISIMPAN!")
        print(f"Aset: {nama} [{kode}] sekarang ada di database.")

    except mysql.connector.Error as err:
        print(f"❌ Error Database: {err}")
    finally:
        if 'db' in locals() and db.is_connected():
            cursor.close()
            db.close()

# Jalankan Fungsi
if __name__ == "__main__":
    tambah_aset_baru()