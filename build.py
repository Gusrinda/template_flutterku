# Untuk menjalankan script ini diharuskan dan wajib install : 
# 1. Google Drive Desktop
# 2. Phyton

# Setup : 
# - Buka aplikasi desktop google drive 
# - Buat folder di dalam gdrive dan copy path ( contoh : "G:/My Drive/apk/" )
# - Ubah nama apk sesuai kebutuhan
# - Ubah path di script menuju path grive kamu
# - jalankan script dengan ketik command 'py build.py' di terminal
# - tunggu script selesai dan aplikasi akan diupload di gdrive kamu

import subprocess
import shutil

def build_flutter_apk():
    try:
        # Ganti 'flutter' dengan jalur ke perintah 'flutter' jika perlu
        subprocess.check_call("flutter clean", shell=True)
        subprocess.check_call("flutter pub get", shell=True)
        
        # Perintah Flutter yang dimodifikasi
        flutter_build_command = "flutter build apk --split-per-abi --target-platform=android-arm --release -v"
        subprocess.check_call(flutter_build_command, shell=True)

        print("APK Flutter berhasil dibangun.")

        # Nama APK yang baru dibangun oleh Flutter
        original_apk_name = "build/app/outputs/flutter-apk/app-armeabi-v7a-release.apk"
        
        # Ganti dengan nama APK yang diinginkan
        new_apk_name = "Sulinda Sales.apk"

        # Pindahkan atau ubah nama file APK yang baru dibangun
        # shutil.move(original_apk_name, new_apk_name)
        # Pindahkan atau ubah nama file APK yang baru dibangun ke google drive
        new_apk_location = "G:/My Drive/apk/" + new_apk_name
        shutil.move(original_apk_name, new_apk_location)

        print(f"APK berhasil diubah menjadi {new_apk_name}")

    except subprocess.CalledProcessError as e:
        print("Error:", e)
        print("Gagal membangun atau mengubah nama APK Flutter.")

if __name__ == "__main__":
    build_flutter_apk()