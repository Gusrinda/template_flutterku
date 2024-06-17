import 'package:becca_supir/src/core/model/data_materi.dart';
import 'package:becca_supir/src/presentation/views/materi/materi_page/materi_list_data.dart';
import 'package:becca_supir/src/presentation/views/materi/materi_page/materi_paginate_data.dart';
import 'package:becca_supir/src/presentation/views/materi/materi_page/materi_search_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DaftarMateriPage extends StatefulWidget {
  const DaftarMateriPage({super.key});

  static const String routeName = "/daftar-materi-view";

  @override
  State<DaftarMateriPage> createState() => _DaftarMateriPageState();
}

class _DaftarMateriPageState extends State<DaftarMateriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Daftar Materi"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ListView.builder(
              itemCount: daftarMateri().length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTileMateri(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      daftarMateri()[index].function,
                      arguments: daftarMateri()[index],
                    );
                  },
                  dataMateri: daftarMateri()[index],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class ListTileMateri extends StatelessWidget {
  const ListTileMateri({
    super.key,
    required this.onTap,
    required this.dataMateri,
  });

  final DataMateri dataMateri;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.only(bottom: 16),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Materi",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      dataMateri.judul ?? 'Judul',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      dataMateri.deskripsi ?? '',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Icon(
                  Icons.list,
                  size: 24.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<DataMateri> daftarMateri() => [
      DataMateri(
          judul: "List Data",
          deskripsi:
              "Simple get list data dari API, halaman pindah dari loading -> success",
          function: MateriListDataView.routeName),
      DataMateri(
          judul: "Search & Filter Data",
          deskripsi:
              "Mendapatkan list data serta melakukan filter dan search data",
          function: MateriSearchDataView.routeName),
      DataMateri(
          judul: "Paginate Data",
          deskripsi:
              "Mendapatkan list data lalu melakukan paginate tiap X data",
          function: MateriPaginateDataView.routeName),
                DataMateri(
          judul: "Dynamic Form Data",
          deskripsi:
              "Membuat list form dynamic",
          function: MateriPaginateDataView.routeName),
    ];
