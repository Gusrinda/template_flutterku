import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:sulinda_sales/core.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/data/models/response/kalender/response_detail_calendar.dart';
import 'package:sulinda_sales/src/data/models/response/kalender/response_detail_tagihan.dart';
import 'package:sulinda_sales/src/presentation/blocs/kalender/bloc/detail_tagihan_bloc.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_widget.dart';

class DetailTagihanView extends StatefulWidget {
  const DetailTagihanView({super.key, required this.dataEventKalender});

  static const String routeName = "/detail_tagihan_view";
  final DataEventKalender dataEventKalender;

  @override
  State<DetailTagihanView> createState() => _DetailTagihanViewState();
}

class _DetailTagihanViewState extends State<DetailTagihanView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DetailTagihanBloc>().add(
            GetDetailTagihan(
              id: widget.dataEventKalender.refId.toString(),
            ),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Detail Tagihan"),
        backgroundColor: themeHijauBg,
      ),
      body: BlocBuilder<DetailTagihanBloc, DetailTagihanState>(
        builder: (context, state) {
          if (state.statusPage == LoadingPageStatus.loading) {
            return Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: Center(
                  child: CircularProgressIndicator(),
                ));
          }

          if (state.statusPage == LoadingPageStatus.success) {
            ResponseDetailTagihan responseDetailTagihan =
                state.responseDetailTagihan!;

            // Menghapus prefix 'data:image/png;base64,' dari string
            String base64CBayar = responseDetailTagihan
                .data!.tCollectPaymentImageBase64!
                .split(',')[1];
            String base64CheckIn = responseDetailTagihan
                .data!.checkIn!.rActivityImageBase64!
                .split(',')[1];
            String base64CheckOut = responseDetailTagihan
                .data!.checkOut!.rActivityImageBase64!
                .split(',')[1];

            // Mengubah string base64 menjadi Uint8List
            Uint8List imageBayar = base64Decode(base64CBayar);
            Uint8List imageCheckIn = base64Decode(base64CheckIn);
            Uint8List imageCheckOut = base64Decode(base64CheckOut);

            return ListView(
              padding: EdgeInsets.all(20),
              children: [
                SizedBox(
                  height: 12,
                ),
                Text(
                  "No. Tagihan",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                HeaderLabel("${responseDetailTagihan.data?.tCollectNo}"),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Customer",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                HeaderLabel("${responseDetailTagihan.data?.mCustId}"),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Piutang",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                HeaderLabel(
                    "${kRupiahFormat.format(responseDetailTagihan.data?.tCollectArAmt ?? 0)}"),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Jumlah Bayar",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                HeaderLabel(
                    "${kRupiahFormat.format(responseDetailTagihan.data?.tCollectPaymentAmt ?? 0)}"),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Metode Bayar",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                HeaderLabel(
                    "${responseDetailTagihan.data?.tCollectPaymentType}"),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Bukti Pembayaran",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                imageBayar.isNotEmpty
                    ? SizedBox(
                        height: 150, // Maksimal tinggi 150
                        width: double.infinity, // Lebar menyesuaikan layar
                        child: Image.memory(
                          imageBayar,
                          fit: BoxFit.contain, // Menjaga rasio aspek gambar
                        ),
                      ) // Menampilkan gambar dari Uint8List
                    : Text('Gambar tidak ditemukan'),
                SizedBox(
                  height: 24,
                ),
                HeaderLabel("CHECK IN"),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Hari, Tanggal",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                HeaderLabel(
                    "${kFormatTanggalAbsen.format(DateTime.parse(responseDetailTagihan.data!.checkIn!.createdAt!))}"),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Waktu",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                HeaderLabel(
                    "${kTimeFormat.format(DateTime.parse(responseDetailTagihan.data!.checkIn!.createdAt!))}"),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Lokasi",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                HeaderLabel("${state.alamatCheckIn}"),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Bukti Check In",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                imageCheckIn.isNotEmpty
                    ? SizedBox(
                        height: 150, // Maksimal tinggi 150
                        width: double.infinity, // Lebar menyesuaikan layar
                        child: Image.memory(
                          imageCheckIn,
                          fit: BoxFit.contain, // Menjaga rasio aspek gambar
                        ),
                      ) // Menampilkan gambar dari Uint8List
                    : Text('Gambar tidak ditemukan'),
                SizedBox(
                  height: 24,
                ),
                HeaderLabel("CHECK OUT"),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Hari, Tanggal",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                HeaderLabel(
                    "${kFormatTanggalAbsen.format(DateTime.parse(responseDetailTagihan.data!.checkOut!.createdAt!))}"),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Waktu",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                HeaderLabel(
                    "${kTimeFormat.format(DateTime.parse(responseDetailTagihan.data!.checkOut!.createdAt!))}"),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Lokasi",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                HeaderLabel("${state.alamatCheckOut}"),
                SizedBox(
                  height: 12,
                ),
                
                Text(
                  "Bukti Check Out",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                imageCheckOut.isNotEmpty
                    ? SizedBox(
                        height: 150, // Maksimal tinggi 150
                        width: double.infinity, // Lebar menyesuaikan layar
                        child: Image.memory(
                          imageCheckOut,
                          fit: BoxFit.contain, // Menjaga rasio aspek gambar
                        ),
                      ) // Menampilkan gambar dari Uint8List
                    : Text('Gambar tidak ditemukan'),
              ],
            );
          }

          return Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: Center(
                child: Text("Error load data, refresh page."),
              ));
        },
      ),
    );
  }
}
