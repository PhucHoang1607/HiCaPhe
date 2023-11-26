import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:myapp/model/giohang.dart';
import 'package:myapp/page-1/DanhMucSanPhamKH.dart';
import 'package:myapp/page-1/GioHang.dart';
import 'package:myapp/page-1/QuanLyKH.dart';
import 'package:myapp/page-1/TrangChuKH.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/danhmuccaphe.dart';
import 'package:myapp/page-1/thanhtoanthanhcong.dart';
import 'package:myapp/page-1/TrangChuNew.dart';
import 'package:myapp/utils.dart';
import 'package:pay/pay.dart';
import '../method/google_api.dart';
import 'ChiTietSanPhamKH.dart';

class ChiTietSPDH extends StatefulWidget {
  final DocumentSnapshot documentSnapshot;
  final String Name;
  const  ChiTietSPDH ({super.key, required this.documentSnapshot, required this.Name});

  @override
  State< ChiTietSPDH > createState() => _ChiTietSPDHState( documentSnapshot);
}

class _ChiTietSPDHState extends State< ChiTietSPDH> {
  Future<void> updateOrderStatus(String orderId) async {
    try {
      // Update tinhTrang field to "đơn đã hủy"
      await updataDatHang.doc(orderId).update({'tinhTrang': 'Đơn đã hủy'});

      // Optionally, you can also navigate to a new screen or show a message
      Fluttertoast.showToast(
        msg: "Đơn hàng đã được hủy",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } catch (error) {
      print("Error updating order status: $error");
      // Handle the error, show a message, or navigate to an error screen
    }
  }
  final DocumentSnapshot documentSnapshot;

  _ChiTietSPDHState(this.documentSnapshot);

  final CollectionReference updataDatHang =FirebaseFirestore.instance.collection('Bill');
  @override
  Widget build(BuildContext context) {
    final mahoadon =  documentSnapshot.id;
    final ngayDH = documentSnapshot['ngayDH'];
    final thanhtien = documentSnapshot['thanhTien'];
    final phuongthuc= documentSnapshot['phuongThucThanhToan'];
    final tinhTrang = documentSnapshot['tinhTrang'];
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return  Material(
      type: MaterialType.transparency,
      child: SizedBox(
        width: double.infinity,
        child: Container(
          // danhmucsanphamtB3 (5:376)
          width: double.infinity,
          decoration: const BoxDecoration (
            color: Color(0xfff5dab1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // chitietsanpham2tR (301:495)
                width: double.infinity,
                decoration: BoxDecoration (
                  color: Color(0xfff5dab1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouphjqtK6q (SivAximhhNxvjZBaCZHjqT)
                      padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 0*fem, 20*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                              // vectorcrd (301:496)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                              width: 32*fem,
                              height: 32*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector.png',
                                width: 32*fem,
                                height: 32*fem,
                              ),
                            ),
                          ),
                          Container(
                            // autogroupd6nv95s (SivAhZYJ3rzgkR9CBXd6nV)
                            margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 21*fem),
                            width: double.infinity,
                            height: 90*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // safes1s (301:510)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 0*fem),
                                  width: 90*fem,
                                  height: 90*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/safe.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // autogroupj3bwB2Z (SivAoPhuuz4UHKK2ocj3Bw)
                                  height: 200,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // txcphenvVw (301:497)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                                        child: Text(
                                          mahoadon,
                                          style: SafeGoogleFont (
                                            'Quicksand',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.25*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // ctZ (301:498)
                                       ngayDH,
                                        style: SafeGoogleFont (
                                          'Quicksand',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.25*ffem/fem,
                                          color: Color(0xff993300),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group889Nh (301:499)
                            margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 17*fem),
                            width: 900*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupct2hsZb (SivBknHHd9BRqrvViTCT2h)
                                  padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                  // width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // autogroup8mrqzeD (SivBFYd125Epax8UgU8Mrq)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // tnkhchhngXe9 (301:500)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 0*fem),
                                              child: Text(
                                                'Tên khách hàng',
                                                style: SafeGoogleFont (
                                                  'Quicksand',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.25*ffem/fem,
                                                  color: Color(0xff007373),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // nguynvnadhB (301:501)
                                              widget.Name,
                                              style: SafeGoogleFont (
                                                'Quicksand',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.25*ffem/fem,
                                                color: Color(0xff993300),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5*fem,
                                      ),
                                      SizedBox(
                                        height: 5*fem,
                                      ),
                                      Container(
                                        // autogroupdsnv5hb (SivBT3HrBQ92TvaW5ZDSNV)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // thnhtin1r9 (301:507)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 72*fem, 0*fem),
                                              child: Text(
                                                'Thành tiền',
                                                style: SafeGoogleFont (
                                                  'Quicksand',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.25*ffem/fem,
                                                  color: Color(0xff007373),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // j1T (301:503)
                                              thanhtien.toString()+ "VND",
                                              style: SafeGoogleFont (
                                                'Quicksand',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.25*ffem/fem,
                                                color: Color(0xff993300),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5*fem,
                                      ),
                                      Container(
                                        // autogrouprbayTTF (SivBYCoumrHMFXBjKHrBay)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 43*fem, 0*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // phngthcthanhtono1K (301:508)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                                              child: Text(
                                                'Phương thức thanh toán',
                                                style: SafeGoogleFont (
                                                  'Quicksand',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.25*ffem/fem,
                                                  color: Color(0xff007373),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // tinmtHx5 (301:504)
                                              phuongthuc,
                                              style: SafeGoogleFont (
                                                'Quicksand',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.25*ffem/fem,
                                                color: Color(0xff993300),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupixpwpx1 (SivBdhekW8tQQmaGFCiXPw)
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // tnhtrngnhngB1s (301:509)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48*fem, 0*fem),
                                        child: Text(
                                          'Tình trạng đơn hàng',
                                          style: SafeGoogleFont (
                                            'Quicksand',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.25*ffem/fem,
                                            color: Color(0xff007373),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // thanhtonV2Z (301:505)
                                        tinhTrang,
                                        style: SafeGoogleFont (
                                          'Quicksand',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.25*ffem/fem,
                                          color: Color(0xff993300),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: ()async{
                              await updateOrderStatus(mahoadon);
                            },
                            child: Container(
                              // opt6RS1 (301:556)
                              margin: EdgeInsets.fromLTRB(53*fem, 0*fem, 55.96*fem, 0*fem),
                              width: double.infinity,
                              height: 32*fem,
                              decoration: BoxDecoration (
                                color: Color(0xff993300),
                                borderRadius: BorderRadius.circular(30*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    'Hủy đơn hàng',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Quicksand',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.3333333333*ffem/fem,
                                      color: Color(0xfffcf2d9),
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
              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                    stream:  updataDatHang.snapshots(),
                    builder: (context,snapshot) {
                      final giohang = snapshot.data!.docs;
                      // Tính tổng tiền từ dữ liệu Firebase
                      return ListView.builder(
                        // đưa dữ liệu hiển thị lên màn hình
                          itemCount: giohang.length,
                          itemBuilder: (context, document){
                            print("Number of filtered items: ${giohang.length}"); // Add this lin
                            final DocumentSnapshot documentSnapshotGioHang = giohang[document];
                            final idSP = documentSnapshotGioHang['id'];
                            final soluong = documentSnapshotGioHang['soluong'];
                            return StreamBuilder<DocumentSnapshot>(
                                stream: FirebaseFirestore.instance.collection('Product').doc(idSP).snapshots(),
                                builder: (context, index){
                                  if (!index.hasData || index.data == null) {
                                    // Handle the case where no data is available for the given idSP
                                    return Text('Không có dữ liệu cho idSP: $idSP');
                                  }
                                  final productData = index.data?.data() as Map<String, dynamic>? ?? {};
                                  if (productData.isEmpty) {
                                    // Handle the case where the product data is empty
                                    return Text('Dữ liệu sản phẩm trống cho idSP: $idSP');
                                  }
                                  final tensp = productData['tenSP'];
                                  final hinhanh = productData['hinhAnh'];
                                  final kichthuoc = productData['kichThuoc'];
                                  final dongia = productData['donGia'];
                                  return Card(
                                    child: ListTile(
                                      visualDensity: VisualDensity(vertical: 4),
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ChiTietSanPhamKH(idspKH: idSP),),);
                                      },
                                      leading: ConstrainedBox(
                                        constraints: const BoxConstraints(
                                          minWidth: 60,
                                          minHeight: 55,
                                          maxWidth: 64,
                                          maxHeight: 64,
                                        ),
                                        child: Image.network(hinhanh, fit: BoxFit.cover),
                                      ),
                                      title: Text(tensp,
                                        style: const TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 26,
                                            color: Colors.black

                                        ),),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Kích thước : " + kichthuoc),
                                          Text("Số lượng : " + soluong.toString()),
                                          Text( "Đơn giá : " + dongia.toString() + ' VND'),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          }
                      );
                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
