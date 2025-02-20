import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_image_compress/flutter_image_compress.dart';

bool isImage(File file) {
  final List<String> imageExtensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp'];

  final String extension = file.path.split('.').last.toLowerCase();

  return imageExtensions.contains(extension);
}

Future<File> compressFile(File file) async {
  final filePath = file.absolute.path;
  final lastIndex = filePath.lastIndexOf(new RegExp(r'.jp'));
  final splitted = filePath.substring(0, (lastIndex));
  final outPath = "${splitted}_out${filePath.substring(lastIndex)}";
  var result = await FlutterImageCompress.compressAndGetFile(
    file.absolute.path,
    outPath,
    quality: 50,
  );

  final fileAkhir = File(result!.path);

  print("SIZE AWAL : ${file.lengthSync()}");
  print("SIZE AKHIR : ${fileAkhir.lengthSync()}");
  return fileAkhir;
}

Future<String> convertXFileToBase64(File imageFile) async {
  final Uint8List uint8List = await imageFile.readAsBytes();

  String baseString = base64Encode(uint8List);

  return baseString;
}
