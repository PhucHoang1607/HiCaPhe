import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/page-1/danhmucsanpham.dart';
import 'package:myapp/utils.dart';

class ChiTietSanPham extends StatefulWidget {
  final String productId;
  const ChiTietSanPham({super.key, required this.productId});

  @override
  State<ChiTietSanPham> createState() => _ChiTietSanPhamState();
}

class _ChiTietSanPhamState extends State<ChiTietSanPham> {

  late String tenSP;
  late String hinhAnh;
  late String kichThuoc;
  late String donGia;
  late String donVitinh;
  late String moTa;
  late String idCate;


  @override
  void initState() {
    super.initState();
    fetchThongTinSanPham(widget.productId);
  }

  Future<void> fetchThongTinSanPham(String productId) async {
    final DocumentSnapshot docSnapshot = await FirebaseFirestore.instance
        .collection('Product')
        .doc(productId)
        .get();

    if (docSnapshot.exists) {
      final thongTinSanPham = docSnapshot.data() as Map<String, dynamic>;
      setState(() {
        tenSP = thongTinSanPham['tenSP'];
        hinhAnh = thongTinSanPham['hinhAnh'];
        kichThuoc = thongTinSanPham['kichThuoc'];
        donGia = thongTinSanPham['donGia'].toString();
        donVitinh = thongTinSanPham['donVitinh'];
        moTa = thongTinSanPham['moTa'];
        idCate = thongTinSanPham['idCate'];
      });
    } else {
      print('Không tìm thấy sản phẩm');
    }
  }


  Future<String> fetchTenLoaiSanPham(String idCate) async {
    final QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('Category')
        .where(FieldPath.documentId, isEqualTo: idCate) // Sử dụng idCate để so sánh với documentId
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      final tenLoaiSanPhamData = querySnapshot.docs[0]['Name'];
      print('Ten loai san pham: $tenLoaiSanPhamData'); // Log tên loại sản phẩm
      return tenLoaiSanPhamData;
    } else {
      print('Khong tim thay loai san pham');
      return '';
    }
  }
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return FutureBuilder<String>(
        future: fetchTenLoaiSanPham(idCate),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator(); // Hiển thị tiến trình chờ khi đang tải dữ liệu
          }
          else {
            final tenLoaiSanPham = snapshot.data?? "";
            return Scaffold(
              backgroundColor: Color(0xfff5dab1),
              body: SafeArea(
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    // chitietsanphamkc9 (5:671)
                    padding: EdgeInsets.fromLTRB(
                        16 * fem, 16 * fem, 14 * fem, 0 * fem),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xfff5dab1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            // vectorehX (5:672)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 34 * fem),
                            width: 32 * fem,
                            height: 32 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-CmP.png',
                              width: 32 * fem,
                              height: 32 * fem,
                            ),
                          ),
                        ),
                        Container(
                          // autogroupw5nhmn9 (NufAFUrHuEt4KEXhhXw5NH)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 80 * fem),

                          height: 110 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // anhsphA1 (5:675)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 20 * fem, 0 * fem),
                                width: 75 * fem,
                                height: 110 * fem,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      20 * fem),
                                  child: Image.network(
                                    hinhAnh,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                // autogroupwcxhQq7 (NufAMyfU32sJbSG9hyWCxh)
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: Container(
                                        // txcphenYwK (5:673)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem,
                                            15 * fem),
                                        child: Text(
                                          tenSP,
                                          softWrap: true,
                                          maxLines: 2,
                                          style: SafeGoogleFont(
                                            'Quicksand',
                                            fontSize: 21 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.25 * ffem / fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // cph48y (5:674)
                                      tenLoaiSanPham,
                                      style: SafeGoogleFont(
                                        'Quicksand',
                                        fontSize: 21 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.25 * ffem / fem,
                                        color: const Color(0xff777777),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroup8xeho6Z (NufAVyS9H5vqZ51ULD8XEH)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 95 * fem, 50 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // kchthcizD (5:676)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 40 * fem, 0 * fem),
                                child: Text(
                                  'Kích thước:',
                                  style: SafeGoogleFont(
                                    'Quicksand',
                                    fontSize: 24 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.25 * ffem / fem,
                                    color: const Color(0xff007373),
                                  ),
                                ),
                              ),
                              Text(
                                // nhe7B (5:677)
                                kichThuoc,
                                style: SafeGoogleFont(
                                  'Quicksand',
                                  fontSize: 24 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.25 * ffem / fem,
                                  color: const Color(0xff993300),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupuf5bmhb (NufAc46LzaqfsD1nivuf5b)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 0 * fem, 50 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // ngiJBj (5:678)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 71 * fem, 0 * fem),
                                child: Text(
                                  'Đơn giá:',
                                  style: SafeGoogleFont(
                                    'Quicksand',
                                    fontSize: 24 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.25 * ffem / fem,
                                    color: const Color(0xff007373),
                                  ),
                                ),
                              ),
                              Container(
                                // pQy (5:679)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 13 * fem, 0 * fem),
                                child: Text(
                                  donGia.toString(),
                                  style: SafeGoogleFont(
                                    'Quicksand',
                                    fontSize: 24 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.25 * ffem / fem,
                                    color: const Color(0xff993300),
                                  ),
                                ),
                              ),
                              Text(
                                // wEh (5:680)
                                'VND',
                                style: SafeGoogleFont(
                                  'Quicksand',
                                  fontSize: 22 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.25 * ffem / fem,
                                  color: const Color(0xff993300),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupipgvtQq (NufAitEJGDHeX4XYRYiPGV)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 0 * fem, 25 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // slngbnpZP (5:681)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 7 * fem, 0 * fem),
                                child: Text(
                                  'Số lượng bán:',
                                  style: SafeGoogleFont(
                                    'Quicksand',
                                    fontSize: 24 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.25 * ffem / fem,
                                    color: const Color(0xff007373),
                                  ),
                                ),
                              ),
                              Text(
                                // lyM3X (5:682)
                                donVitinh,
                                style: SafeGoogleFont(
                                  'Quicksand',
                                  fontSize: 24 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.25 * ffem / fem,
                                  color: const Color(0xff993300),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // mt6Wu (5:683)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 0 * fem, 15 * fem),
                          child: Text(
                            'Mô tả:',
                            style: SafeGoogleFont(
                              'Quicksand',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1 * ffem / fem,
                              color: const Color(0xff007373),
                            ),
                          ),
                        ),
                        Container(
                          // lthcungtruynthngcangidnvitnam1 (5:684)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 0 * fem, 0 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 289 * fem,

                          ),
                          child: Text(
                            moTa,

                            style: SafeGoogleFont(
                              'Quicksand',

                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.25 * ffem / fem,
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
    );
  }
}
