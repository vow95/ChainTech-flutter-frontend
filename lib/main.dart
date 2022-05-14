import 'package:chaintech/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './page/qr_create_page.dart';
import 'page/qr_scan_page.dart';
// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(fontFamily: 'SF Pro Display'),
//       title: 'Buy Tickets',
//       home: HomePage(),
//     );
//   }
// }

void main() {
  WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'QR Code Scanner';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        //theme: ThemeData.dark(),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  // final String title;

  // const MainPage({
  //   required this.title,
  // });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final children = [
    //QRScanPage(),
   
    QRCreatePage(),
     HomePage(),
    QRCreatePage(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: children[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          backgroundColor: Color(0xFF162A49),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner),
          
              label: 'Scan QR Code',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: 'My Assets',
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.qr_code),
              label: 'Create QR Code',
            ),
          ],
          onTap: (index) => setState(() => this.index = index),
           selectedItemColor: Color(0xFFdb3954),
           unselectedItemColor: Colors.white,
        ),
      );
}
