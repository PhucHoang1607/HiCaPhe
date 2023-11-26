import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class ThongTinPhanMem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(

        child: Container(
          // thongtinphanmems8L (107:196)
          padding: EdgeInsets.fromLTRB(14*fem, 16*fem, 0*fem, 0*fem),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // autogroupou2yFua (8Q6n95xatvgkgFuMw3ou2Y)
                margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 8*fem),
                width: 310*fem,
                height: 149*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // logomauiYG (107:198)
                      left: 114*fem,
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
                      // txtilgioithieu4Bgk (107:201)
                      left: 16*fem,
                      top: 114*fem,
                      child: Align(
                        child: SizedBox(
                          width: 355*fem,
                          height: 35*fem,
                          child: Text(
                            'Thông tin ứng dụng',
                            style: SafeGoogleFont (
                              'Quicksand',
                              fontSize: 28*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.25*ffem/fem,
                              letterSpacing: 1*fem,
                              color: Color(0xff993300),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // vectorBaG (107:231)
                      left: 0*fem,
                      top: 20*fem,
                      child: Align(
                        child: Container(
                          // vectorUGx (107:248)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),

                          child: TextButton(
                            onPressed: (){
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
                // autogroupd3eyEoS (8Q6nDv9sMYNM6CjHUcD3eY)
                width: 535*fem,
                height: 784.04*fem,
                child: Stack(
                  children: [

                    Positioned(
                      // group59ZjE (107:202)
                      left: 0*fem,
                      top: 0*fem,
                      child: Container(
                        width: 535*fem,
                        height: 784.04*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // autogroupamu4BEp (8Q6ng9u9k6ANzFVZH1AmU4)
                              left: 6*fem,
                              top: 421.4970703125*fem,
                              child: Container(
                                width: 316*fem,
                                height: 19*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // phinbn5b6 (107:215)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 196*fem, 0*fem),
                                      child: Text(
                                        'Phiên bản',
                                        style: SafeGoogleFont (
                                          'Quicksand',
                                          fontSize: 15*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.25*ffem/fem,
                                          letterSpacing: 1*fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // yAg (107:203)
                                      '1.1.0',
                                      style: SafeGoogleFont (
                                        'Quicksand',
                                        fontSize: 15*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.25*ffem/fem,
                                        letterSpacing: 1*fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroupvnfzua8 (8Q6ocdLPLCWq2Fhw2rVnfz)
                              left: 9*fem,
                              top: 729.9113769531*fem,
                              child: Container(
                                width: 330*fem,
                                height: 19*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // phinbnpSC (107:216)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 195*fem, 0*fem),
                                      child: Text(
                                        'Phiên bản',
                                        style: SafeGoogleFont (
                                          'Quicksand',
                                          fontSize: 15*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.25*ffem/fem,
                                          letterSpacing: 1*fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // Ktk (107:204)
                                      '1.1.0',
                                      style: SafeGoogleFont (
                                        'Quicksand',
                                        fontSize: 15*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.25*ffem/fem,
                                        letterSpacing: 1*fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroupfhapUFr (8Q6o8ZJphZBn589UvVFHap)
                              left: 6*fem,
                              top: 516.5915527344*fem,
                              child: Container(
                                width: 316*fem,
                                height: 19*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // kchthctixungo3E (107:224)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 94*fem, 0*fem),
                                      child: Text(

                                        'Kích thước tải xuống',
                                        style: SafeGoogleFont (
                                          'Quicksand',
                                          fontSize: 15*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.25*ffem/fem,
                                          letterSpacing: 1*fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // mbHUC (107:205)
                                      '23MB',
                                      style: SafeGoogleFont (
                                        'Quicksand',
                                        fontSize: 15*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.25*ffem/fem,
                                        letterSpacing: 1*fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroupeukc2gg (8Q6ojxTWJaeuEateGjeukc)
                              left: 9*fem,
                              top: 761.6098632812*fem,
                              child: Container(
                                width: 330*fem,
                                height: 22.43*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // kchthctixungkcg (107:225)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 95*fem, 3.43*fem),
                                      child: Text(
                                        'Kích thước tải xuống',
                                        style: SafeGoogleFont (
                                          'Quicksand',
                                          fontSize: 15*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.25*ffem/fem,
                                          letterSpacing: 1*fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // mbGL8 (107:206)
                                      margin: EdgeInsets.fromLTRB(0*fem, 3.43*fem, 0*fem, 0*fem),
                                      child: Text(
                                        '23MB',
                                        style: SafeGoogleFont (
                                          'Quicksand',
                                          fontSize: 15*ffem,
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
                            ),
                            Positioned(
                              // vngdngnyBT6 (107:207)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 185*fem,
                                  height: 25*fem,
                                  child: Text(
                                    'Về ứng dụng này',
                                    style: SafeGoogleFont (
                                      'Quicksand',
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.25*ffem/fem,
                                      letterSpacing: 1*fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // thngtinphnmmngdngfNG (107:208)
                              left: 0*fem,
                              top: 384.6586914062*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 350*fem,
                                  height: 25*fem,
                                  child: Text(
                                    'Thông tin phần mềm ứng dụng',
                                    style: SafeGoogleFont (
                                      'Quicksand',
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.25*ffem/fem,
                                      letterSpacing: 1*fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // khnngtngthchvithitbanghotng9oE (107:209)
                              left: 0*fem,
                              top: 623.6796875*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 350*fem,
                                  height: 55*fem,

                                  child: Text(
                                    'Khả năng tương thích với\nthiết bị đang hoạt động',
                                    style: SafeGoogleFont (
                                      'Quicksand',
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.25*ffem/fem,
                                      letterSpacing: 1*fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // thanhtonticahngtchlyvthngthccc (107:210)
                              left: 9*fem,
                              top: 30.8386230469*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 303*fem,
                                  height: 55*fem,
                                  child: Text(
                                    'Thanh toán tại cửa hàng, tích lũy và thưởng thức các quà thưởng.',
                                    style: SafeGoogleFont (
                                      'Quicksand',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.25*ffem/fem,
                                      letterSpacing: 1*fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // tinlithanhtonbngngdnghicphtchl (107:211)
                              left: 9*fem,
                              top: 78.8142089844*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 301*fem,
                                  height: 80*fem,
                                  child: Text(
                                    'Tiện lợi thanh toán bằng ứng dụng HI CÀ PHÊ để tích lũy điểm để nhận các quà thưởng với các chi tiêu của bạn tại cửa hàng.',
                                    style: SafeGoogleFont (
                                      'Quicksand',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.25*ffem/fem,
                                      letterSpacing: 1*fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // thanhtontinlikhngcnmangtheovgi (107:212)
                              left: 9*fem,
                              top: 159.3444824219*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 297*fem,
                                  height: 98*fem,
                                  child: Text(
                                    '* Thanh toán tiện lợi\nKhông cần mang theo ví, giờ đây bạn có thể thanh toán và tích lũy quà thưởng thông qua ứng dụng điện thoại.',
                                    style: SafeGoogleFont (
                                      'Quicksand',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.25*ffem/fem,
                                      letterSpacing: 1*fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // quthngkimtraimthngcngnhquthngt (107:213)
                              left: 9*fem,
                              top: 256.15234375*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 301*fem,
                                  height: 60*fem,
                                  child: Text(
                                    '* Quà thưởng\nKiểm tra điểm thưởng cũng như quà thưởng trong tài khoản.',
                                    style: SafeGoogleFont (
                                      'Quicksand',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.25*ffem/fem,
                                      letterSpacing: 1*fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // thngbokhmphnhngthngbominhtthic (107:214)
                              left: 9*fem,
                              top: 320.4055175781*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 298*fem,
                                  height: 57*fem,
                                  child: Text(
                                    '* Thông báo\nKhám phá những thông báo mới nhất từ HI CÀ PHÊ.',
                                    style: SafeGoogleFont (
                                      'Quicksand',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.25*ffem/fem,
                                      letterSpacing: 1*fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroup1s3e18c (8Q6oVYhrDCDobAMhZc1s3E)
                              left: 9*fem,
                              top: 681.9357910156*fem,
                              child: Container(
                                width: 412*fem,
                                height: 40*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // khnngtngthch8j2 (107:217)
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 179*fem,
                                          height: 40*fem,
                                          child: Text(
                                            'Khả năng\ntương thích',
                                            style: SafeGoogleFont (
                                              'Quicksand',
                                              fontSize: 15*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.25*ffem/fem,
                                              letterSpacing: 1*fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // tngthchvithitbcabnc8Q (107:218)
                                      left: 138 *fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 267*fem,
                                          height: 40*fem,
                                          child: Text(
                                            'Tương thích với thiết\nbị của bạn',
                                            style: SafeGoogleFont (
                                              'Quicksand',
                                              fontSize: 15*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.25*ffem/fem,
                                              letterSpacing: 1*fem,
                                              color: Color(0xff000000),
                                            ),

                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroupp5drge4 (8Q6npyympjNjt1h98gP5Dr)
                              left: 6*fem,
                              top: 453.1950683594*fem,
                              child: Container(
                                width: 317*fem,
                                height: 19*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // cpnhpvoQKA (107:223)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 98*fem, 0*fem),
                                      child: Text(
                                        'Cập nhập vào',
                                        style: SafeGoogleFont (
                                          'Quicksand',
                                          fontSize: 15*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.25*ffem/fem,
                                          letterSpacing: 1*fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // hp4 (107:219)
                                      '15/09/2023',
                                      style: SafeGoogleFont (
                                        'Quicksand',
                                        fontSize: 15*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.25*ffem/fem,
                                        letterSpacing: 1*fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroupmxzxSme (8Q6oNoQ6E2PWXinmnXmXzx)
                              left: 6*fem,
                              top: 579.9880371094*fem,
                              child: Container(
                                width: 317*fem,
                                height: 19*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // ngyphthnha7A (107:227)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 80*fem, 0*fem),
                                      child: Text(
                                        'Ngày phát hành',
                                        style: SafeGoogleFont (
                                          'Quicksand',
                                          fontSize: 15*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.25*ffem/fem,
                                          letterSpacing: 1*fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // 65W (107:220)
                                      '15/09/2023',
                                      style: SafeGoogleFont (
                                        'Quicksand',
                                        fontSize: 15*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.25*ffem/fem,
                                        letterSpacing: 1*fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroup6awcS9N (8Q6o1EBhjB3hrnxmgc6AWC)
                              left: 6*fem,
                              top: 484.8930664062*fem,
                              child: Container(
                                width: 320*fem,
                                height: 19*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // tixungALG (107:228)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 68, 0*fem),
                                      child: Text(
                                        'Tải xuống',
                                        style: SafeGoogleFont (
                                          'Quicksand',

                                          fontSize: 15*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.25*ffem/fem,

                                          letterSpacing: 1*fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // trn50000ltti5TE (107:221)
                                      'Trên 50.000 lượt tải',
                                      style: SafeGoogleFont (
                                        'Quicksand',
                                        fontSize: 15*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.25*ffem/fem,
                                        letterSpacing: 1*fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroupxcxgbgU (8Q6oG46LErZDUHDr1TXCxg)
                              left: 6*fem,
                              top: 548.2895507812*fem,
                              child: Container(
                                width: 316*fem,
                                height: 19*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // nhcungcp8Ac (107:226)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 0*fem),
                                      child: Text(
                                        'Nhà cung cấp',
                                        style: SafeGoogleFont (
                                          'Quicksand',
                                          fontSize: 15*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.25*ffem/fem,
                                          letterSpacing: 1*fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // hicphcompanyEzL (107:222)
                                      'HI CÀ PHÊ company',
                                      style: SafeGoogleFont (
                                        'Quicksand',
                                        fontSize: 15*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.25*ffem/fem,
                                        letterSpacing: 1*fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // line19aoJ (107:229)
                              left: 51*fem,
                              top: 615.1127929688*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 220*fem,
                                  height: 1*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // line20iPi (107:230)
                              left: 50*fem,
                              top: 379.5180664062*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 220*fem,
                                  height: 1*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      color: Color(0xff000000),
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
            ],
          ),
        ),
      ),
    );
  }
}