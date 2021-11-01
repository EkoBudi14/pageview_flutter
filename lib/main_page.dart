import 'package:flutter/material.dart';

bool isSelected = true;
Color colorss = Color(0xFF695CD5);
Color colorss2 = Color(0xFFC4C4C4);

PageController _pageController = new PageController(
  keepPage: true,
);

int _currentIndex = 0;

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IsiIndikator(),
      ),
    );
  }
}

class IsiIndikator extends StatefulWidget {
  @override
  _IsiIndikatorState createState() => _IsiIndikatorState();
}

class _IsiIndikatorState extends State<IsiIndikator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (indexPage) {
              setState(() {
                _currentIndex = indexPage;
              });
            },
            children: [
              Container(
                child: Center(
                  child: Text("page satu"),
                ),
              ),
              Container(
                child: Center(
                  child: Text("page satu"),
                ),
              ),
            ],
          ),
        ),
        Indicator(),
      ],
    );
  }
}

class Indicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget circleBar(bool isActive) {
    //   return AnimatedContainer(
    //     duration: Duration(milliseconds: 150),
    //     margin: EdgeInsets.symmetric(horizontal: 8),
    //     height: 8,
    //     width: 8,
    //     decoration: BoxDecoration(
    //         color: isActive ? Colors.blue : Colors.grey,
    //         borderRadius: BorderRadius.all(Radius.circular(12))),
    //   );
    // }

    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // ignore: sdk_version_ui_as_code
                GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(0,
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeIn);
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 150),
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        color: _currentIndex == 0 ? Colors.blue : Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(1,
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeIn);
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 150),
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: _currentIndex == 1 ? Colors.blue : Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
