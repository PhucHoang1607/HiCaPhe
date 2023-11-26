
import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:myapp/page-1/QuanLyKH.dart';
import 'package:myapp/page-1/TrangChuKH.dart';
class successScreen extends StatefulWidget {
  const successScreen({super.key});

  @override
  State<successScreen> createState() => _successScreenState();
}

class _successScreenState extends State<successScreen> {
  Map payload = {};
  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;
    if(message is RemoteMessage)  {
      payload = message.data;
    }
    // if(message is NotificationResponse) {
    //   payload = jsonDecode(message.payload!);
    // }
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(child: Text(message.notification!.title.toString())),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(message.notification!.body.toString()),   // Chỉnh sửa dòng này
            ],
          ),

        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => QuanLyKH()),
              );
            },
            child: const Text('Quay lại trang chủ'),
          ),
        ),
      );
  }
  }
