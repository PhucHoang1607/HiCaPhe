import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myapp/model/User.dart';
import 'package:myapp/page-1/CapNhatTaiKhoanNhanVien.dart';
import 'package:myapp/utils.dart';

class TaiKhoanNhanVien extends StatelessWidget {

  TaiKhoanNhanVien({super.key, required this.usersNV});
  Users? usersNV;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 380;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.94;
    return Scaffold(
        body:  Container(
          width: double.infinity,
          child: Container(
            // taikhoannhanvienFsX (385:1107)
            padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 21*fem, 85*fem),
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
                  // vectorptH (5:369)
                  margin: EdgeInsets.fromLTRB(0*fem, 30*fem, 280*fem, 0*fem),
                  width: 45*fem,
                  height: 45*fem,
                  child: TextButton(
                    onPressed:(){
                      Navigator.pop(context);
                    } ,
                    child: Image.asset(
                      'assets/page-1/images/vector.png',
                      width: 45*fem,
                      height: 45*fem,
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
                        child: usersNV?.hinhanh != null && usersNV!.hinhanh.isNotEmpty
                            ? Image.network(
                          usersNV!.hinhanh,
                          fit: BoxFit.cover,
                        )
                            : Image.asset(
                          'assets/page-1/images/ellipse-3-bg.png', // Replace with your default image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // txcpheni8q (385:1110)
                  margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 31*fem),
                  child: Text(
                    usersNV!.displayName,
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
                  // group81R3F (385:1115)
                  margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 1*fem, 42*fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // txcphen9zq (385:1116)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 82*fem, 0*fem),
                        child: Text(
                          'Giới tính',
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
                        // namGZf (385:1117)
                        usersNV!.gioitinh,
                        textAlign: TextAlign.right,
                        style: SafeGoogleFont (
                          'Quicksand',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.25*ffem/fem,
                          color: Color(0xff993300),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // group78c7j (385:1112)
                  margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 2*fem, 41.38*fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // txcphenkDw (385:1113)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 54*fem, 0*fem),
                        child: Text(
                          'Ngày sinh:',
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
                        // frh (385:1114)
                        usersNV!.ngaysinh,
                        style: SafeGoogleFont (
                          'Quicksand',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.25*ffem/fem,
                          color: Color(0xff993300),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // group77cmw (385:1124)
                  margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 1*fem, 41.38*fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // txcphenZBP (385:1125)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                        child: Text(
                          'Số điện thoại:',
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
                        // rwB (385:1126)
                        usersNV!.sdt,
                        style: SafeGoogleFont (
                          'Quicksand',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.25*ffem/fem,
                          color: Color(0xff993300),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // group76DFw (385:1118)
                  margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 1*fem, 35.23*fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // txcphenwxd (385:1119)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 101*fem, 0*fem),
                        child: Text(
                          'Lương:',
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
                        // fNq (385:1120)
                        usersNV!.luong,
                        style: SafeGoogleFont (
                          'Quicksand',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.25*ffem/fem,
                          color: Color(0xff993300),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // group79Cdf (385:1121)
                  margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 43.85*fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // txcphen8nD (385:1122)
                        margin: EdgeInsets.fromLTRB(0*fem, 6.15*fem, 94*fem, 0*fem),
                        child: Text(
                          'Ca làm:',
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
                        // sngeVf (385:1123)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.15*fem),
                        child: Text(
                          usersNV!.calam,
                          style: SafeGoogleFont (
                            'Quicksand',
                            fontSize: 24*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.25*ffem/fem,
                            color: Color(0xff993300),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  CapNhatTaiKhoanNhanVien(
                      hinhanh: usersNV!.hinhanh,
                      displayName: usersNV!.displayName,
                      sdt: usersNV!.sdt,
                      calam: usersNV!.calam,
                      luong: usersNV!.luong,
                      ngaysinh: usersNV!.ngaysinh,
                      gioitinh: usersNV!.gioitinh,
                      uid: usersNV!.uid,
                      email: usersNV!.email,
                    ),));
                  },
                  child: Container(
                    // group32y29 (385:1129)
                    margin: EdgeInsets.fromLTRB(34*fem, 0*fem, 30*fem, 0*fem),
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
        ));
  }
}