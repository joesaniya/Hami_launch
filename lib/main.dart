// @dart=2.9

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hami_launch/profile_page/facebook1.dart';
import 'package:hami_launch/profile_page/facebook_profiel.dart';
import 'package:hami_launch/screen/verifykyc_screen.dart';
import 'package:hami_launch/skeleton_widget/reuseSkeleton.dart';
import 'package:iconsax/iconsax.dart';
import '/profile_page/profile-screen.dart';
import '/screen/AlertScreen.dart';
import '/screen/NotificationPage.dart';
import '/screen/alerts.dart';
import '/screen/homepage.dart';
import '/screen/search-screen.dart';
import '/screen/search.dart';
import '/theme/appcolor.dart';
import 'package:line_icons/line_icons.dart';
import '/widgets/drawer_widget.dart';

import 'Dialogbox/dialog_helper.dart';

void main() => runApp
(
  MyApp()
);
// void main() { 
//   runApp(
//     MaterialApp(
//       color: Appcolor.darkviolte6,
//       home: MyApp(),
//       // home: Scaffold(
//       //   backgroundColor: Appcolor.darkviolte6,
//       // ),
//     ),
//   );
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hami App',
      theme: ThemeData(
          // textTheme: GoogleFonts.latoTextTheme(
          //   Theme.of(context).textTheme
          // ),
          scaffoldBackgroundColor: Appcolor.darkviolte6
        ),
        // home: VerifyKYC(),
      home: RootPage(),
    );
  }
}


class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // List <BottomNavigationBarItem>items = [
  //   BottomNavigationBarItem
  //   (
  //     icon: SvgPicture.asset
  //     (
  //       'assets/icons/home-filled.svg', 
  //         color: Colors.pinkAccent
  //     ), 
  //     label: 'Home'
  //   ),
  //   // BottomNavigationBarItem
  //   // (
  //   //   icon: Icon
  //   //   (
  //   //     LineIcons.home,
  //   //     size: 27,
  //   //   ),
      
  //   //   label: 'home'
  //   // ),
  //   BottomNavigationBarItem(icon: Icon(LineIcons.search,size: 27,),
  //   label: 'search'
  //   // title:Padding(
  //   //   padding: const EdgeInsets.only(top: 8),
  //   //   child: Text("Search",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
  //   // )
  //   ),
  //   BottomNavigationBarItem(icon: Icon(LineIcons.bell,size: 27),
  //   label: 'notifications'
  //   ),
  //   BottomNavigationBarItem(icon: Icon(Icons.alarm,size: 27),
  //   label: 'Alerts'
  //   )
  // ];
  int selectedIndex = 0;
  List <Widget> pages = [
    Homepage(),
    // Search(),->tab
    SearchScreen(),
    NotificationPage(),
    // AlertScreen()
    AlertPage()
  ];

   bool _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  final _advancedDrawerController = AdvancedDrawerController();

   void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }

  @override
  Widget build(BuildContext context)
  {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    return WillPopScope
    (
      child: AdvancedDrawer
      (
        backdropColor: Appcolor.darkviolte6,
        // backdropColor:Appcolor.secondary,
                      // backdropColor: Colors.grey.shade900,
                      controller: _advancedDrawerController,
                      animationCurve: Curves.easeInOut,
                      animationDuration: const Duration(milliseconds: 300),
                      animateChildDecoration: true,
                      rtlOpening: false,
                      disabledGestures: false,
                      childDecoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            // color: Appcolor.darkviolte6,
                            color: Appcolor.secondary,
                            blurRadius: 20.0,
                            spreadRadius: 5.0,
                            offset: Offset(-20.0, 0.0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),

                      drawer: MyDrawer(),
      child:Scaffold(
      key:  _scaffoldKey,
      // drawer: MyDrawer(),
      //myyy
      // drawer: Drawer
      // (
      //   child: BackdropFilter
      //   (
      //     filter: ImageFilter.blur(
      //           sigmaX: 5.0,
      //           sigmaY: 5.0,
      //         ),
      //         child: MyDrawer(),
      //   ),
      // ),
    
      // drawer: StylishDrawer(),
    
      appBar:
      PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: AppBar(
          centerTitle: false,

          leading: IconButton
          (
            color:Colors.white,
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder(
              valueListenable:  _advancedDrawerController,
              builder: (_, value, __ )
              {
                return AnimatedSwitcher
                (
                  duration: Duration(microseconds: 250),
                  child: Icon
                  (
                    value.visible ?Iconsax.close_square : Iconsax.menu,
                          key: ValueKey<bool>(value.visible),
                  ),
                );
              }
            ),
                    
          ),
      
           backgroundColor: Colors.transparent,
           elevation: 0.0,
          //  title: Container
          //  (
          //   height: 30,
          //   width: 300,
          //   // ?color: Colors.grey,
          //   decoration: BoxDecoration
          //   (
          //     color: Appcolor.background,
          //     borderRadius: BorderRadius.all(Radius.circular(20))
          //   ),
          //   child: Row
          //   (
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: 
          //     [
          //       SizedBox
          //       (
          //         width: 10,
          //       ),
          //       Icon(Icons.search),
          //       SizedBox
          //       (
          //         width: 20,
          //       ),
          //       Text('search')
          //     ],
          //   ),
          //  ),
           actions: 
          [
            // Icon(Icons.chat_bubble),
            // SizedBox(width: 10,),
            // Icon(Icons.notifications_active),
            // Icon(FontAwesomeIcons.search),
            // SvgPicture.asset
            // (
            //   'assets/icons/search.svg',
            //    width: 20,
            //    height: 20,
            //    color: Colors.white,
            // ),
            SizedBox(width: 20,),
            // Icon(Icons.headphones),
            // Icon(FontAwesomeIcons.globe),
            IconButton
            (
              onPressed: ()
              {
                log('networkicon');
                DialogHelper1.exit(context);
              }, 
              icon: Icon(FontAwesomeIcons.globe)
            ),
            // SizedBox(width: 20,),
            IconButton
            (
              onPressed: ()
              {
                log('companyicon');
                DialogHelper.exit(context);
              }, 
              icon: Icon(FontAwesomeIcons.wallet)
            ),
            // Icon(FontAwesomeIcons.connectdevelop,),
            // SizedBox(width: 20,),
            IconButton
            (
              onPressed: ()
              {
                log('Profile Page Clicked');
                // DialogHelper.exit(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                  //  FbCloneProfileStful()
                  Profile1()
                  )
                  // ProfileScreen()),
                );
              }, 
              icon: Icon(LineIcons.user)
            ),
           ],
        ),
      ),

    
      body: getBody(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Appcolor.darkviolte6,
        ),
        child: _isLoading?
        Center
        (
          child: CircularProgressIndicator
          (
            color: Colors.pinkAccent,
          ),
        )
        // ListView.separated(
        //         itemCount: 5,
        //         itemBuilder: (context, index) => ReuseSkelton(),
        //         separatorBuilder: (context, index) =>
        //             const SizedBox(height: 16),
        //       )
        :BottomNavigationBar(
          elevation: 0.0,
          selectedItemColor:Colors.pinkAccent.shade200,
          backgroundColor: Appcolor.darkviolte6,
          unselectedFontSize: 15.0,
          selectedFontSize: 18.0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          // selectedIconTheme: Theme.of(context).copyWith(),
                // items: items,
                onTap: (index){
                  setState(() {
        selectedIndex = index;
                  });
                },
                items: [
              (selectedIndex == 0)
                  ? BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/home-filled.svg', color: Colors.pinkAccent), label: 'Home')
                  : BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/home.svg', color: Colors.grey[600]), label: 'Home'),
              (selectedIndex == 1)
                  ? BottomNavigationBarItem
                  (
                    icon: SvgPicture.asset('assets/icons/search-filled.svg', color: Colors.pinkAccent, height: 28, width: 26), 
                    // icon: Icon(LineIcons.search,color: Colors.pinkAccent,size: 27,),
                    label: 'Search'
                  )
                  : BottomNavigationBarItem
                  (
                    icon: Icon(LineIcons.search,color: Colors.grey[600],size: 27,),
                    // icon: SvgPicture.asset('assets/icons/home-filled.svg', color: Colors.grey[600], height: 28, width: 26), 
                    label: 'Search'
                  ),
              (selectedIndex == 2)
                  ? BottomNavigationBarItem
                  (
                    // icon: Image.asset('assets/images/notifications-filled.png',height: 28,width: 26,color: Colors.pinkAccent,),
                    icon: Icon(LineIcons.bell,color: Colors.pinkAccent,size: 27,),
                    // icon: SvgPicture.asset('assets/icons/home-filled.svg', color: Colors.pinkAccent), 
                    label: 'Notifications'
                  )
                  : BottomNavigationBarItem
                  (
                    // icon: Image.asset('assets/images/notifications.png',height: 28,width: 26,color: Colors.grey[600],),
                    icon: Icon(LineIcons.bell,color: Colors.grey[600],size: 27,),
                    // icon: SvgPicture.asset('assets/icons/home-filled.svg', color: Colors.grey[600]), 
                    label: 'Notifications'
                  ),
              (selectedIndex == 3)
                  ? BottomNavigationBarItem
                  (
                    icon: Image.asset('assets/images/alerts-fillled.png',height: 28,width: 26,color: Colors.pinkAccent,),
                    // icon: Icon(Icons.alarm,color: Colors.pinkAccent,size: 27,),
                    // icon: SvgPicture.asset('assets/icons/home-filled.svg', color: Colors.pinkAccent), 
                    label: 'Alerts'
                  )
                  : BottomNavigationBarItem
                  (
                    icon: Image.asset('assets/images/alerts.png',height: 28,width: 26,color: Colors.grey[600],),
                    // icon: Icon(Icons.alarm,color: Colors.grey[600],size: 27,),
                    // icon: SvgPicture.asset('assets/icons/home-filled.svg', color: Colors.grey[600]), 
                    label: 'Alerts'
                  ),
                ],
                
                // selectedItemColor: Appcolor.darkviolte4,
                unselectedItemColor: Colors.grey,
                // showUnselectedLabels: true,
                currentIndex: selectedIndex,
                type: BottomNavigationBarType.fixed,
              ),
      ),
    )
      ),
    );

  }

  Widget getBody() {
    return pages.elementAt(selectedIndex);
  }
  
}




