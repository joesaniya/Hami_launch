// @dart=2.9

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hami_launch/config.dart';
import 'package:hami_launch/screen/homepage.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wave_transition/wave_transition.dart';
import '/theme/appcolor.dart';
import 'package:line_icons/line_icons.dart';
import '/widgets/drawer_widget.dart';

import 'Dialogbox/dialog_helper.dart';
import 'insta_profile/profile_base_screen.dart';
import 'screen/NotificationPage.dart';
import 'screen/alerts.dart';
import 'screen/search-screen.dart';
import 'theme/theme_manager.dart';

void main() => runApp(MyApp());
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

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      log('changes');
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hami App',
      // themeMode: _themeManager.themeMode,
      themeMode: currentTheme.currenTheme(),
      theme: ThemeData(
          // textTheme: GoogleFonts.latoTextTheme(
          //   Theme.of(context).textTheme
          // ),

          scaffoldBackgroundColor: Appcolor.darkviolte6,
          errorColor: Colors.pinkAccent),
      // home: DetailAuditingPartners(),
      home: RootPage(),
    );
  }
}

enum MenuItemType { EDIT, DUPLICATE }

getMenuItemString(MenuItemType menuItemType) {
  switch (menuItemType) {
    case MenuItemType.EDIT:
      return "Edit";
    case MenuItemType.DUPLICATE:
      return "Duplicate";
  }
}

class Demo extends StatelessWidget {
  const Demo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: 600,
      color: Colors.red,
    ));
  }
}

ThemeManager _themeManager = ThemeManager();

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  bool _flag = true;
  int selectedIndex = 0;
  List<Widget> pages = [
    const Homepage(),
    const SearchScreen(),
    NotificationPage(),
    const AlertPage(),

    // Container
    // (
    //   height: 400,
    //   color: Colors.yellow,
    // ),
    // Homepage(),
    // const SearchScreen(),
    // NotificationPage(),
    // const AlertPage()
  ];

  bool _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 5), () {
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

  final bool _raiseNewIssueFormIsShown = false;

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return WillPopScope(
      child: AdvancedDrawer(
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
                offset: const Offset(-20.0, 0.0),
              ),
            ],
            borderRadius: BorderRadius.circular(30),
          ),
          drawer: MyDrawer(),
          child: Scaffold(
            key: scaffoldKey,
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

            appBar: PreferredSize(
              preferredSize: const Size(double.infinity, 50),
              child: AppBar(
                centerTitle: false,
                // title: FadeInLeft(
                // preferences: const AnimationPreferences(
                //   duration: Duration(milliseconds: 400),
                // ),
                // child: Text(
                //   _raiseNewIssueFormIsShown
                //       ? 'Raise an issue'
                //       : 66'ElectricalIssueTrackerApp.appName',
                // ),
                // ),
                leading: IconButton(
                  color: Colors.white,
                  onPressed: _handleMenuButtonPressed,
                  icon: ValueListenableBuilder(
                      valueListenable: _advancedDrawerController,
                      builder: (_, value, __) {
                        return AnimatedSwitcher(
                          duration: const Duration(microseconds: 250),
                          child: Icon(
                            value.visible ? Iconsax.close_square : Iconsax.menu,
                            key: ValueKey<bool>(value.visible),
                          ),
                        );
                      }),
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
                actions: [
                  // SvgPicture.asset
                  // (
                  //   'assets/icons/search.svg',
                  //    width: 20,
                  //    height: 20,
                  //    color: Colors.white,
                  // ),
                  const SizedBox(
                    width: 20,
                  ),

                  InkWell(
                    splashColor: Colors.red,
                    child: IconButton(
                        onPressed: () {
                          log('networkicon');
                          DialogHelper1.exit(context);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.globe,
                          size: 20,
                        )),
                  ),
                  // SizedBox(width: 20,),
                  IconButton(
                      onPressed: () {
                        log('companyicon');
                        DialogHelper.exit(context);
                      },
                      icon: const Icon(
                        FontAwesomeIcons.wallet,
                        size: 20,
                      )),

                  // Switch(
                  //     value: _themeManager.themeMode == ThemeMode.dark,
                  //     onChanged: (newValue) {
                  //       log(newValue.toString());
                  //       _themeManager.toggleTheme(newValue);
                  //     }),
                  IconButton(
                      // onPressed: () {
                      //   currentTheme.switchTheme();
                      // },

                      onPressed: () {
                        log('drawer');
                        scaffoldKey.currentState.openEndDrawer();
                      },

                      // onPressed: () => MyApp.of(context).changeTheme(ThemeMode.dark),
                      icon: const Icon(FontAwesomeIcons.moon)),
                  IconButton(
                      onPressed: () {
                        log('Profile Page Clicked');
                        Navigator.push(
                            context,
                            WaveTransition(
                                child: ProfileBaseScreen(),
                                center: const FractionalOffset(0.90, 0.90),
                                duration: const Duration(
                                    milliseconds: 3000) // optional
                                ));
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) =>
                        //   //  FbCloneProfileStful()
                        //   // Profile1()crt
                        //   ProfileBaseScreen()
                        //   )
                        //   // ProfileScreen()),
                        // );
                        // // DialogHelper.exit(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) =>
                        //   //  FbCloneProfileStful()
                        //   Profile1()
                        //   )
                        //   // ProfileScreen()),
                        // );
                      },
                      icon: const Icon(LineIcons.user)),
                ],
              ),
            ),
            body: getBody(),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                // sets the background color of the `BottomNavigationBar`
                canvasColor: Appcolor.darkviolte6,
                splashColor: Colors.pinkAccent,
                highlightColor: Colors.purpleAccent,
                hoverColor: Colors.deepPurple,
              ),
              child: _isLoading
                  ?

                  // ShimmerSkeleton()->shimmer

                  Center(
                      child: SpinKitDualRing(
                        color: Colors.pinkAccent.shade200,
                      ),
                    )

                  // ListView.separated(
                  //         itemCount: 5,
                  //         itemBuilder: (context, index) => ReuseSkelton(),
                  //         separatorBuilder: (context, index) =>
                  //             const SizedBox(height: 16),
                  //       )
                  : BottomNavigationBar(
                      elevation: 0.0,
                      selectedItemColor: Colors.pinkAccent.shade200,
                      backgroundColor: Appcolor.darkviolte6,
                      unselectedFontSize: 15.0,
                      selectedFontSize: 18.0,
                      showSelectedLabels: true,
                      showUnselectedLabels: true,
                      // selectedIconTheme: Theme.of(context).copyWith(),
                      // items: items,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      items: [
                        (selectedIndex == 0)
                            ? BottomNavigationBarItem(
                                icon: SvgPicture.asset(
                                    'assets/icons/home-filled.svg',
                                    color: Colors.pinkAccent),
                                label: 'Home')
                            : BottomNavigationBarItem(
                                icon: SvgPicture.asset('assets/icons/home.svg',
                                    color: Colors.grey[600]),
                                label: 'Home'),
                        (selectedIndex == 1)
                            ? BottomNavigationBarItem(
                                icon: SvgPicture.asset(
                                    'assets/icons/search-filled.svg',
                                    color: Colors.pinkAccent,
                                    height: 28,
                                    width: 26),
                                // icon: Icon(LineIcons.search,color: Colors.pinkAccent,size: 27,),
                                label: 'Search')
                            : BottomNavigationBarItem(
                                icon: Icon(
                                  LineIcons.search,
                                  color: Colors.grey[600],
                                  size: 27,
                                ),
                                // icon: SvgPicture.asset('assets/icons/home-filled.svg', color: Colors.grey[600], height: 28, width: 26),
                                label: 'Search'),
                        (selectedIndex == 2)
                            ? const BottomNavigationBarItem(
                                // icon: Image.asset('assets/images/notifications-filled.png',height: 28,width: 26,color: Colors.pinkAccent,),
                                icon: Icon(
                                  LineIcons.bell,
                                  color: Colors.pinkAccent,
                                  size: 27,
                                ),
                                // icon: SvgPicture.asset('assets/icons/home-filled.svg', color: Colors.pinkAccent),
                                label: 'Notifications')
                            : BottomNavigationBarItem(
                                // icon: Image.asset('assets/images/notifications.png',height: 28,width: 26,color: Colors.grey[600],),
                                icon: Icon(
                                  LineIcons.bell,
                                  color: Colors.grey[600],
                                  size: 27,
                                ),
                                // icon: SvgPicture.asset('assets/icons/home-filled.svg', color: Colors.grey[600]),
                                label: 'Notifications'),
                        (selectedIndex == 3)
                            ? BottomNavigationBarItem(
                                icon: Image.asset(
                                  'assets/images/alerts-fillled.png',
                                  height: 28,
                                  width: 26,
                                  color: Colors.pinkAccent,
                                ),
                                // icon: Icon(Icons.alarm,color: Colors.pinkAccent,size: 27,),
                                // icon: SvgPicture.asset('assets/icons/home-filled.svg', color: Colors.pinkAccent),
                                label: 'Alerts')
                            : BottomNavigationBarItem(
                                icon: Image.asset(
                                  'assets/images/alerts.png',
                                  height: 28,
                                  width: 26,
                                  color: Colors.grey[600],
                                ),
                                // icon: Icon(Icons.alarm,color: Colors.grey[600],size: 27,),
                                // icon: SvgPicture.asset('assets/icons/home-filled.svg', color: Colors.grey[600]),
                                label: 'Alerts'),
                      ],

                      // selectedItemColor: Appcolor.darkviolte4,
                      unselectedItemColor: Colors.grey,
                      // showUnselectedLabels: true,
                      currentIndex: selectedIndex,
                      type: BottomNavigationBarType.fixed,
                    ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.deepPurple,
              child: _flag
                  ? const Icon(Icons.add)
                  : const Icon(FontAwesomeIcons.close),
              // child: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  _flag = !_flag;
                });
                log('message');
                _flag ? _showPopUpMenu() : const SizedBox();
              },
            ),
            // floatingActionButtonLocation:
            //     FloatingActionButtonLocation.centerDocked,
            // floatingActionButton: buildSpeedDial()
          )),
    );
  }

  SpeedDial buildSpeedDial() {
    return SpeedDial(
      // animatedIcon: AnimatedIcons.menu_close,
      // AnimatedIcons.menu_close,
      icon: Icons.add, //icon on Floating action button
      activeIcon: Icons.close,
      animatedIconTheme: const IconThemeData(size: 28.0),
      backgroundColor: Colors.deepPurple,
      overlayColor: Colors.black,
      overlayOpacity: 0.4,
      // visible: true,
      // curve: Curves.bounceInOut,
      children: [
        SpeedDialChild(
          child: const Icon(Icons.copy, color: Colors.white),
          backgroundColor: Colors.pinkAccent,
          onTap: () {
            log('read clicked');
          },
          label: 'Read',
          labelStyle:
              const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
      ],
    );
  }

  Widget getBody() {
    return pages.elementAt(selectedIndex);
  }

  // _showPopUpMenu() async {
  //   final screenSize = MediaQuery.of(context).size;
  //   // double left = offset.dx;
  //   // double top = offset.dy;
  //   // double right = screenSize.width - offset.dx;
  //   // double bottom = screenSize.height - offset.dy;

  //   await showMenu<MenuItemType>(
  //     context: context,
  //     position: const RelativeRect.fromLTRB(20, 20, 20, 20),
  //     // position: RelativeRect.fromLTRB(left, top, right, bottom),
  //     items: MenuItemType.values
  //         .map((MenuItemType menuItemType) => PopupMenuItem<MenuItemType>(
  //               value: menuItemType,
  //               child: Text(getMenuItemString(menuItemType)),
  //             ))
  //         .toList(),
  //   ).then((MenuItemType item) {
  //     if (item == MenuItemType.EDIT) {
  //       // here set your route
  //     }
  //   });
  // }
  _showPopUpMenu() {
    PopupMenuButton<int>(
      itemBuilder: (context) => [
        const PopupMenuItem(
            value: 1,
            child: Text(
              'Edit',
              style: TextStyle(color: Colors.black),
            )),
        const PopupMenuItem(
            value: 2,
            child: Text(
              'Delete',
              style: TextStyle(color: Colors.black),
            ))
      ],
      // icon: Icon(Icons.library_add),
      icon: const Icon(
        FontAwesomeIcons.ellipsis,
        color: Colors.white,
      ),
      offset: const Offset(0, 50),
      onCanceled: () {
        log('cancelled');
      },
      onSelected: (value) {
        log('value: $value');
      },
    );
  }
}
