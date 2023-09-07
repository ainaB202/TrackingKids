import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/utils.dart';

class Attendance extends StatelessWidget {
  static String routeName = 'Attendance';

  const Attendance({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // attendance3sd (21:738)
        padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 1 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // headerxjh (21:595)
              padding:
                  EdgeInsets.fromLTRB(23 * fem, 17 * fem, 23 * fem, 15 * fem),
              width: 375 * fem,
              height: 70 * fem,
              decoration: BoxDecoration(
                color: Color(0xffede985),
              ),
              child: Container(
                // group10hBV (21:597)
                width: 208 * fem,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // attendanceEhD (21:599)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 13 * fem, 0 * fem),
                      width: 38 * fem,
                      height: 38 * fem,
                      child: Image.asset(
                        'assets/into/images/attendance.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      // attendanceZUb (21:598)
                      'ATTENDANCE',
                      style: SafeGoogleFont(
                        'Open Sans',
                        fontSize: 24 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.3625 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // classanddateh51 (21:600)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 12 * fem),
              padding:
                  EdgeInsets.fromLTRB(24 * fem, 11 * fem, 26 * fem, 7 * fem),
              width: 375 * fem,
              height: 39 * fem,
              decoration: BoxDecoration(
                color: Color(0xbf0c46c4),
              ),
              child: Container(
                // group12PTd (21:602)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // class3aLNs (21:603)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 143 * fem, 0 * fem),
                      child: RichText(
                        text: TextSpan(
                          style: SafeGoogleFont(
                            'Open Sans',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.3618164062 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                          children: [
                            TextSpan(
                              text: 'Class : ',
                              style: SafeGoogleFont(
                                'Open Sans',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.3625 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                            TextSpan(
                              text: '3 A',
                              style: SafeGoogleFont(
                                'Open Sans',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3625 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    RichText(
                      // date121221zVM (21:604)
                      text: TextSpan(
                        style: SafeGoogleFont(
                          'Open Sans',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                        children: [
                          TextSpan(
                            text: 'Date: ',
                          ),
                          TextSpan(
                            text: ' 12/12/21',
                            style: SafeGoogleFont(
                              'Open Sans',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3625 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // autogroupnzvbcFq (6jD5mUobqsiYQ6RtCnNzvB)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 3 * fem),
              padding:
                  EdgeInsets.fromLTRB(29 * fem, 4 * fem, 28 * fem, 0 * fem),
              width: double.infinity,
              height: 18 * fem,
              decoration: BoxDecoration(
                color: Color(0xbf0c46c4),
              ),
              child: Container(
                // studentattnheaderWMD (21:605)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // studentnamerAB (21:607)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 138 * fem, 0 * fem),
                      child: Text(
                        'Student Name',
                        style: SafeGoogleFont(
                          'Open Sans',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Container(
                      // presentxyu (21:608)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 28 * fem, 0 * fem),
                      child: Text(
                        'Present',
                        style: SafeGoogleFont(
                          'Open Sans',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    Text(
                      // absentGzb (21:609)
                      'Absent',
                      style: SafeGoogleFont(
                        'Open Sans',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.3625 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // dataRMh (21:729)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 2 * fem),
              width: double.infinity,
              height: 46 * fem,
              child: Container(
                // group14AaB (21:730)
                padding:
                    EdgeInsets.fromLTRB(23 * fem, 15 * fem, 42 * fem, 12 * fem),
                width: double.infinity,
                height: 45 * fem,
                decoration: BoxDecoration(
                  color: Color(0x19c4c4c4),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // prajeshshakyaGt7 (21:733)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 155 * fem, 0 * fem),
                      child: Text(
                        'Prajesh Shakya',
                        style: SafeGoogleFont(
                          'Open Sans',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // checkboxcontainern5m (I21:734;21:479)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 48 * fem, 0 * fem),
                      width: 18 * fem,
                      height: 18 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3 * fem),
                        border: Border.all(color: Color(0xff5b58ad)),
                        color: Color(0xffffffff),
                      ),
                    ),
                    Container(
                      // checkboxcontainerVF5 (I21:735;21:479)
                      width: 18 * fem,
                      height: 18 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3 * fem),
                        border: Border.all(color: Color(0xff5b58ad)),
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // autogroupfee3pHM (6jD62Dt356cNRAk8c6FeE3)
              width: double.infinity,
              height: 449 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // homeworkYUF (21:591)
                    left: 165 * fem,
                    top: 30 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 38 * fem,
                        height: 38 * fem,
                        child: Image.asset(
                          'assets/into/images/homework-6Nb.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // examenB (21:592)
                    left: 165 * fem,
                    top: 84 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 38 * fem,
                        height: 38 * fem,
                        child: Image.asset(
                          'assets/into/images/exam-yQT.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // exitmro (21:593)
                    left: 169 * fem,
                    top: 227 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 30 * fem,
                        height: 30 * fem,
                        child: Image.asset(
                          'assets/into/images/exit-Z9h.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // automatic6u5 (21:594)
                    left: 170 * fem,
                    top: 171 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 30 * fem,
                        height: 30 * fem,
                        child: Image.asset(
                          'assets/into/images/automatic-sDH.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // dataEVV (21:617)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Container(
                      width: 375 * fem,
                      height: 46 * fem,
                      child: Container(
                        // group14aJT (21:618)
                        padding: EdgeInsets.fromLTRB(
                            23 * fem, 15 * fem, 42 * fem, 12 * fem),
                        width: double.infinity,
                        height: 45 * fem,
                        decoration: BoxDecoration(
                          color: Color(0x19c4c4c4),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // prajeshshakya5W7 (21:621)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 155 * fem, 0 * fem),
                              child: Text(
                                'Prajesh Shakya',
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3625 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // checkboxcontainerBZ9 (I21:622;21:479)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 48 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                            Container(
                              // checkboxcontainerVpj (I21:623;21:479)
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // data2pf (21:631)
                    left: 0 * fem,
                    top: 45 * fem,
                    child: Container(
                      width: 375 * fem,
                      height: 46 * fem,
                      child: Container(
                        // group149uH (21:632)
                        padding: EdgeInsets.fromLTRB(
                            23 * fem, 15 * fem, 42 * fem, 12 * fem),
                        width: double.infinity,
                        height: 45 * fem,
                        decoration: BoxDecoration(
                          color: Color(0x19c4c4c4),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // prajeshshakyaT9H (21:635)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 155 * fem, 0 * fem),
                              child: Text(
                                'Prajesh Shakya',
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3625 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // checkboxcontainerNn3 (I21:636;21:479)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 48 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                            Container(
                              // checkboxcontainer6CF (I21:637;21:479)
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // dataS1D (21:638)
                    left: 0 * fem,
                    top: 90 * fem,
                    child: Container(
                      width: 375 * fem,
                      height: 46 * fem,
                      child: Container(
                        // group14Axo (21:639)
                        padding: EdgeInsets.fromLTRB(
                            23 * fem, 15 * fem, 42 * fem, 12 * fem),
                        width: double.infinity,
                        height: 45 * fem,
                        decoration: BoxDecoration(
                          color: Color(0x19c4c4c4),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // prajeshshakyahSw (21:642)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 155 * fem, 0 * fem),
                              child: Text(
                                'Prajesh Shakya',
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3625 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // checkboxcontainerpnT (I21:643;21:479)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 48 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                            Container(
                              // checkboxcontainerkAK (I21:644;21:479)
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // dataHR9 (21:645)
                    left: 0 * fem,
                    top: 135 * fem,
                    child: Container(
                      width: 375 * fem,
                      height: 46 * fem,
                      child: Container(
                        // group14pfy (21:646)
                        padding: EdgeInsets.fromLTRB(
                            23 * fem, 15 * fem, 42 * fem, 12 * fem),
                        width: double.infinity,
                        height: 45 * fem,
                        decoration: BoxDecoration(
                          color: Color(0x19c4c4c4),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // prajeshshakyaLeK (21:649)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 155 * fem, 0 * fem),
                              child: Text(
                                'Prajesh Shakya',
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3625 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // checkboxcontainers8T (I21:650;21:479)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 48 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                            Container(
                              // checkboxcontainerzD5 (I21:651;21:479)
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // datajRZ (21:652)
                    left: 0 * fem,
                    top: 179 * fem,
                    child: Container(
                      width: 375 * fem,
                      height: 46 * fem,
                      child: Container(
                        // group144yd (21:653)
                        padding: EdgeInsets.fromLTRB(
                            23 * fem, 15 * fem, 42 * fem, 12 * fem),
                        width: double.infinity,
                        height: 45 * fem,
                        decoration: BoxDecoration(
                          color: Color(0x19c4c4c4),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // prajeshshakyazMV (21:656)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 155 * fem, 0 * fem),
                              child: Text(
                                'Prajesh Shakya',
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3625 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // checkboxcontainerWaj (I21:657;21:479)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 48 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                            Container(
                              // checkboxcontainerqN7 (I21:658;21:479)
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // dataNN3 (21:659)
                    left: 0 * fem,
                    top: 224 * fem,
                    child: Container(
                      width: 375 * fem,
                      height: 46 * fem,
                      child: Container(
                        // group14K2P (21:660)
                        padding: EdgeInsets.fromLTRB(
                            23 * fem, 15 * fem, 42 * fem, 12 * fem),
                        width: double.infinity,
                        height: 45 * fem,
                        decoration: BoxDecoration(
                          color: Color(0x19c4c4c4),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // prajeshshakyaDtT (21:663)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 155 * fem, 0 * fem),
                              child: Text(
                                'Prajesh Shakya',
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3625 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // checkboxcontainer8Ej (I21:664;21:479)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 48 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                            Container(
                              // checkboxcontainer2qu (I21:665;21:479)
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // dataZqq (21:666)
                    left: 0 * fem,
                    top: 268 * fem,
                    child: Container(
                      width: 375 * fem,
                      height: 46 * fem,
                      child: Container(
                        // group14WFH (21:667)
                        padding: EdgeInsets.fromLTRB(
                            23 * fem, 15 * fem, 42 * fem, 12 * fem),
                        width: double.infinity,
                        height: 45 * fem,
                        decoration: BoxDecoration(
                          color: Color(0x19c4c4c4),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // prajeshshakyaRd9 (21:670)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 155 * fem, 0 * fem),
                              child: Text(
                                'Prajesh Shakya',
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3625 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // checkboxcontainerwbV (I21:671;21:479)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 48 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                            Container(
                              // checkboxcontainerTpj (I21:672;21:479)
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // dataodh (21:673)
                    left: 0 * fem,
                    top: 313 * fem,
                    child: Container(
                      width: 375 * fem,
                      height: 46 * fem,
                      child: Container(
                        // group14kYw (21:674)
                        padding: EdgeInsets.fromLTRB(
                            23 * fem, 15 * fem, 42 * fem, 12 * fem),
                        width: double.infinity,
                        height: 45 * fem,
                        decoration: BoxDecoration(
                          color: Color(0x19c4c4c4),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // prajeshshakyaTy9 (21:677)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 155 * fem, 0 * fem),
                              child: Text(
                                'Prajesh Shakya',
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3625 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // checkboxcontainerPM1 (I21:678;21:479)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 48 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                            Container(
                              // checkboxcontainer727 (I21:679;21:479)
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // dataS4P (21:680)
                    left: 0 * fem,
                    top: 358 * fem,
                    child: Container(
                      width: 375 * fem,
                      height: 46 * fem,
                      child: Container(
                        // group14Zuh (21:681)
                        padding: EdgeInsets.fromLTRB(
                            23 * fem, 15 * fem, 42 * fem, 12 * fem),
                        width: double.infinity,
                        height: 45 * fem,
                        decoration: BoxDecoration(
                          color: Color(0x19c4c4c4),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // prajeshshakyaHKu (21:684)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 155 * fem, 0 * fem),
                              child: Text(
                                'Prajesh Shakya',
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3625 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // checkboxcontainerop3 (I21:685;21:479)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 48 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                            Container(
                              // checkboxcontainer8LX (I21:686;21:479)
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // dataGBq (21:687)
                    left: 0 * fem,
                    top: 403 * fem,
                    child: Container(
                      width: 375 * fem,
                      height: 46 * fem,
                      child: Container(
                        // group14PnF (21:688)
                        padding: EdgeInsets.fromLTRB(
                            23 * fem, 15 * fem, 42 * fem, 12 * fem),
                        width: double.infinity,
                        height: 45 * fem,
                        decoration: BoxDecoration(
                          color: Color(0x19c4c4c4),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // prajeshshakyai3q (21:691)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 155 * fem, 0 * fem),
                              child: Text(
                                'Prajesh Shakya',
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3625 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // checkboxcontainerEns (I21:692;21:479)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 48 * fem, 0 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                            Container(
                              // checkboxcontainerZq9 (I21:693;21:479)
                              width: 18 * fem,
                              height: 18 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3 * fem),
                                border: Border.all(color: Color(0xff5b58ad)),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
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
    );
  }
}

SafeGoogleFont(String s,
    {required double fontSize,
    required FontWeight fontWeight,
    required double height,
    required Color color}) {}
