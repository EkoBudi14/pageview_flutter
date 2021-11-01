// import 'package:flutter/material.dart';

// class GridMenu extends StatefulWidget {
//   const GridMenu({Key? key}) : super(key: key);

//   @override
//   _GridMenuState createState() => _GridMenuState();
// }

// class _GridMenuState extends State<GridMenu> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           title: _currentIndex == 0
//               ? Text(
//                   "Berita Kesehatan",
//                   style: TextStyle(color: Colors.black),
//                 )
//               : Text(
//                   "Tips Kesehatan",
//                   style: TextStyle(color: Colors.black),
//                 ),
//           centerTitle: true,
//           leading: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: Icon(
//                 Icons.arrow_back_ios_new_outlined,
//                 color: Colors.black,
//                 size: 14,
//               )),
//         ),
//         body: IsiBerita(),
//         bottomNavigationBar: BottomNavigationBar(
//           elevation: 12,
//           items: bottomNavBarItem,
//           unselectedItemColor: Colors.black26,
//           selectedItemColor: primaryColor,
//           iconSize: 32,
//           onTap: (index) {
//             setState(() {
//               if (index == 0) {
//                 Navigator.pushNamed(context, '/mainmenu');
//               } else if (index == 1) {
//                 Navigator.pushNamed(context, '/reminder');
//               } else if (index == 2) {
//                 Navigator.pushNamed(context, '/datapribadi');
//               }
//             });
//           },
//         ),
//       ),
//     );
//   }
// }
