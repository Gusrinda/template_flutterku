
import 'package:flutter/material.dart';
import 'package:flutter_hud/flutter_hud.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sulinda_sales/src/core/config/theme_colors.dart';
import 'package:sulinda_sales/src/core/model/toast_data.dart';
import 'package:sulinda_sales/src/core/utils/bottom_sheets.dart';
import 'package:sulinda_sales/src/presentation/widgets/card_widget.dart';

extension TimeOfDayDescription on TimeOfDay {
  String get description {
    String addLeadingZeroIfNeeded(int value) {
      if (value < 10) {
        return '0$value';
      }
      return value.toString();
    }

    final String hourLabel = addLeadingZeroIfNeeded(hour);
    final String minuteLabel = addLeadingZeroIfNeeded(minute);

    return '$hourLabel:$minuteLabel';
  }
}

extension ScaffoldMessengerStateExtension on ScaffoldMessengerState {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBarContent(
    Widget content, {
    SnackBarBehavior behavior = SnackBarBehavior.fixed,
    Color? backgroundColor,
  }) {
    hideCurrentSnackBar();
    return showSnackBar(
      SnackBar(
        content: content,
        behavior: behavior,
        backgroundColor: backgroundColor,
      ),
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showOkToast(
          String message) =>
      showSnackBarContent(
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Text(message)),
            const SizedBox(width: 8),
            const Icon(
              Icons.check_circle_rounded,
              color: ThemeColors.green,
            ),
          ],
        ),
        behavior: SnackBarBehavior.floating,
      );

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showErrorToast(
          String message) =>
      showSnackBarContent(
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Text(message)),
            const SizedBox(width: 8),
            const Icon(
              Icons.remove_circle,
              color: ThemeColors.red,
            ),
          ],
        ),
        behavior: SnackBarBehavior.floating,
      );
}

extension Popup on BuildContext {
  PopupHUD createPopupHUD() {
    final context = this;

    return PopupHUD(
      context,
      hud: HUD(
        progressIndicator: CircularProgressIndicator.adaptive(
          backgroundColor: Theme.of(context).primaryColorLight,
        ),
        label: 'Menunggu',
        labelStyle: Theme.of(context).textTheme.titleSmall,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
      ),
    );
  }
}

extension MyBuildContext on BuildContext {
  void showOkToast(String message) =>
      ScaffoldMessenger.of(this).showOkToast(message);

  void _showSnackBar(
    String message, {
    SnackBarBehavior behavior = SnackBarBehavior.fixed,
    Color? backgroundColor,
  }) =>
      ScaffoldMessenger.of(this).showSnackBarContent(
        Text(message, textAlign: TextAlign.center),
        behavior: behavior,
        backgroundColor: backgroundColor,
      );

  void showSnackBar(String message) => _showSnackBar(message);

  void showToast(String message) => _showSnackBar(
        message,
        behavior: SnackBarBehavior.floating,
      );

  void showErrorSnackBar(String message) =>
      _showSnackBar(message, backgroundColor: Colors.red);

  void showErrorToast(String message) =>
      ScaffoldMessenger.of(this).showErrorToast(message);

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showToastData(
          ToastData toast) =>
      toast.type == ToastType.error
          ? ScaffoldMessenger.of(this).showErrorToast(toast.message)
          : ScaffoldMessenger.of(this).showOkToast(toast.message);

  Future<bool?> showConfirmDialog({
    required String title,
    required Object message,
    required String negativeButton,
    required String positiveButton,
  }) async {
    assert(
      message is String || message is Text,
      'Use message type either String or Text widget',
    );
    return await showDialog(
        context: this,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: message is String ? Text(message) : message as Text,
            actionsPadding: const EdgeInsets.only(right: 8),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: Text(negativeButton),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: Text(positiveButton),
              ),
            ],
          );
        });
  }

  Future<bool> showVerifikasiDialog({
    required BuildContext context,
    String? title,
    required String message,
    String negativeButton = 'Batal',
    String positiveButton = 'Ya',
  }) async {
    return await showDialog(
      context: context,
      barrierColor: Colors.black54,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.sp)),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(24.sp, 24.sp, 24.sp, 16.sp),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (title != null) ...{
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: ThemeColors.blackPrimary,
                    ),
                  ),
                  SizedBox(height: 16.sp),
                },
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12.sp),
                ),
                SizedBox(height: 24.sp),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context, false),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: Text(negativeButton),
                      ),
                    ),
                    SizedBox(width: 16.sp),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context, true),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: Text(positiveButton),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<bool?> showConfirmationBottomSheet({
    required String image,
    double? imageWidth,
    required String title,
    required Object message,
    String negativeButton = 'Batalkan',
    String positiveButton = 'Lanjutkan',
    bool isScrollControlled = true,
  }) async {
    assert(
      message is String || message is Text,
      'Use message type either String or Text widget',
    );
    return await showCustomBottomSheet(
      context: this,
      isScrollControlled: isScrollControlled,
      builder: (context, constraints) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 32),
            Center(
              child: image.isEmpty
                  ? const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: CircleAvatar(
                        radius: 64,
                        backgroundColor: Colors.grey,
                      ),
                    )
                  : Image.asset(
                      image,
                      width: imageWidth ?? constraints.maxWidth * 0.6,
                    ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: message is String
                  ? Text(
                      message,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    )
                  : message as Text,
            ),
            const SizedBox(height: 32),
            SafeArea(
              minimum: const EdgeInsets.only(bottom: 16),
              child: Row(
                children: [
                  const SizedBox(width: 16),
                  Expanded(
                    child: OutlinedButton(
                      child: Text(negativeButton),
                      onPressed: () {
                        Navigator.pop(this, false);
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      child: Text(positiveButton),
                      onPressed: () {
                        Navigator.pop(this, true);
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Future<DateTime?> showDatePickerBottomSheet({
    String title = 'Pilih Tanggal',
    String button = 'Pilih Tanggal',
    DateTime? initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
  }) async {
    final now = DateTime.now();
    DateTime selected = initialDate ?? now;
    return await showCustomBottomSheet(
      context: this,
      builder: (context, constraints) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              leading: InkWell(
                child: const Icon(Icons.close),
                onTap: () => Navigator.pop(context),
              ),
              minLeadingWidth: 0,
              title: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Icon(Icons.close, color: Colors.transparent),
            ),
            Flexible(
              child: CalendarDatePicker(
                initialDate: initialDate ?? now,
                firstDate: firstDate ?? now,
                lastDate: lastDate ?? DateTime(2037),
                onDateChanged: (DateTime value) {
                  selected = value;
                },
              ),
            ),
            SafeArea(
              minimum: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, selected);
                },
                child: Text(button),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<T?> showSelectionBottomSheet<T>({
    required String title,
    required Map<String, T> mapLabelData,
    T? selected,
  }) async {
    return await showCustomBottomSheet(
      context: this,
      isScrollControlled: true,
      builder: (context, constraints) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              leading: InkWell(
                child: const Icon(Icons.close),
                onTap: () => Navigator.pop(context),
              ),
              minLeadingWidth: 0,
              title: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Icon(Icons.close, color: Colors.transparent),
            ),
            ...mapLabelData.keys.map((label) {
              final value = mapLabelData[label];
              final active = selected == value;

              if (active) {
                return WhiteCard(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  child: ListTile(
                    title: Text(
                      label,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      Icons.check_circle,
                      color: Theme.of(context).primaryColor,
                    ),
                    onTap: () {
                      Navigator.pop(context, value);
                    },
                  ),
                );
              }

              return OutlineCard(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                child: ListTile(
                  title: Text(label),
                  onTap: () {
                    Navigator.pop(context, value);
                  },
                ),
              );
            }),
            const SafeArea(child: SizedBox(height: 12)),
          ],
        );
      },
    );
  }
}

extension ParseStringUtils on String {
  String sanitizePhone({String defaultCountryCode = '62'}) {
    String val = sanitizeNonNumber();

    // validating if prefixed with zero(s)
    final prefixedZero = RegExp(r'(0)+');
    if (val.startsWith(prefixedZero)) {
      val = val.replaceFirst(prefixedZero, defaultCountryCode);
    }

    return val;
  }

  String sanitizeNonNumber() {
    String val = this;

    // validating for non number
    final nonNumber = RegExp(r'[^\d]+');
    if (val.contains(nonNumber)) {
      val = val.replaceAll(RegExp(r'[^\d]+'), '');
    }

    return val;
  }
}