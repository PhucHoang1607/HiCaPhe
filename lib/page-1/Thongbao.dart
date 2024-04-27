import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/TrangChuNew.dart';

class ThongBao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // thongbaoncp (107:174)
          padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 12*fem, 35*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xfff9efd8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogrouporrehUt (8Q6mZgka6uz1khr2jrorRe)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 80*fem, 13*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Container(
                        // vectorpZW (107:195)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 55*fem, 0*fem),
                        width: 32*fem,
                        height: 32*fem,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const TrangChuNew()));
                          },
                          child: Image.asset(
                            'assets/page-1/images/vector.png',
                            width: 64*fem,
                            height: 64*fem,
                          ),
                        ),
                      ),
                    Container(
                      // autogroupnzxrYVW (8Q6mfMFoQ7pS6n8DWrnzXr)
                      margin: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 0*fem),
                      width: 154*fem,
                      height: 133*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // logomauUPA (107:175)
                            left: 27*fem,
                            top: 0*fem,
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
                            // txthngboCKA (107:176)
                            left: 0*fem,
                            top: 98*fem,
                            child: Align(
                              child: SizedBox(
                                width: 320*fem,
                                height: 35*fem,
                                child: Text(
                                  'Thông báo',
                                  style: SafeGoogleFont (
                                    'Quicksand',
                                    fontSize: 26.5*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.25*ffem/fem,
                                    letterSpacing: 1*fem,
                                    color: Color(0xff993300),
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
              Container(
                // frame46i4Y (107:180)
                margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 3*fem, 26*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xff993300)),
                  color: Color(0xfffdf8ec),
                  borderRadius: BorderRadius.circular(20*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // anhmagiamgia25E (107:181)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                      width: 107*fem,
                      height: 76*fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20*fem),
                        child: Image.asset(
                          'assets/page-1/images/anhmagiamgia.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // txchcmngbnnhncmgimgi57sN (107:182)
                      constraints: BoxConstraints (
                        maxWidth: 203*fem,
                      ),
                      child: Text(
                        'Chúc mừng bạn đã nhận được mã giảm giá 5%! ',
                        style: SafeGoogleFont (
                          'Quicksand',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.25*ffem/fem,
                          letterSpacing: 1*fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // frame47nTi (107:183)
                margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 3*fem, 26*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xff993300)),
                  color: Color(0xfffdf8ec),
                  borderRadius: BorderRadius.circular(20*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // anhmagiamgiatFr (107:184)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                      width: 107*fem,
                      height: 76*fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20*fem),
                        child: Image.asset(
                          'assets/page-1/images/anhmagiamgia.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // txchcmngbnnhncmgimgi5bg4 (107:185)
                      constraints: BoxConstraints (
                        maxWidth: 203*fem,
                      ),
                      child: Text(
                        'Chúc mừng bạn đã nhận được mã giảm giá 5%! ',
                        style: SafeGoogleFont (
                          'Quicksand',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.25*ffem/fem,
                          letterSpacing: 1*fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // frame46tfA (107:186)
                margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 3*fem, 26*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xff993300)),
                  color: Color(0xfffdf8ec),
                  borderRadius: BorderRadius.circular(20*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // anhmagiamgia1Ut (107:187)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                      width: 107*fem,
                      height: 76*fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20*fem),
                        child: Image.asset(
                          'assets/page-1/images/anhmagiamgia.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // txchcmngbnnhncmgimgi5Xi8 (107:188)
                      constraints: BoxConstraints (
                        maxWidth: 203*fem,
                      ),
                      child: Text(
                        'Chúc mừng bạn đã nhận được mã giảm giá 5%! ',
                        style: SafeGoogleFont (
                          'Quicksand',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.25*ffem/fem,
                          letterSpacing: 1*fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // frame46phE (107:189)
                margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 3*fem, 26*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xff993300)),
                  color: Color(0xfffdf8ec),
                  borderRadius: BorderRadius.circular(20*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // anhmagiamgiauya (107:190)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                      width: 107*fem,
                      height: 76*fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20*fem),
                        child: Image.asset(
                          'assets/page-1/images/anhmagiamgia.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // txchcmngbnnhncmgimgi5bbW (107:191)
                      constraints: BoxConstraints (
                        maxWidth: 203*fem,
                      ),
                      child: Text(
                        'Chúc mừng bạn đã nhận được mã giảm giá 5%! ',
                        style: SafeGoogleFont (
                          'Quicksand',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.25*ffem/fem,
                          letterSpacing: 1*fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // frame46frG (107:192)
                margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 3*fem, 0*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xff993300)),
                  color: Color(0xfffdf8ec),
                  borderRadius: BorderRadius.circular(20*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // anhmagiamgiazde (107:193)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                      width: 107*fem,
                      height: 76*fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20*fem),
                        child: Image.asset(
                          'assets/page-1/images/anhmagiamgia.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // txchcmngbnnhncmgimgi57iG (107:194)
                      constraints: BoxConstraints (
                        maxWidth: 203*fem,
                      ),
                      child: Text(
                        'Chúc mừng bạn đã nhận được mã giảm giá 5%! ',
                        style: SafeGoogleFont (
                          'Quicksand',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.25*ffem/fem,
                          letterSpacing: 1*fem,
                          color: Color(0xff000000),
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