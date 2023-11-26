import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/DangNhap.dart';
import 'package:myapp/utils.dart';

import '../user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import '../widgets/form_container_widget.dart';

class DangKi extends StatefulWidget {
  const DangKi({super.key});

  @override
  State<DangKi> createState() => _DangKi();
}

class _DangKi extends State<DangKi> {
  final formKey = GlobalKey<FormState>();

  final FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _passwordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    // double ffem = fem * 0.97;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
                // dangkibD3 (39:487)
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(19, 8, 19, 177),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/page-1/images/hinhnen1-bg.png',
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupbsu7MrR (HWRHkxjiFkJeUyXJ8LBSu7)
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 93),
                        width: double.infinity,
                        height: 130,
                        child: Stack(
                          children: [
                            const Positioned(
                              // frame37wpd (44:720)
                              left: 10,
                              top: 92,
                              child: SizedBox(
                                width: 302,
                                height: 50,
                              ),
                            ),
                            Positioned(
                              // caukhhauhieuEoj (44:721)
                              left: -20,
                              right: -20,
                              top: 96.5,
                              child: Align(
                                child: SizedBox(
                                  width: 322,
                                  height: 30,
                                  child: Text(
                                    'Thưởng thức vị ngon trọn vẹn',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Dancing Script',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2 / fem,
                                      letterSpacing: 1,
                                      color: const Color(0xff993300),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // logomauzwK (126:387)
                              left: 110,
                              right: 110,
                              child: Align(
                                child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/page-1/images/logomau.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame354RP (39:491)
                        margin: const EdgeInsets.fromLTRB(7, 0, 7, 0),
                        padding: const EdgeInsets.fromLTRB(24, 36, 25, 32),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xb2f5dab1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogrouppki1sdj (HWRHxd4wyzSDYmryNWPKi1)
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 49),
                              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                              width: double.infinity,
                              height: 36,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xff007373)),
                                color: const Color(0xfffcf2d9),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // ngnhpeY1 (39:510)
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 2, 46, 0),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const DangNhap()));
                                      },
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Text(
                                        'Đăng nhập',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Quicksand',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          height: 1.25 / fem,
                                          color: const Color(0xff007373),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // group32re5 (39:493)
                                    width: 129,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff007373),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Đăng kí',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Quicksand',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          height: 1.25 / fem,
                                          color: const Color(0xfffcf2d9),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                                child: SizedBox(
                              height: 50,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Email không được trống';
                                  } else {
                                    return null;
                                  }
                                },
                                controller: _emailController,
                                style: TextStyle(fontSize: 14),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30.0),
                                      ),
                                      borderSide: const BorderSide(
                                          color: Color(0xff007373), width: 1.0),
                                    ),
                                    focusedBorder: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                      borderSide:
                                          BorderSide(color: Color(0xff007373)),
                                    ),
                                    suffixIcon: const Icon(Icons.email),
                                    suffixIconColor: Color(0xff007373),
                                    hintStyle:
                                        new TextStyle(color: Color(0xff007373)),
                                    hintText: "Nhập Email",
                                    fillColor: Colors.white),
                              ),
                            )),
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: SizedBox(
                                  height: 50,
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Mật khẩu không được trống';
                                      } else {
                                        return null;
                                      }
                                    },
                                    obscureText: !_passwordVisible,
                                    controller: _passwordController,
                                    style: TextStyle(fontSize: 14),
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(30.0),
                                          ),
                                          borderSide: const BorderSide(
                                              color: Color(0xff007373),
                                              width: 1.0),
                                        ),
                                        focusedBorder: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(10.0),
                                          borderSide: BorderSide(
                                              color: Color(0xff007373)),
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            // Based on passwordVisible state choose the icon
                                            _passwordVisible
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: Color(0xff007373),
                                          ),
                                          onPressed: () {
                                            // Update the state i.e. toogle the state of passwordVisible variable
                                            setState(() {
                                              _passwordVisible =
                                                  !_passwordVisible;
                                            });
                                          },
                                        ),
                                        suffixIconColor: Color(0xff007373),
                                        hintStyle: new TextStyle(
                                            color: Color(0xff007373)),
                                        hintText: "Nhập lại mật khẩu",
                                        fillColor: Colors.white),
                                  ),
                                )),
                            GestureDetector(
                              onTap: _signUp,
                              child: Container(
                                //buttonsdangki9F7 (39:507)
                                margin:
                                    const EdgeInsets.fromLTRB(43, 40, 59, 0),
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: const Color(0xff007373),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      'Đăng kí',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Quicksand',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2000000477 / fem,
                                        color: const Color(0xfffcf2d9),
                                      ),
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
            ),
          ),
        ),
      ),
    ));
  }

  void _signUp() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    if (formKey.currentState!.validate()) {}
    if (email.isEmpty || password.isEmpty) {
      Fluttertoast.showToast(msg: 'Bạn chưa điền thông tin');
      return; // Dừng việc thực thi hàm nếu thông tin nhập vào trống
    }

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      // Thêm dữ liệu người dùng vào Firestore
      await _addUserDataToFirestore(user);
      print("User is successfully created");
      Fluttertoast.showToast(msg: 'Đăng ký thành công!');
      Navigator.pushReplacementNamed(context, "/login");
    } else {
      print("Some error happend");
    }
  }

  Future<void> _addUserDataToFirestore(User user) async {
    // Tham chiếu đến Firestore collection "users"
    final CollectionReference usersCollection =
        FirebaseFirestore.instance.collection('Users');

    try {
      // Thêm dữ liệu người dùng mới vào Firestore
      await usersCollection.doc(user.uid).set({
        'uid': user.uid,
        'email': user.email,
        'role': 'khach hang', // Đặt vai trò thành "khách hàng"
        'displayName': '',
        'hinhanh': '',
        // Các trường dữ liệu khác có thể thêm vào tại đây
      });

      print("User data added to Firestore");
    } catch (e) {
      print("Error adding user data to Firestore: $e");
    }
  }
}
