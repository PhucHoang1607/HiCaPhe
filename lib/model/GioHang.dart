import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

class GioHangKH {
  final double donGia;
  final String id;
  final String idCate;
  final double soluong;
  final double thanhTien;
  final String uid; // Thêm trường mới này

  GioHangKH(
      this.donGia,
      this.id,
      this.idCate,
      this.soluong,
      this.thanhTien,
      this.uid, // Thêm vào constructor
      );

  static Future<void> moveCartToBill() async {
    CollectionReference cartCollection = FirebaseFirestore.instance.collection('Cart');
    CollectionReference billCollection = FirebaseFirestore.instance.collection('Bill');

    try {
      QuerySnapshot cartSnapshot = await cartCollection.get();

      if (cartSnapshot.docs.isNotEmpty) {
        // Thêm dữ liệu từ giỏ hàng vào bảng Bill
        for (QueryDocumentSnapshot doc in cartSnapshot.docs) {
          Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
          String ngaydathang = DateFormat('dd/MM/yyyy HH:mm:ss').format(DateTime.now());
          final FirebaseFirestore firestore = FirebaseFirestore.instance;
          User? user = FirebaseAuth.instance.currentUser;
          if (user == null) {
            // Xử lý trường hợp người dùng chưa đăng nhập
            return;
          }
          String uid = user.uid;
          DocumentSnapshot Users = await firestore.collection("Users").doc(uid).get();
          String Uid = Users.id;
          final trangthai = " Đã đặt hàng";
          final phuongThucThanhToan = "Tiền mặt";
          await billCollection.add({
            'donGia': data['donGia'],
            'id': data['id'],
            'idCate': data['idCate'],
            'soluong': data['soluong'],
            'thanhTien': data['thanhTien'],
            'ngayDH': ngaydathang,
            'uid': Uid,
            'tinhTrang': trangthai,
            'phuongThucThanhToan': phuongThucThanhToan,
            // ... Thêm các trường khác nếu cần
          });
        }

        // Xóa tất cả dữ liệu từ bảng Cart
        for (QueryDocumentSnapshot doc in cartSnapshot.docs) {
          await doc.reference.delete();
        }

        // In thông báo hoặc thực hiện các bước tiếp theo sau khi chuyển dữ liệu
        print('Chuyển dữ liệu từ Cart sang Bill thành công!');
      } else {
        // Xử lý trường hợp giỏ hàng trống
        print('Giỏ hàng trống!');
      }
    } catch (e) {
      // Xử lý lỗi
      print('Có lỗi xảy ra: $e');
    }
  }

  factory GioHangKH.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return GioHangKH(
      data['donGia'],
      data['id'],
      data['idCate'],
      data['soluong'],
      data['thanhTien'],
      data['uid'],
    );
  }
}
Future<List<GioHangKH>> getCartData() async {
  CollectionReference cartCollection = FirebaseFirestore.instance.collection('Cart');
  QuerySnapshot cartSnapshot = await cartCollection.get();

  List<GioHangKH> gioHangList = [];

  for (QueryDocumentSnapshot doc in cartSnapshot.docs) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    gioHangList.add(
        GioHangKH(
          data['donGia'],
          data['id'],
          data['idCate'],
          data['soluong'],
          data['thanhTien'],
          data['uid'],
        )
    );
  }
  return gioHangList;
}


