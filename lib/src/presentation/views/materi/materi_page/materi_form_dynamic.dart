import 'package:soa_jpt/src/core/model/data_materi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MateriFormDynamicView extends StatefulWidget {
  const MateriFormDynamicView({super.key, required this.dataMateri});

  static const String routeName = "/materi-form-dynamic-view";

  final DataMateri dataMateri;

  @override
  State<MateriFormDynamicView> createState() => _MateriFormDynamicViewState();
}

class _MateriFormDynamicViewState extends State<MateriFormDynamicView> {
  @override
  Widget build(BuildContext context) {
    DataMateri dataMateri = widget.dataMateri;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(dataMateri.judul ?? 'JUDUL MATERI'),
        ),
        body: SingleChildScrollView());
  }
}
