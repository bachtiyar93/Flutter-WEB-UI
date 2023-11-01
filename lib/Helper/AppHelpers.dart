// Project imports:
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

import 'CurrencyFormatter/BaseCurrencyFormatter.dart';
import 'CurrencyFormatter/CurrencyFormatter.dart';
import 'NavigationHelper/BaseNavigationHelper.dart';
import 'NavigationHelper/NavigationHelper.dart';

class AppHelpers {
  static final BaseCurrencyFormatter currency = CurrencyFormatter();
  static final BaseNavigationHelper navigation = NavigationHelper();

  static Future<bool> hasInternet() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result.first.rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException {
      return false;
    }
    return false;
  }

  static void toastSuccess(context, String message,lang, {title = "Success!"}) {
    showToastWidget(
        Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
                width: double.infinity - 40,
                child: Card(
                    color: Colors.transparent,
                    elevation: 2,
                    child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.green[600],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Row(children: <Widget>[
                          const Icon(Icons.check_circle, color: Colors.white),
                          // Image.asset("assets/checked.png",
                          //     color: Colors.white, height: 35, width: 35),
                          const SizedBox(width: 12),
                          Expanded(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                Text("${lang=="Indonesia"?"Berhasil!":title}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700)),
                                const SizedBox(height: 0),
                                Row(children: <Widget>[
                                  Expanded(
                                    child: Text(message,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w300)),
                                  )
                                ])
                              ]))
                        ]))))),
        position: ToastPosition.bottom,
        context: context);
  }

  static bool validationEmail(String data){
    final bool emailValid =
    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(data);
    return emailValid;
  }
  static TimeOfDay timeOfDayParse(timeString){
    List<String> parts = timeString.split('.'); // memisahkan string berdasarkan karakter '.'
    TimeOfDay time = TimeOfDay(
      hour: int.parse(parts[0]), // mengambil bagian jam dan mengonversi menjadi integer
      minute: int.parse(parts[1]), // mengambil bagian menit dan mengonversi menjadi integer
    );
    return time;
  }

  static void toastError(context, String message,
      {title = "Error!", errorColor = Colors.red}) {
    showToastWidget(
        Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
                width: double.infinity - 40,
                child: Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: errorColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Row(children: <Widget>[
                          const Icon(Icons.cancel, color: Colors.white),
                          // Image.asset("assets/cancel.png",
                          // color: Colors.white, height: 25, width: 25),
                          const SizedBox(width: 12),
                          Expanded(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                Text("$title",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700)),
                                const SizedBox(height: 3),
                                Row(children: <Widget>[
                                  Expanded(
                                    child: Text(message,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w300)),
                                  )
                                ])
                              ]))
                        ]))))),
        position: ToastPosition.bottom);
  }

// CustomProgressDialog
  static void showProgress(context, {required String text, dissmisable = false}) {
    showDialog<void>(
      context: context,
      barrierColor: Colors.transparent,
      barrierDismissible: dissmisable,
      // false = user must tap button, true = tap outside dialog
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Container(
              alignment: FractionalOffset.center,
              height: 80.0,
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator.adaptive(),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(text)
                ],
              )),
        );
      },
    );
  }

  static void hideProgress(context) {
    try {
      Navigator.pop(context);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }

    // Default
//    if (dialog != null) {
//      Navigator.pop(context);
//      dialog = null;
//    }
  }

  ///GetPage data by payload
  static getPageData(context) {
    if (ModalRoute.of(context)!.settings.arguments == null) {
      return <String, dynamic>{};
    } else {
      return ModalRoute.of(context)!.settings.arguments;
    }
  }



  ///get data hive
  static getDataBox(key) async {
    // if (!kIsWeb && !Hive.isBoxOpen(key)) {
    //   Hive.init((await getApplicationDocumentsDirectory()).path);
    // }
    // await Hive.openBox(key);
    // Box box = Hive.box(key);
    // box.isEmpty ? box.put(key, false) : null;
    // var data = box.get(key);
    // await Hive.close();
    // return data;
  }

  ///save data hive
  static saveDataBox(key, data) async {
    // await Hive.openBox(key);
    // Box box = Hive.box(key);
    // box.put(key, data);
    // await Hive.close();
  }
}
