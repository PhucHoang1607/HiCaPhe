import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import 'DangNhap.dart';

class QuenMatKhau extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  QuenMatKhau({super.key});

  Future<void> resetPassword(String email, BuildContext context) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      // Gửi email khôi phục mật khẩu thành công, hiển thị thông báo cho người dùng.
      showResetSuccessDialog(context,
          'Link lấy lại mật khẩu đã được gửi đến địa chỉ email của bạn.');
    } catch (e) {
      // Xử lý lỗi, hiển thị thông báo lỗi cho người dùng.
      showResetErrorDialog(context, "Vui lòng kiểm tra lại địa chỉ Email.");
      if (kDebugMode) {
        print('Lỗi khi gửi email khôi phục mật khẩu: $e');
      }
    }
  }

  void showResetSuccessDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Thành công'),
          content: Text(message),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(builder: (context)=> DangNhap()));
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void showResetErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Lỗi'),
          content: Text(message),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    double baseWidth = 380;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        child: Container(
          // quenmatkhauLSD (522:7)
          padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 18*fem, 262*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
            image: DecorationImage (
              fit: BoxFit.cover,
              image: AssetImage (
                'assets/page-1/images/hinhnen1-bg.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupqw7tdgD (CcXXjUtPtE3pRd5R2mQW7T)
                margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 103*fem),
                width: double.infinity,
                height: 143*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // logomauAg9 (522:9)
                      left: 113*fem,
                      top: 16*fem,
                      child: Align(
                        child: SizedBox(
                          width: 100*fem,
                          height: 100*fem,
                          child: Image.asset(
                            'assets/page-1/images/logomau.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // caukhauhieuVTX (522:10)
                      left: 7*fem,
                      top: 114*fem,
                      child: Align(
                        child: SizedBox(
                          width: 322*fem,
                          height: 29*fem,
                          child: Text(
                            'Thưởng thức vị ngon trọn vẹn',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Dancing Script',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2*ffem/fem,
                              letterSpacing: 1*fem,
                              color: Color(0xff993300),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // vectorfvh (385:2134)
                      left: 0*fem,
                      top: 30*fem,
                      child: Align(
                        child: SizedBox(
                          width: 32*fem,
                          height: 32*fem,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              'assets/page-1/images/vector.png',
                              width: 32*fem,
                              height: 32*fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // frame385Aq (522:11)
                margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 8*fem, 0*fem),
                padding: EdgeInsets.fromLTRB(25*fem, 36*fem, 25*fem, 45*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  color: Color(0xb2f5dab1),
                  borderRadius: BorderRadius.circular(30*fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group32NQq (522:12)
                      margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 49*fem),
                      width: 255*fem,
                      height: 45*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff007373),
                        borderRadius: BorderRadius.circular(90*fem),
                      ),
                      child: Center(
                        child: Text(
                          'Quên mật khẩu',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Quicksand',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.25*ffem/fem,
                            color: Color(0xfffcf2d9),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: SizedBox(height: 30,
                          child: TextField(
                            controller: emailController,
                            style: const TextStyle(fontSize: 14),
                            decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Color(0xff007373)),
                                hintText: "Nhập email",
                                fillColor: Colors.white),
                          ),
                        )
                    ),
                    Container(

                      // buttonguilink45 (126:412)
                      margin: const EdgeInsets.fromLTRB(45, 25, 44, 0),

                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration (
                        color: const Color(0xff007373),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child:TextButton(
                          onPressed: () {
                            resetPassword(emailController.text,context);
                          },

                          child: Text('Nhận link',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              height: 1.2000000477,
                              color: const Color(0xfffcf2d9),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}