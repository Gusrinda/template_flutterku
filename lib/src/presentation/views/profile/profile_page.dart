import 'package:sulinda_sales/src/core/assets/assets.gen.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/utils/dialogs.dart';
import 'package:sulinda_sales/src/presentation/blocs/auth/auth_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/home/home_page.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/so_list_view.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isEdit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeHijauBg,
        centerTitle: true,
        title: Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 42,
                    backgroundImage: AssetImage(
                      Assets.images.a4c64e475ffafa63815031a099d04f5e2.path,
                    ), // Path ke gambar
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 14,
                        color: themeHijau,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Center(
                child: Text(
              "Reynaldi Sulaiman",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            )),
            Center(
                child: Text(
              "Salesman",
              style: TextStyle(
                color: Colors.black,
                // fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            )),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: HeaderLabel("Data Diri"),
                ),
                SizedBox(
                  width: 8,
                ),
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      setState(() {
                        isEdit = true;
                      });
                    },
                    icon: Icon(
                      Icons.edit_document,
                    )),
              ],
            ),
            SubHeaderLabel("Nama Lengkap"),
            SizedBox(
              height: 4,
            ),
            FormzTextField(
              enabled: isEdit,
              textEditingController:
                  TextEditingController(text: "Reynaldi Sulaiman"),
              // trailing: IconButton(
              //     onPressed: () {
              //       setState(() {
              //         isEdit = true;
              //       });
              //     },
              //     icon: Icon(
              //       Icons.edit_document,
              //     )),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 12,
            ),
            SubHeaderLabel("No Telp"),
            SizedBox(
              height: 4,
            ),
            FormzTextField(
              enabled: isEdit,
              textEditingController:
                  TextEditingController(text: "+628564571234"),
              // trailing: IconButton(
              //     onPressed: () {
              //       setState(() {
              //         isEdit = true;
              //       });
              //     },
              //     icon: Icon(
              //       Icons.edit_document,
              //     )),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 12,
            ),
            SubHeaderLabel("Email"),
            SizedBox(
              height: 4,
            ),
            FormzTextField(
              enabled: isEdit,
              textEditingController:
                  TextEditingController(text: "reynaldisulaiman@gmail.com"),
              // trailing: IconButton(
              //     onPressed: () {
              //       setState(() {
              //         isEdit = true;
              //       });
              //     },
              //     icon: Icon(
              //       Icons.edit_document,
              //     )),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 12,
            ),
            SubHeaderLabel("Password"),
            SizedBox(
              height: 4,
            ),
            FormzTextField(
              enabled: isEdit,
              obscureText: true,
              textEditingController: TextEditingController(text: "******"),
              // trailing: IconButton(
              //     onPressed: () {
              //       setState(() {
              //         isEdit = true;
              //       });
              //     },
              //     icon: Icon(
              //       Icons.edit_document,
              //     )),
            ),
            SizedBox(
              height: 12,
            ),
            if (isEdit) ...{
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isEdit = false;
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: themeHijauBg),
                child: Text(
                  "Simpan Perubahan",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
            }
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: kBottomNavigationBarHeight,
        ),
        child: ElevatedButton(
          onPressed: () => handleLogOut(context),
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFffdbdb)),
          child: Text(
            "Logout",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }

  handleLogOut(BuildContext context) async {
    final bloc = context.read<AuthBloc>();
    final isYes =
        await handleFormSubmit(context, "Apakah anda yakin ingin keluar ?");

    if (isYes == true) {
      bloc.add(const AuthenticationLogoutRequested());
    }
  }
}
