import 'dart:math';

final List<String> months = List.generate(12, (index) {
  final currentDate = DateTime.now();
  final currentMonth = currentDate.month + index;
  final monthName = _getMonthName(currentMonth % 12);
  return monthName;
});

String _getMonthName(int monthNumber) {
  switch (monthNumber) {
    case 1:
      return 'Januari';
    case 2:
      return 'Februari';
    case 3:
      return 'Maret';
    case 4:
      return 'April';
    case 5:
      return 'Mei';
    case 6:
      return 'Juni';
    case 7:
      return 'Juli';
    case 8:
      return 'Agustus';
    case 9:
      return 'September';
    case 10:
      return 'Oktober';
    case 11:
      return 'November';
    case 12:
      return 'Desember';
    default:
      return '';
  }
}

final int currentYear = DateTime.now().year;

final List<int> yearsGenerator =
    List.generate(11, (index) => currentYear - 5 + index);

List<String> generateBulan() {
  return List.generate(12, (index) {
    return _getMonthName(index + 1);
  });
}

List<String> generateTahun() {
  return List.generate(11, (index) => (currentYear - 5 + index).toString());
}

String generateRandomFileName(int panjang) {
  // Daftar karakter yang mungkin digunakan dalam nama file
  const String chars = "abcdefghijklmnopqrstuvwxyz0123456789";

  // Panjang nama file yang diinginkan
  int length = panjang;

  // Membuat sebuah objek Random
  final random = Random();

  // Menghasilkan nama file acak dengan panjang tertentu
  String randomFileName = '';
  for (int i = 0; i < length; i++) {
    randomFileName += chars[random.nextInt(chars.length)];
  }

  // Menambahkan ekstensi file (misalnya, .txt)
  randomFileName;

  return randomFileName;
}

String capitalizeWords(String input) {
  if (input == null || input.isEmpty) {
    return input; // Mengembalikan string asli jika kosong atau null
  }

  List<String> words = input.split(' ');

  // Mengonversi setiap kata menjadi huruf besar
  List<String> capitalizedWords = words.map((word) {
    if (word.isEmpty) {
      return word; // Mengembalikan kata kosong jika ada
    } else {
      return word[0].toUpperCase() + word.substring(1);
    }
  }).toList();

  // Menggabungkan kata-kata kembali menjadi string
  return capitalizedWords.join(' ');
}

int extractValue(String text) {
  // Hapus karakter yang tidak diperlukan
  String cleanText = text.replaceAll(RegExp(r'[^0-9]'), '');
  // Konversi ke integer
  return int.tryParse(cleanText) ?? 0;
}
