import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:myapp/utils.dart';

class ChiTietNguyenLieu extends StatefulWidget {
  final String nguyenlieuId;
  const ChiTietNguyenLieu({super.key, required this.nguyenlieuId});

  @override
  State<ChiTietNguyenLieu> createState() => _ChiTietNguyenLieuState();
}

class _ChiTietNguyenLieuState extends State<ChiTietNguyenLieu> {
  late String tenNL;
  late String ngayNhap;
  late String soLuongCon;
  late String donGia;
  late String  moTa;
  late String imageURLdetialsNL;
  @override
  void initState() {
    super.initState();
    fetchThongTinNguyenLieu(widget.nguyenlieuId);
  }
  Future<void> fetchThongTinNguyenLieu(String productId) async {
    final DocumentSnapshot docSnapshot = await FirebaseFirestore.instance
        .collection('RawMaterials')
        .doc(productId)
        .get();

    if (docSnapshot.exists) {
      final thongTinSanPham = docSnapshot.data() as Map<String, dynamic>;
      setState(() {
        tenNL = thongTinSanPham['tenNL'];
        imageURLdetialsNL = thongTinSanPham['hinhAnh'];
        ngayNhap = thongTinSanPham['ngayNhap'];
        donGia = thongTinSanPham['donGia'].toString();
        moTa = thongTinSanPham['moTa'];
        soLuongCon = thongTinSanPham['slTonKho'];
      });
    } else {
      print('Không tìm thấy sản phẩm');
    }
  }
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Color(0xfff5dab1),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // chitietnguyenlieujXF (5:685)
            padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 22*fem, 71*fem),
            width: double.infinity,
            decoration: const BoxDecoration (
              color: Color(0xfff5dab1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // vector2mF (5:690)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 34*fem),
                  width: 45*fem,
                  height: 45*fem,
                  child: TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/page-1/images/vector-y13.png',
                      width: 45*fem,
                      height: 45*fem,
                    ),
                  ),
                ),
                Container(
                  // autogroupc4x3wtD (NufBFHXJqhqp5kZ8P9c4X3)
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 34*fem),
                  width: double.infinity,
                  height: 115*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // anhspGQh (5:691)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 0*fem),
                        width: 75*fem,
                        height: 110*fem,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20*fem),
                          child: Image.network(
                            imageURLdetialsNL,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        // autogroupxb1bNCq (NufBNHKegFX9vRxXvrXb1B)
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // nguynliuinV (5:692)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                              child: Text(
                                'Nguyên liệu',
                                style: SafeGoogleFont (
                                  'Quicksand',
                                  fontSize: 30*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.25*ffem/fem,
                                  color: const Color(0xff007373),
                                ),
                              ),
                            ),
                            Text(
                              // txcphenduT (5:687)
                              tenNL,
                              style: SafeGoogleFont (
                                'Quicksand',
                                fontSize: 26*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.25*ffem/fem,
                                color: const Color(0xff993300),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // txcphenaZo (5:688)
                  margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 20*fem),
                  child: Text(
                    'Ngày nhập gần nhất:',
                    style: SafeGoogleFont (
                      'Quicksand',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.25*ffem/fem,
                      color: const Color(0xff007373),
                    ),
                  ),
                ),
                Container(
                  // gcq (5:693)
                  margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 36*fem),
                  child: Text(
                    ngayNhap,
                    style: SafeGoogleFont (
                      'Quicksand',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.25*ffem/fem,
                      color: const Color(0xff993300),
                    ),
                  ),
                ),
                Container(
                  // autogroup9ugm19K (NufBWH6KvJagt4hrZ69uGm)
                  margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 56*fem, 36*fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // txcphen8zd (5:697)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 0*fem),
                        child: Text(
                          'Số lượng còn:',
                          style: SafeGoogleFont (
                            'Quicksand',
                            fontSize: 24*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.25*ffem/fem,
                            color: const Color(0xff007373),
                          ),
                        ),
                      ),
                      Text(
                        // kgFJZ (5:698)
                        soLuongCon,
                        style: SafeGoogleFont (
                          'Quicksand',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.25*ffem/fem,
                          color: const Color(0xff993300),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // autogroupndytBxu (NufBcGvLMLsqbnmM2GNdyT)
                  margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 36*fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // txcphen7bf (5:695)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 27*fem, 0*fem),
                        child: Text(
                          'Đơn giá mua:',
                          style: SafeGoogleFont (
                            'Quicksand',
                            fontSize: 24*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.25*ffem/fem,
                            color: const Color(0xff007373),
                          ),
                        ),
                      ),
                      Text(
                        // kg2Tj (5:696)
                        donGia.toString() ,
                        style: SafeGoogleFont (
                          'Quicksand',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.25*ffem/fem,
                          color: const Color(0xff993300),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // txcphenaEM (5:689)
                  margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 20*fem),
                  child: Text(
                    'Mô tả:',
                    style: SafeGoogleFont (
                      'Quicksand',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.25*ffem/fem,
                      color: const Color(0xff007373),
                    ),
                  ),
                ),
                Container(
                  // cthuhochttynguynlvacphrobustax (5:694)
                  margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                  constraints: BoxConstraints (
                    maxWidth: 319*fem,
                  ),
                  child: Text(
                    moTa,
                    style: SafeGoogleFont (
                      'Quicksand',
                      fontSize: 20*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.25*ffem/fem,
                      color: const Color(0xff993300),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
