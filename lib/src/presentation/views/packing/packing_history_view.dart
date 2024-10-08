import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soa_jpt/src/core/utils/formatter.dart';
import 'package:soa_jpt/src/presentation/views/packing/packing_scan_view.dart';

class PackingHistoryView extends StatefulWidget {
  const PackingHistoryView({super.key});

  static const String routeName = "/packing_history_view";

  @override
  State<PackingHistoryView> createState() => _PackingHistoryViewState();
}

class _PackingHistoryViewState extends State<PackingHistoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Packing History"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 12,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      title: Text("Nomor SO ${index}"),
                      onTap: () async {
                        Navigator.pushNamed(context, PackingScanView.routeName,
                            arguments: {
                              'isEditing': false,
                            });
                      },
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Expedisi"),
                          Text("Tanggal : ${kFullDateFormat.format(
                            DateTime.now().subtract(
                              Duration(
                                days: index,
                              ),
                            ),
                          )}"),
                        ],
                      ),
                      trailing: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          child: Text(
                            "Finish",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
