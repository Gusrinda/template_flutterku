import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:soa_jpt/src/core/config/constant.dart';
import 'package:soa_jpt/src/core/config/theme_colors.dart';

class CustomDialogPayment extends StatefulWidget {
  const CustomDialogPayment({super.key, required this.isSukses});

  final bool isSukses;

  @override
  State<CustomDialogPayment> createState() => _CustomDialogPaymentState();
}

class _CustomDialogPaymentState extends State<CustomDialogPayment> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 305,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ThemeColors.backgroundTheme,
            boxShadow: [
              BoxShadow(blurRadius: 5, spreadRadius: 10, color: Colors.black12)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.isSukses ? "Success" : "Failed",
              style: TextStyle(
                  color: widget.isSukses
                      ? ThemeColors.backgroundTheme
                      : Colors.red,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.isSukses
                      ? ThemeColors.backgroundTheme
                      : Colors.red),
              child: Icon(
                widget.isSukses ? Icons.check : Icons.close,
                color: Colors.white,
                size: 64,
              ),
            ),
            Text(
              widget.isSukses ? "Payment success !" : "Payment failed !",
              style: TextStyle(
                  color: themeFontDefault,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                if (widget.isSukses) {
                  // Navigator.pushNamed(context, RedeemPoinView.routeName);
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 28),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Text(
                  "close",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
