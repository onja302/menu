import 'package:flutter/material.dart';

final Color backgroundColor = Color(0xFF4A4A58);
class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 3000);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(

          children: <Widget> [
            menu(context),
            dashboard(context),
          ],
      ),
    );
  }
  Widget menu(context){

  return Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: Align(
      alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Text("Dashboard", style: TextStyle(color: Colors.white, fontSize: 20)),
          SizedBox(height:10),
          Text("Messages", style: TextStyle(color: Colors.white, fontSize: 20)),
          SizedBox(height:10),
          Text("Utility Bills", style: TextStyle(color: Colors.white, fontSize: 20)),
          SizedBox(height:10),
          Text("Funds Transfer", style: TextStyle(color: Colors.white, fontSize: 20)),
          SizedBox(height:10),
           Text("Branches", style: TextStyle(color: Colors.white, fontSize: 20)),
        ],
      ),
    ),
      //https://www.youtube.com/watch?v=VzuHfHyJcuI
     
  );
}

Widget dashboard(context){
  // ignore: missing_required_param
  return AnimatedPositioned(
        duration: duration,
        top: isCollapsed ? 0: 0.2 * screenHeight,
        bottom: isCollapsed ? 0: 0.2 * screenWidth,
        left: isCollapsed ? 0: 0.6 * screenWidth,
        right: isCollapsed ? 0: -0.4 * screenWidth,
      child: Material(
              animationDuration: duration,
              borderRadius: BorderRadius.all(Radius.circular(40)),
              elevation: 8,
              color: backgroundColor,
              child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      physics: ClampingScrollPhysics(),
                              child: Container( width: 0,
                  padding: EdgeInsets.only(left: 16, right: 16, top: 48),
                      child: Column(
                          children: <Widget> [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                  InkWell(child: Icon(Icons.menu, color: Colors.white), onTap: (){
                                    setState((){
                                      isCollapsed = !isCollapsed;
                                    });
                                  },
                                  ),
                                  Text('My Cards', style: TextStyle(fontSize: 24, color: Colors.white)),
                                  Icon(Icons.settings, color: Colors.white),
                                ],),
                                PageView(
                                      controller: PageController(viewportFraction: 0.8),
                                      scrollDirection: Axis.horizontal,
                                      pageSnapping: true,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.symmetric(horizontal: 8),
                                          color: Colors.redAccent,
                                          width: 100,
                                        ),
                                        Container(
                                          margin: const EdgeInsets.symmetric(horizontal: 8),
                                          color: Colors.blueAccent,
                                          width: 100,
                                        ),
                                        Container(
                                          margin: const EdgeInsets.symmetric(horizontal: 8),
                                          color: Colors.greenAccent,
                                          width: 100,
                                        ),

                                    ],)
                          ]
                  ),
                ),
              ),
    ),
  );
}

}




