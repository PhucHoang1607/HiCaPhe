import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:myapp/method/thongbao.dart';
import 'package:myapp/page-1/QuanLyKH.dart';
import 'package:myapp/page-1/TrangChuKH.dart';
import 'package:myapp/page-1/TrangChuNVNew.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/page-1/GioiThieu1.dart';
// import 'package:myapp/page-1/CapNhatSanPham.dart';
// import 'package:myapp/page-1/ChiTietNguyenLieu.dart';
import 'package:myapp/page-1/dangki.dart';
import 'package:myapp/page-1/dangnhap.dart';
// import 'package:myapp/page-1/DanhMucSanPham.dart';
// import 'package:myapp/page-1/ThemSanPham.dart';
// import 'package:myapp/utils.dart';
// import 'package:myapp/page-1/.dart';
// import 'package:myapp/page-1/-bxm.dart';
// import 'package:myapp/page-1/-ard.dart';
// import 'package:myapp/page-1/-cqF.dart';
// import 'package:myapp/page-1/f5dab2.dart';
// import 'package:myapp/page-1/ffffff.dart';
// import 'package:myapp/page-1/c0c0c0.dart';
// import 'package:myapp/page-1/d833.dart';
// import 'package:myapp/page-1/sign-up.dart';
// import 'package:myapp/page-1/sign-up-email.dart';
// import 'package:myapp/page-1/sign-up-password.dart';
// import 'package:myapp/page-1/sign-up-confirm-password.dart';
// import 'package:myapp/page-1/verification-alert.dart';
// import 'package:myapp/page-1/login.dart';
// import 'package:myapp/page-1/login-username.dart';
// import 'package:myapp/page-1/login-password.dart';
// import 'package:myapp/page-1/home.dart';
// import 'package:myapp/page-1/trangchu.dart';
// import 'package:myapp/page-1/danhmucsanpham-caphe.dart';
// import 'package:myapp/page-1/themsuaxoathongtinsp.dart';
// import 'package:myapp/page-1/danhmucsanpham-tra.dart';
// import 'package:myapp/page-1/danhmucsanpham-hat.dart';
// import 'package:myapp/page-1/danhmucsanpham-banh.dart';
// import 'package:myapp/page-1/danhmucsanpham-banh-xTj.dart';
// import 'package:myapp/page-1/YeuThich.dart';
// import 'package:myapp/page-1/danhmucsanpham-quatang.dart';
// import 'package:myapp/page-1/menu.dart';
// import 'package:myapp/page-1/menu-eph.dart';
// import 'package:myapp/page-1/drink-menu-coffee.dart';
// import 'package:myapp/page-1/drink-menu-chocolate.dart';
// import 'package:myapp/page-1/drink-menu-others.dart';
// import 'package:myapp/page-1/your-order-recently.dart';
// import 'package:myapp/page-1/your-order-past-orders.dart';
// import 'package:myapp/page-1/favorites.dart';
// import 'package:myapp/page-1/payment.dart';
// import 'package:myapp/page-1/payment-address.dart';
// import 'package:myapp/page-1/frame-24.dart';
// import 'package:myapp/page-1/frame-31.dart';
// import 'package:myapp/page-1/payment-cJd.dart';
// import 'package:myapp/page-1/payment-M9T.dart';
// import 'package:myapp/page-1/attribute-drink-details.dart';
// import 'package:myapp/page-1/attribute-drink-details-XEZ.dart';
// import 'package:myapp/page-1/attribute-drink-details-hV3.dart';
// import 'package:myapp/page-1/attribute-drink-details-favorite.dart';
// import 'package:myapp/page-1/payment-success.dart';
// import 'package:myapp/page-1/payment-success-mbo.dart';
import 'package:myapp/page-1/chaomung.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myapp/page-1/ThanhToanThanhCong.dart';
import 'package:myapp/user_auth/services/UserManagement.dart';
// import 'firebase_options.dart';
import 'firebase_options.dart';
import 'page-1/TrangChuNew.dart';
import 'package:flutter/foundation.dart';
// import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth

// void main() => runApp(MyApp());
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
	WidgetsFlutterBinding.ensureInitialized();
	if (kIsWeb) {
		await Firebase.initializeApp(
			options: const FirebaseOptions(
				apiKey: "AIzaSyBTO49_sM21B9bqvHFzpFjn2-an2NWQKiM",
				appId: "1:443225333655:android:e5779c592a429d558d6ed2",
				messagingSenderId: "443225333655",
				projectId: "hicaphe",
				// Your web Firebase config options
			),
		);
	} else {
		await Firebase.initializeApp();
	}
	await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
	// thông báo ngoài ứng dụng
	await FirebaseApi().initNotifications();
	runApp(MyApp());
}

class MyApp extends StatelessWidget {
	// const MyApp({super.key});
	UserManagement userObj = new UserManagement();


	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Flutter',
			debugShowCheckedModeBanner: false,
			navigatorKey: navigatorKey,
			routes: {
				'/': (context) => const ChaoMungPage(
					// Here, you can decide whether to show the LoginPage or HomePage based on user authentication
					child: DangNhap(),
				),
				'/login': (context) => const DangNhap(),
				'/signUp': (context) => const DangKi(),
				'/admin': (context) => TrangChuNew(),
				'/nhanvien': (context) => TrangChuNVNew(),
				'/khachhang': (context) => QuanLyKH(),
				'/notification_screen': (context)=> const SuccessScreen(),

			},
			// theme: ThemeData(
			// 	primarySwatch: Colors.blue,
			// ),
			// home: Scaffold(
			// 	body: Center(
			// 		child: ChaoMung(),
			// 	),
			// ),
		);
	}
}
