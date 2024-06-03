import 'package:flutter/material.dart';
import 'package:myapp/page-1/GioiThieu2.dart';
import 'package:myapp/utils.dart';
import 'package:page_transition/page_transition.dart';

class GioiThieu1 extends StatelessWidget {
  const GioiThieu1({super.key});

  @override
  Widget build(BuildContext context) {
    // double baseWidth = 360;

    return SafeArea(child: SizedBox(
      width: double.infinity,
      child: Container(
        // gioithieu1KPw (40:388)
        padding: const EdgeInsets.fromLTRB(32, 8, 30, 23),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/hinhnen2-bg.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // logomauKYM (39:851)
              margin: const EdgeInsets.fromLTRB(0, 0, 2, 33),
              width: 100,
              height: 100,
              child: Image.asset(
                'assets/page-1/images/logomau.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // txtilgioithieu191b (39:849)
              margin: const EdgeInsets.fromLTRB(2, 0, 0, 47),
              child: Text(
                'Nguyên chất',
                style: SafeGoogleFont (
                  'Quicksand',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 1.25,
                  letterSpacing: 1,
                  color: const Color(0xff993300),
                ),
              ),
            ),
            Container(
              // imggioithieu1Nuw (42:404)
              margin: const EdgeInsets.fromLTRB(0, 0, 1, 138),
              width: 227,
              height: 215,
              child: Image.asset(
                'assets/page-1/images/imggioithieu1.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // txdegioithieu1TwP (42:392)
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 34),
              constraints: const BoxConstraints (
                maxWidth: 298,
              ),
              child: Text(
                'Nguyên liệu được lấy từ thiên nhiên và tinh chế ra các sản phẩm thơm ngon mà vẫn giữ nguyên hương vị gộc của nguyên liệu',
                style: SafeGoogleFont (
                  'Quicksand',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 1.25,
                  letterSpacing: 1,
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // autogroupqll94AV (HWRR5RD8NDTQ4rfvd8qLL9)
              margin: const EdgeInsets.fromLTRB(112, 0, 113, 10),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // oval31Xpm (42:396)
                    width: 13,
                    height: 13,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(6.5),
                      color: const Color(0xffffffff),
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Container(
                    // oval21oXP (42:397)
                    width: 13,
                    height: 13,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(6.5),
                      color: const Color(0x7fffffff),
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Container(
                    // oval11T69 (42:398)
                    width: 13,
                    height: 13,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(6.5),
                      color: const Color(0x7fffffff),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupsf7xZQ5 (HWRRCafrmgN76Mxz1vsf7X)
              margin: const EdgeInsets.fromLTRB(0, 0, 1, 0),
              width: 297,
              height: 42,
              decoration: BoxDecoration (
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0, 4),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const GioiThieu2()));
                },
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Center(
                  child: Text(
                    'Tiếp theo',
                    style: SafeGoogleFont (
                      'Quicksand',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.25,
                      letterSpacing: 1,
                      color: const Color(0xff993300),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}