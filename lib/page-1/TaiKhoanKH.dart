import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myapp/model/Admin.dart';
import 'package:myapp/page-1/CapNhatTaiKhoanKhachHang.dart';
import 'package:myapp/page-1/QuanLyKH.dart';
import 'package:myapp/utils.dart';

class TaiKhoanKH extends StatelessWidget {
  Admin? khachhang;
  String id;
  TaiKhoanKH({super.key,required this.khachhang, required this.id});

  @override
  Widget build(BuildContext context) {

    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Container(
              // taikhoankhachhangtsb (385:1212)
              padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 22*fem, 85*fem),
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
                    // vectorzJM (385:1216)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 290*fem, 53*fem),
                    width: 32*fem,
                    height: 32*fem,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> QuanLyKH()));
                      },
                      child: Image.asset(
                        'assets/page-1/images/vector.png',
                        width: 32*fem,
                        height: 32*fem,
                      ),
                    ),
                  ),
                  Container(
                    // group80eth (385:1223)
                    margin: EdgeInsets.fromLTRB(102*fem, 0*fem, 97*fem, 34*fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100*fem),
                    ),
                    child: Center(
                      // image16LFj (385:1224)
                      child: SizedBox(
                        width: 123*fem,
                        height: 123*fem,
                        child:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100*fem),
                          child: khachhang?.hinhanh != null && khachhang!.hinhanh.isNotEmpty
                              ? Image.network(
                            khachhang!.hinhanh,
                            fit: BoxFit.cover,
                          )
                              : Image.asset(
                            'assets/page-1/images/image-16.png', // Replace with your default image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    // txcphenHCu (385:1215)
                    margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 63*fem),
                    child: Text(
                      khachhang!.displayName,
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Quicksand',
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.25*ffem/fem,
                        color: Color(0xff993300),
                      ),
                    ),
                  ),
                  Container(
                    // group77Hs7 (385:1220)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 36*fem),
                    width: 330,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // txcphenCDP (385:1221)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                          child: Text(
                            'Số điện thoại:',
                            style: SafeGoogleFont (
                              'Quicksand',
                              fontSize: 22*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.25*ffem/fem,
                              color: Color(0xff007373),
                            ),
                          ),
                        ),
                        Text(
                          // azd (385:1222)
                          khachhang!.sdt,
                          style: SafeGoogleFont (
                            'Quicksand',
                            fontSize: 22*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.25*ffem/fem,
                            color: Color(0xff993300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group78u1K (385:1228)
                    margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 11*fem, 34*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // txcphenbuj (385:1229)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                          child: Text(
                            'Email:',
                            style: SafeGoogleFont (
                              'Quicksand',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.25*ffem/fem,
                              color: Color(0xff007373),
                            ),
                          ),
                        ),
                        Text(
                          // thaobinhoutlookcomvnS9f (385:1230)
                          khachhang!.email,
                          style: SafeGoogleFont (
                            'Quicksand',
                            fontSize: 24*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.25*ffem/fem,
                            color: Color(0xff993300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group769Jy (385:1217)
                    margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 7*fem, 57*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // txcphenPUD (385:1218)
                          margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 11*fem),
                          child: Text(
                            'Địa chỉ:',
                            style: SafeGoogleFont (
                              'Quicksand',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.25*ffem/fem,
                              color: Color(0xff007373),
                            ),
                          ),
                        ),
                        Container(
                          // tnxun6xtnxunhhcmnkxy (385:1219)
                          constraints: BoxConstraints (
                            maxWidth: 309*fem,
                          ),
                          child: Text(
                            khachhang!.diachi,
                            style: SafeGoogleFont (
                              'Quicksand',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.25*ffem/fem,
                              color: Color(0xff993300),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> CapNhatTaiKhoanKhachHang(diaChi: khachhang!.diachi, displayName: khachhang!.displayName, email:khachhang!.email, hinhanh: khachhang!.hinhanh, sdt:khachhang!.sdt,id: id, uid: khachhang!.uid,)));
                    },
                    child: Container(
                      // group32GK3 (385:1225)
                      margin: EdgeInsets.fromLTRB(34*fem, 0*fem, 29*fem, 0*fem),
                      width: double.infinity,
                      height: 36*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff007373),
                        borderRadius: BorderRadius.circular(15*fem),
                      ),
                      child: Center(
                        child: Text(
                          'Thay đổi thông tin',
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
                  ),
                ],
              ),
            ),
                ),
        ),
      ),
    );
  }
}