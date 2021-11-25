// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class HomeBanner3 extends StatelessWidget {
  const HomeBanner3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messageController = TextEditingController();
    void dispose() {
      messageController.dispose();
    }

    void _sendSMS() async {
      List<String> recipents = ['0612839646'];
      String message = messageController.text;
      String _result = await sendSMS(message: message, recipients: recipents)
          .catchError((onError) {
        print(onError);
      });
      print(_result);
    }

    return Container(
      width: MediaQuery.of(context).size.width / 2,
      child: ElevatedButton(
        onPressed: () {
          Alert(
              context: context,
              title: "Send Message",
              content: Container(
                width: 800,
                child: Column(
                  children: [
                    TextField(
                      controller: messageController,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.message),
                        labelText: 'Message',
                        contentPadding: EdgeInsets.symmetric(vertical: 40.0),
                      ),
                    ),
                  ],
                ),
              ),
              buttons: [
                DialogButton(
                  width: 100,
                  onPressed: () => {_sendSMS(), Navigator.pop(context)},
                  child: const Text(
                    "Send",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )
              ]).show();
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.touch_app,
              color: Colors.black,
            ),
            Text(
              '   CONTACT US',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
            ),
          ],
        ),
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.blue),
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
    );
  }
}
