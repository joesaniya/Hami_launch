import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hami_launch/profile_page/post.dart';
import 'package:hami_launch/profile_page/projects.dart';
import 'package:hami_launch/profile_page/token.dart';
import 'package:hami_launch/theme/appcolor.dart';


class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Container(
                  height: size.height * 0.40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/background1.jpg"), 
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[

                      SizedBox(
                        height: 36,
                      ),

                      CircleAvatar(
                        radius: 48,
                        backgroundImage: AssetImage("assets/images/lion_meta.png"),
                      ),

                      SizedBox(
                        height: 16,
                      ),

                      Text(
                        "Hami Launch",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),

                      SizedBox(
                        height: 4,
                      ),

                      Text(
                        "Hami",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),

                      Expanded(
                        child: Container(),
                      ),

                      Container(
                        height: 64,
                        color: Colors.black.withOpacity(0.4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[

                            Expanded(
                              child: Container(),
                            ),

                            Container(
                              width: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[

                                  Text(
                                    "FRIENDS", 
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 12,
                                    ),
                                  ),
                                  
                                  SizedBox(
                                    height: 4,
                                  ),

                                  Text(
                                    "2307", 
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              width: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[

                                  Text(
                                    "FOLLOWING", 
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 12,
                                    ),
                                  ),
                                  
                                  SizedBox(
                                    height: 4,
                                  ),

                                  Text(
                                    "364", 
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              width: 110,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[

                                  Text(
                                    "FOLLOWER", 
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 12,
                                    ),
                                  ),
                                  
                                  SizedBox(
                                    height: 4,
                                  ),

                                  Text(
                                    "175", 
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            Expanded(
                              child: Container(),
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                // Material(
                //   elevation: 1,
                //   child: Container(
                //     height: 56,
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: <Widget>[

                //         Icon(
                //           Icons.web,
                //           color: Colors.black,
                //           size: 28,
                //         ),

                //         Icon(
                //           Icons.image,
                //           color: Colors.black,
                //           size: 28,
                //         ),

                //         Icon(
                //           Icons.play_circle_outline,
                //           color: Colors.black,
                //           size: 28,
                //         ),

                //       ],
                //     ),
                //   ),
                // ),

                // DefaultTabController
                // (
                //   length: 3, 
                //   child: SizedBox
                //   (
                //     height: 100,
                //     child: Column
                //     (
                //       children: 
                //       [
                //         Container(
                //           height: 56,
                //           color: Appcolor.darkviolte6,
                //           child: TabBar
                //           (
                //             tabs: 
                //             [
                //               Tab
                //               (
                //                 text: "Posts",
                //                 icon: Icon(Icons.image),
                //               ),

                //               //2
                //               Tab
                //               (
                //                 text: "Tokens",
                //                 icon: Icon(Icons.image),
                //               ),


                //               //3
                //               Tab
                //               (
                //                 text: "Projects",
                //                 icon: Icon(Icons.image),
                //               ),
                      
                //             ]
                //           ),
                //         ),

                //         Expanded
                //         (
                //           child: TabBarView
                //           (
                //             children: 
                //             [
                //               Container(
                //                 color: Colors.green,
                //                 height: 400,
                //               ),
                //               Container(
                //                 color: Colors.yellow,
                //                 height: size.height * 0.60 - 56,
                //               ),

                //         //3
                //         Container(
                //   height: size.height * 0.60 - 56,
                //   color: Colors.blue,
                //   padding: EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 24,),
                //   child: GridView.count(
                //     crossAxisCount: 3,
                //     crossAxisSpacing: 8,
                //     mainAxisSpacing: 8,
                //     physics: BouncingScrollPhysics(),
                //     children: List.generate(12, (index) {
                //       return Container(
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.all(
                //             Radius.circular(10),
                //           ),
                //           image: DecorationImage(
                //             image: AssetImage
                //             (
                //               'assets/images/weth.png'
                //               // "assets/images/photo_" + index.toString() + ".jpg"
                //             ), 
                //             fit: BoxFit.cover,
                //           ),
                //         ),
                //       );
                //     }),
                //   ),
                // ),
                //             ],
                //           )
                //         )
                //       ],
                //     ),
                //   )
                // ),

                Container
                      (
                        height: MediaQuery.of(context).size.height*0.500,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: DefaultTabController(
                          length: 3,
                          child: Column(
                            children: <Widget>[
                              Container(
                                constraints: BoxConstraints.expand(height: 50),
                                child: TabBar(
                                  unselectedLabelColor: Colors.redAccent,
                                  indicatorSize: TabBarIndicatorSize.tab,
                                  indicator: BoxDecoration
                                  (
                                    gradient: LinearGradient
                                    (
                                      colors: [Colors.redAccent, Colors.orangeAccent]
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.redAccent
                                  ),


                                  // indicatorColor: Colors.pinkAccent,
                                  // indicator: UnderlineTabIndicator(
                                  //   borderSide: BorderSide
                                  //   (
                                  //     width: 1.0,
                                  //     color: Colors.pinkAccent
                                  //   ),
                                  //   insets: EdgeInsets.symmetric(horizontal:16.0)
                                  // ),
                                  // indicatorPadding: EdgeInsets.all(80),
                                  tabs: [
                                    Tab
                                    (
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(FontAwesomeIcons.coins),
                                          SizedBox
                                          (
                                            width: 6,
                                          ),
                                          Text("Token"),
                                        ],
                                      ),
                                    ),
                                  ),

                                  //2
                                  Tab
                                    (
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(FontAwesomeIcons.coins),
                                          SizedBox
                                          (
                                            width: 6,
                                          ),
                                          Text("Projects"),
                                        ],
                                      ),
                                    ),
                                  ),

                                  //3
                                  Tab
                                    (
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(FontAwesomeIcons.coins),
                                          SizedBox
                                          (
                                            width: 6,
                                          ),
                                          Text("Posts"),
                                        ],
                                      ),
                                    ),
                                  ),

                                  // Tab
                                  // (
                                  //   text: "Token"
                                  // ),
                                  // Tab(text: "Projects"),
                                  // Tab(text: "Posts"),
                                ]),
                              ),
                              Expanded(
                                child: Container(
                                  child: TabBarView(children: [
                                    Container
                                    (
                                      height: size.height * 0.60 - 56,
                                      padding: EdgeInsets.only(left: 16, right: 16, top: 0, 
                                      // bottom: 24,
                                      ),
                                      child: GridView.count(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 8,
                                        mainAxisSpacing: 8,
                                        physics: BouncingScrollPhysics(),
                                        children: List.generate(12, (index) {
                                          return Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage
                                                (
                                                  'assets/images/weth.png'
                                                  // "assets/images/photo_" + index.toString() + ".jpg"
                                                ), 
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                    

                                    //2
                                    Container
                                    (
                                      height: size.height * 0.60 - 56,
                                      padding: EdgeInsets.only(left: 16, right: 16, top: 0, 
                                      // bottom: 24,
                                      ),
                                      child: GridView.count(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 8,
                                        mainAxisSpacing: 8,
                                        physics: BouncingScrollPhysics(),
                                        children: List.generate(12, (index) {
                                          return Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage
                                                (
                                                  'assets/images/weth.png'
                                                  // "assets/images/photo_" + index.toString() + ".jpg"
                                                ), 
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          );
                                        }),
                                      ),
                                    ),



                                    //3
                                    Container
                                    (
                                      height: size.height * 0.60 - 56,
                                      padding: EdgeInsets.only(left: 16, right: 16, top: 0, 
                                      // bottom: 24,
                                      ),
                                      child: GridView.count(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 8,
                                        mainAxisSpacing: 8,
                                        physics: BouncingScrollPhysics(),
                                        children: List.generate(12, (index) {
                                          return Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage
                                                (
                                                  'assets/images/weth.png'
                                                  // "assets/images/photo_" + index.toString() + ".jpg"
                                                ), 
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  ]),
                                ),
                              )
                            ],
                          ),
                        ),
                      )

                // Container(
                //   height: size.height * 0.60 - 56,
                //   padding: EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 24,),
                //   child: GridView.count(
                //     crossAxisCount: 3,
                //     crossAxisSpacing: 8,
                //     mainAxisSpacing: 8,
                //     physics: BouncingScrollPhysics(),
                //     children: List.generate(12, (index) {
                //       return Container(
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.all(
                //             Radius.circular(10),
                //           ),
                //           image: DecorationImage(
                //             image: AssetImage
                //             (
                //               'assets/images/weth.png'
                //               // "assets/images/photo_" + index.toString() + ".jpg"
                //             ), 
                //             fit: BoxFit.cover,
                //           ),
                //         ),
                //       );
                //     }),
                //   ),
                // ),

              ],
            ),
          
            Positioned(
              top: 32,
              left: 16,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Profile2()),
                  // );
                },
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}