import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myapp/utils.dart';

import 'DangNhap.dart';

class DangNhapSDT extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController otpController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  DangNhapSDT({super.key});


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
                child: Form(
                  key: formKey,
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
                            'Đăng Nhập Bằng SĐT',
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
                            child: TextFormField(
                              controller: nameController,
                              style: const TextStyle(fontSize: 14),
                              decoration: const InputDecoration(
                                  prefixIcon: const Icon(Icons.account_circle),
                                  hintStyle: TextStyle(color: Color(0xff007373)),
                                  hintText: "Nhập Tên" ,
                                  fillColor: Colors.white
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Vui lòng nhập tên của bạn';
                                }
                                return null;
                              },
                            ),
                          ),
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: SizedBox(height: 30,
                            child: TextFormField(
                              controller: phoneController,
                              style: const TextStyle(fontSize: 14),
                              decoration: const InputDecoration(
                                  prefixIcon: const Icon(Icons.phone),
                                  hintStyle: TextStyle(color: Color(0xff007373)),
                                  hintText: "Nhập số điện thoại",
                                  fillColor: Colors.white
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Vui lòng nhập số điện thoại của bạn';
                                }
                                return null;
                              },
                            ),
                          ),
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
                              validateAndSendOTP(context, phoneController.text.trim());
                            },

                            child: Text('Đăng Nhập',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
  void validateAndSendOTP(BuildContext context, String mobile) async {
    if (formKey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.verifyPhoneNumber(
          phoneNumber: mobile,
          verificationCompleted: (PhoneAuthCredential credential) async {
            try {
              await FirebaseAuth.instance.signInWithCredential(credential);
              // Successfully signed in
            } catch (e) {
              print("Error: $e");
              // Handle sign in error
            }
          },
          verificationFailed: (FirebaseAuthException e) {
            print("Verification failed: ${e.message}");
            // Handle verification failure
          },
          codeSent: (String verificationID, int? forceResendingToken) {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Nhập mã OTP"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        controller: otpController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.code),
                          hintText: 'Nhập mã OTP',
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () async {
                          try {
                            PhoneAuthCredential credential = PhoneAuthProvider
                                .credential(verificationId: verificationID,
                                smsCode: otpController.text);
                            await FirebaseAuth.instance.signInWithCredential(
                                credential);
                            // Successfully signed in
                            // Register user with email, name, and phone number
                            await registerUser(emailController.text.trim(),
                                nameController.text.trim(), mobile);
                          } catch (e) {
                            print("Error: $e");
                            // Handle sign in error
                          }
                        },
                        child: Text('Xác nhận'),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          codeAutoRetrievalTimeout: (String verification) {},
        );
      } catch (e) {
        print("Error: $e");
        // Handle verification error
      }
    }
  }
}
Future<void> registerUser(String email, String displayName, String phoneNumber) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: 'randompassword', // Password is required, but not used since we're signing in via phone
    );

    // Update display name
    await userCredential.user!.updateDisplayName(displayName);

    // You can store additional user information to Firebase Firestore or Realtime Database here
  } catch (e) {
    print("Error registering user: $e");
    // Handle user registration error
  }
}



