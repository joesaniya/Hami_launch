// @dart=2.9

import 'dart:developer';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hami_launch/config.dart';
import 'package:hami_launch/drawerEnd.dart';
import 'package:hami_launch/screen/AllLaunch.dart';
import 'package:hami_launch/screen/homepage.dart';
import 'package:hami_launch/user_Profile.dart';
import 'package:hami_launch/widgets/Leading_drawer.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wave_transition/wave_transition.dart';
import '/theme/appcolor.dart';
import 'package:line_icons/line_icons.dart';

import 'Create/AMA_apply.dart';
import 'Create/LaunchPad_create.dart';
import 'Create/Lock_create.dart';
import 'Dialogbox/dialog_helper.dart';
import 'screen/create_token.dart';
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
      // themeMode: currentTheme.currenTheme(),
      theme: currentTheme.isDark ? ThemeData.dark() : ThemeData.light(),
      // theme: currentTheme.isDark
      //     ? ThemeData(
      //         // textTheme: GoogleFonts.latoTextTheme(
      //         //   Theme.of(context).textTheme
      //         // ),

      //         // scaffoldBackgroundColor: Appcolor.darkviolte6,
      //         scaffoldBackgroundColor: Appcolor.whiteSoft,
      //         errorColor: Colors.pinkAccent)
      //     : ThemeData(
      //         // textTheme: GoogleFonts.latoTextTheme(
      //         //   Theme.of(context).textTheme
      //         // ),
      //         textTheme: const TextTheme().apply(
      //           bodyColor: Colors.orange,
      //           displayColor: Colors.blue,
      //         ),
      //         scaffoldBackgroundColor: Appcolor.darkviolte,
      //         errorColor: Colors.pinkAccent),

      home: RootPage(),
      // home: const ToeknWidget1(),
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
  Offset buttonPosition;
  Size buttonSize;

  bool _flag = true;
  int selectedIndex = 0;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentSelected = 0;
  void onTappedBar(int index) {
    index == 3
        ? scaffoldKey.currentState.openDrawer()
        : setState(() {
            _currentSelected = index;
          });
  }

  List<Widget> pages = [
    const Homepage(),
    const SearchScreen(),
    // NotificationPage(),
    const LaunchPads(),
    // const AlertPage(),

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
    Future.delayed(const Duration(seconds: 5), () async {
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

  void _onItemTapped(int index) {
    index == 3
        ?
        // scaffoldKey.of(context).openEndDrawer()
        scaffoldKey.currentState.openEndDrawer()
        : setState(() {
            selectedIndex = index;
          });
  }

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
          drawer: const LeadingDrawer(),
          // drawer: MyDrawer(),
          child: Scaffold(
            endDrawer: const DrawerEnd(),
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
                  // color: Colors.white,
                  color: currentTheme.isDark ? Colors.white : Colors.black,
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
                        icon: Icon(
                          FontAwesomeIcons.globe,
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
                          size: 20,
                        )),
                  ),
                  // SizedBox(width: 20,),
                  IconButton(
                      onPressed: () {
                        log('companyicon');
                        DialogHelper.exit(context);
                        // log('open');
                        // scaffoldKey.currentState.openEndDrawer();
                        // Scaffold.of(context).openEndDrawer();
                      },
                      icon: Icon(
                        FontAwesomeIcons.wallet,
                        color:
                            currentTheme.isDark ? Colors.white : Colors.black,
                        size: 20,
                      )),

                  // Switch(
                  //     value: _themeManager.themeMode == ThemeMode.dark,
                  //     onChanged: (newValue) {
                  //       log(newValue.toString());
                  //       _themeManager.toggleTheme(newValue);
                  //     }),
                  IconButton(
                      onPressed: () {
                        currentTheme.switchTheme();
                      },

                      // onPressed: () {
                      //   log('drawer');
                      //   scaffoldKey.currentState.openEndDrawer();
                      // },

                      // onPressed: () => MyApp.of(context).changeTheme(ThemeMode.dark),
                      icon: Icon(FontAwesomeIcons.moon,
                          color: currentTheme.isDark
                              ? Colors.white
                              : Colors.black)),
                  IconButton(
                      onPressed: () {
                        log('Profile Page Clicked');
                        Navigator.push(
                            context,
                            WaveTransition(
                                child: const UserProfile(),
                                center: const FractionalOffset(0.90, 0.90),
                                duration: const Duration(
                                    milliseconds: 3000) // optional
                                ));
                      },
                      icon: Icon(LineIcons.user,
                          color: currentTheme.isDark
                              ? Colors.white
                              : Colors.black)),
                ],
              ),
            ),
            body: getBody(),
            // bottomNavigationBar: Theme(
            //   data: Theme.of(context).copyWith(
            //     // sets the background color of the `BottomNavigationBar`
            //     // canvasColor: Appcolor.darkviolte6,
            //     canvasColor: Colors.yellow,
            //     splashColor: Colors.pinkAccent,
            //     highlightColor: Colors.purpleAccent,
            //     hoverColor: Colors.deepPurple,
            //   ),
            //   child: _isLoading
            //       ?

            //       // ShimmerSkeleton()->shimmer

            //       Center(
            //           child: SpinKitDualRing(
            //             color: Colors.pinkAccent.shade200,
            //           ),
            //         )

            //       // ListView.separated(
            //       //         itemCount: 5,
            //       //         itemBuilder: (context, index) => ReuseSkelton(),
            //       //         separatorBuilder: (context, index) =>
            //       //             const SizedBox(height: 16),
            //       //       )
            //       : ClipRRect(
            //           borderRadius: const BorderRadius.only(
            //             topRight: Radius.circular(40),
            //             topLeft: Radius.circular(40),
            //           ),
            //           // child: BottomNavigationBar(
            //           //   backgroundColor: Colors.blueGrey[900],
            //           //   type: BottomNavigationBarType.fixed,
            //           //   // onTap: onTappedBar,
            //           //   onTap: (int index) {
            //           //     index == 3
            //           //         ? scaffoldKey.currentState.openEndDrawer()
            //           //         : setState(() {
            //           //             _currentSelected = index;
            //           //           });
            //           //   },
            //           //   currentIndex: _currentSelected,
            //           //   showUnselectedLabels: true,
            //           //   unselectedItemColor: Colors.white,
            //           //   selectedItemColor:
            //           //       const Color.fromRGBO(10, 135, 255, 1),
            //           //   items: const <BottomNavigationBarItem>[
            //           //     BottomNavigationBarItem(
            //           //         icon: Icon(Icons.home), label: 'Home'),
            //           //     BottomNavigationBarItem(
            //           //         icon: Icon(Icons.search), label: 'Explore'),
            //           //     BottomNavigationBarItem(
            //           //         icon: Icon(Icons.device_hub), label: 'Channels'),
            //           //     BottomNavigationBarItem(
            //           //         icon: Icon(Icons.dehaze), label: 'More'),
            //           //   ],
            //           // ),
            //           child: BottomNavigationBar(
            //             elevation: 0.0,
            //             selectedItemColor: Colors.deepPurple,
            //             backgroundColor:
            //                 currentTheme.isDark ? Colors.black : Colors.white,
            //             // backgroundColor: Appcolor.darkviolte6,
            //             unselectedFontSize: 15.0,
            //             selectedFontSize: 18.0,
            //             showSelectedLabels: true,
            //             showUnselectedLabels: true,
            //             // selectedIconTheme: Theme.of(context).copyWith(),
            //             // items: items,

            //             //crt
            //             // onTap: (index) {
            //             //   setState(() {
            //             //     selectedIndex = index;
            //             //   });
            //             // },

            //             onTap: (int index) {
            //               index == 3
            //                   ?
            //                   // scaffoldKey.of(context).openEndDrawer()
            //                   scaffoldKey.currentState.openEndDrawer()
            //                   : setState(() {
            //                       selectedIndex = index;
            //                     });
            //             },

            //             // onTap: _onItemTapped,
            //             items: [
            //               (selectedIndex == 0)
            //                   ? const BottomNavigationBarItem(
            //                       icon: Icon(
            //                         LineIcons.home,
            //                         color: Colors.deepPurple,
            //                         size: 27,
            //                       ),
            //                       // icon: SvgPicture.asset(
            //                       //     'assets/icons/home-filled.svg',
            //                       //     color: Colors.pinkAccent),
            //                       label: 'Home')
            //                   : BottomNavigationBarItem(
            //                       icon: Icon(
            //                         LineIcons.home,
            //                         color: Colors.grey[600],
            //                         size: 27,
            //                       ),
            //                       // icon: SvgPicture.asset(
            //                       //     'assets/icons/home.svg',
            //                       //     color: Colors.grey[600]),
            //                       label: 'Home'),
            //               (selectedIndex == 1)
            //                   ? const BottomNavigationBarItem(
            //                       icon: Icon(
            //                         LineIcons.search,
            //                         color: Colors.deepPurple,
            //                         size: 27,
            //                       ),
            //                       // icon: SvgPicture.asset(
            //                       //     'assets/icons/search-filled.svg',
            //                       //     color: Colors.pinkAccent,
            //                       //     height: 28,
            //                       //     width: 26),
            //                       // icon: Icon(LineIcons.search,color: Colors.pinkAccent,size: 27,),
            //                       label: 'Search')
            //                   : BottomNavigationBarItem(
            //                       icon: Icon(
            //                         LineIcons.search,
            //                         color: Colors.grey[600],
            //                         size: 27,
            //                       ),
            //                       // icon: SvgPicture.asset('assets/icons/home-filled.svg', color: Colors.grey[600], height: 28, width: 26),
            //                       label: 'Search'),
            //               (selectedIndex == 2)
            //                   ? const BottomNavigationBarItem(
            //                       // icon: Image.asset('assets/images/notifications-filled.png',height: 28,width: 26,color: Colors.pinkAccent,),
            //                       icon: Icon(
            //                         // FontAwesomeIcons.rocket,
            //                         // LineIcons.bell,
            //                         LineIcons.rocket,
            //                         color: Colors.deepPurple,
            //                         size: 27,
            //                       ),
            //                       // icon: SvgPicture.asset('assets/icons/home-filled.svg', color: Colors.pinkAccent),
            //                       label: 'Launchpads')
            //                   : BottomNavigationBarItem(
            //                       // icon: Image.asset('assets/images/notifications.png',height: 28,width: 26,color: Colors.grey[600],),
            //                       icon: Icon(
            //                         LineIcons.rocket,
            //                         // FontAwesomeIcons.rocket,
            //                         color: Colors.grey[600],
            //                         size: 27,
            //                       ),
            //                       // icon: SvgPicture.asset('assets/icons/home-filled.svg', color: Colors.grey[600]),
            //                       label: 'Launchpads'),
            //               (selectedIndex == 3)
            //                   ? const BottomNavigationBarItem(
            //                       // icon: Image.asset(
            //                       //   'assets/images/alerts-fillled.png',
            //                       //   height: 28,
            //                       //   width: 26,
            //                       //   color: Colors.pinkAccent,
            //                       // ),
            //                       icon: Icon(
            //                         FontAwesomeIcons.boltLightning,
            //                         color: Colors.pinkAccent,
            //                         size: 27,
            //                       ),
            //                       // icon: SvgPicture.asset('assets/icons/home-filled.svg', color: Colors.pinkAccent),
            //                       label: 'Alerts')
            //                   : BottomNavigationBarItem(
            //                       // icon: Image.asset(
            //                       //   'assets/images/alerts.png',
            //                       //   height: 28,
            //                       //   width: 26,
            //                       //   color: Colors.grey[600],
            //                       // ),
            //                       icon: Icon(
            //                         FontAwesomeIcons.boltLightning,
            //                         color: Colors.grey[600],
            //                         size: 27,
            //                       ),
            //                       // icon: SvgPicture.asset('assets/icons/home-filled.svg', color: Colors.grey[600]),
            //                       label: 'Alerts'),
            //             ],

            //             // selectedItemColor: Appcolor.darkviolte4,
            //             unselectedItemColor: Colors.grey,
            //             // showUnselectedLabels: true,
            //             currentIndex: selectedIndex,
            //             type: BottomNavigationBarType.fixed,
            //           ),
            //         ),
            // ),
            bottomNavigationBar: BottomNavyBar(
              items: <BottomNavyBarItem>[
                BottomNavyBarItem(
                  activeColor: Colors.deepPurple,
                  inactiveColor: Colors.grey,
                  icon: const Icon(Icons.home),
                  title: const Text('Home'),
                ),
                BottomNavyBarItem(
                  activeColor: Colors.deepPurple,
                  inactiveColor: Colors.grey,
                  icon: const Icon(Icons.search),
                  title: const Text('Search'),
                ),
                BottomNavyBarItem(
                  activeColor: Colors.deepPurple,
                  inactiveColor: Colors.grey,
                  icon: const Icon(
                    LineIcons.rocket,
                  ),
                  title: const Text('Launchpads'),
                ),
                BottomNavyBarItem(
                  activeColor: Colors.deepPurple,
                  inactiveColor: Colors.grey,
                  icon: const Icon(
                    FontAwesomeIcons.boltLightning,
                  ),
                  title: const Text('Alerts'),
                  // activeColor: Colors.deepPurple,
                  // inactiveColor: Colors.lightGreenAccent,
                ),
              ],
              selectedIndex: selectedIndex,
              onItemSelected: (int index) {
                index == 3
                    ?
                    // scaffoldKey.of(context).openEndDrawer()
                    scaffoldKey.currentState.openEndDrawer()
                    : setState(() {
                        selectedIndex = index;
                      });
              },
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            // floatingActionButton: FloatingActionButton(
            //   backgroundColor: Colors.deepPurple,
            //   child: Positioned(
            //     bottom: 500,
            //     child: PopupMenuButton<int>(
            //       color: Colors.yellow,
            //       itemBuilder: (context) => [
            //         const PopupMenuItem(
            //             value: 1,
            //             child: Text(
            //               'Edit',
            //               style: TextStyle(color: Colors.black),
            //             )),
            //         const PopupMenuItem(
            //             value: 2,
            //             child: Text(
            //               'Delete',
            //               style: TextStyle(color: Colors.black),
            //             ))
            //       ],
            //       // icon: Icon(Icons.library_add),
            //       //   child: _flag
            //       //       ? const Icon(Icons.add)
            //       //       : const Icon(FontAwesomeIcons.close),
            //       icon: _flag
            //           ? const Icon(Icons.add)
            //           : const Icon(FontAwesomeIcons.close),
            //       // icon: const Icon(
            //       //   FontAwesomeIcons.ellipsis,
            //       //   color: Colors.white,
            //       // ),
            //       // offset: const Offset(0, -50),
            //       offset: Offset.zero,
            //       onCanceled: () {
            //         log('cancelled');
            //       },
            //       onSelected: (value) {
            //         log('value: $value');
            //       },
            //     ),
            //   ),
            // ),

            // floatingActionButton: FloatingActionButton(
            //   backgroundColor: const Color.fromRGBO(103, 58, 183, 1),
            //   child: Container(
            //       child: SimpleAccountMenu(
            //     icons: const [
            //       Icon(Icons.person),
            //       Icon(Icons.settings),
            //       Icon(Icons.credit_card),
            //     ],
            //     iconColor: Colors.white,
            //     onChange: (index) {
            //       print(index);
            //     },
            //   )),
            // ),

            // crt
            floatingActionButton: GestureDetector(
              onTapDown: (details) {
                setState(() {
                  _flag = !_flag;
                  _flag
                      ? const SizedBox()
                      // : _showPopUpMenu(details.globalPosition);
                      :
                      // _showPopUpMenu(Offset.fromDirection(double.maxFinite));

                      // const MyMenu(
                      //     title: 'Menu at bottom',
                      //     alignment: Alignment.bottomCenter);

                      _showPopupMenu1(details.globalPosition);
                  // PopupMenuButton<int>(
                  //     offset: const Offset(0, -380),
                  //     itemBuilder: (context) => [
                  //       const PopupMenuItem<int>(
                  //           value: 0, child: Text('data')),
                  //       const PopupMenuItem<int>(
                  //           value: 1, child: Text('data')),
                  //       const PopupMenuItem<int>(
                  //           value: 2, child: Text('data')),
                  //       const PopupMenuItem<int>(
                  //           value: 3, child: Text('data')),
                  //     ],
                  //     child: Column(
                  //       mainAxisSize: MainAxisSize.min,
                  //       children: const <Widget>[
                  //         Icon(Icons.more_vert, color: Colors.white60),
                  //         // Text(translate('more'),
                  //         //     style: Theme.of(context).textTheme.caption)
                  //       ],
                  //     ),
                  //   );
                });
              },
              child: FloatingActionButton.small(
                backgroundColor: Colors.deepPurple,
                // child: const Icon(Icons.add),
                // onPressed: () {

                //   log('message');
                //   // _flag ? _showPopUpMenu() : const SizedBox();
                // },
                onPressed: null,
                child: _flag
                    ? const Icon(Icons.add)
                    : const Icon(FontAwesomeIcons.close),
              ),
            ),

            // floatingActionButtonLocation:
            //     FloatingActionButtonLocation.centerDocked,
            // floatingActionButton: buildSpeedDial()
          )),
    );
  }

  Widget getBody() {
    return pages.elementAt(selectedIndex);
  }

  _showPopUpMenu(Offset offset) async {
    final screenSize = MediaQuery.of(context).size;
    double left = offset.dx;
    double top = offset.dy;
    double right = screenSize.width - offset.dx;
    double bottom = screenSize.height - offset.dy;

    await showMenu<MenuItemType>(
      context: context,
      position: const RelativeRect.fromLTRB(0, 650, 0, 20),
      // position: const RelativeRect.fromLTRB(50, 700, 20, 20),
      // position: RelativeRect.fromLTRB(left, top, right, bottom),
      items: MenuItemType.values
          .map((MenuItemType menuItemType) => PopupMenuItem<MenuItemType>(
                value: menuItemType,
                child: Text(getMenuItemString(menuItemType)),
              ))
          .toList(),
    ).then((MenuItemType item) {
      if (item == MenuItemType.EDIT) {
        // here set your route
      }
    });
  }

//crt
  void _showPopupMenu1(Offset offset) async {
    final screenSize = MediaQuery.of(context).size;
    // double left = offset.dx;
    // double top = offset.dy;
    // double right = screenSize.width - offset.dx;
    // double bottom = screenSize.height - offset.dy;
    // final RenderBox renderBox =
    //     scaffoldKey.currentContext?.findRenderObject() as RenderBox;
    // // // final Size size = renderBox.size;
    // final Offset offset = renderBox.localToGlobal(Offset.zero);
    await showMenu(
      context: context,
      //   position: RelativeRect.fromLTRB(
      //   details.globalPosition.dx,
      //   details.globalPosition.dy,
      //   details.globalPosition.dx,
      //   details.globalPosition.dy,
      // ),

      position:
          RelativeRect.fromLTRB(offset.dx - 75, offset.dy - 280, 125, 150),

      //crt
      // position:
      //     RelativeRect.fromLTRB(offset.dx - 75, offset.dy - 150, 125, 150),

      // position: const RelativeRect.fromLTRB(0, 0, 0, 20),

      // position: RelativeRect.fromLTRB(offset.dx, offset.dy, 100, 100),
      items: [
        PopupMenuItem<String>(
            value: 'Create Launchpad',
            child: ListTile(
              onTap: () {
                log('Create Launchpad clicked');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LaunchPadCreate()));
              },
              leading: const Icon(LineIcons.rocket),
              title: const Text('Create Launchpad',
                  style: TextStyle(color: Colors.grey, height: 1.5
                      // decoration: TextDecoration.underline
                      )),
            )),
        //2
        PopupMenuItem<String>(
            value: 'Create Token',
            child: ListTile(
              onTap: () {
                log('Create Token clicked');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateToken()));
              },
              leading: const Icon(
                Icons.token_outlined,
              ),
              title: const Text('Create Token',
                  style: TextStyle(color: Colors.grey, height: 1.5
                      // decoration: TextDecoration.underline
                      )),
            )),

        //3
        PopupMenuItem<String>(
            value: 'Create Lock',
            child: ListTile(
              onTap: () {
                log('1st Create Lock clicked');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LockCreate()));
              },
              leading: const Icon(LineIcons.lock),
              title: const Text('Create Lock',
                  style: TextStyle(color: Colors.grey, height: 1.5
                      // decoration: TextDecoration.underline
                      )),
            )),

        //4
        PopupMenuItem<String>(
            value: 'Apply For AMA',
            child: ListTile(
              onTap: () {
                log('Apply For AMA clicked');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AMAApply()));
              },
              leading: const Icon(Icons.help),
              title: const Text('Apply For AMA',
                  style: TextStyle(color: Colors.grey, height: 1.5
                      // decoration: TextDecoration.underline
                      )),
            )),
      ],
      elevation: 2.0,
    );
  }
}

class MyMenu extends StatelessWidget {
  final String title;
  final Alignment alignment;
  final Offset offset;
  const MyMenu({
    this.title,
    this.alignment,
    this.offset = const Offset(0, 0),
  });
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: PopupMenuButton<int>(
        offset: offset,
        itemBuilder: (context) => const [
          PopupMenuItem<int>(
              value: 0,
              child: Text(
                'Item 0',
              )),
          PopupMenuItem<int>(
              value: 1,
              child: Text(
                'Item 1',
              )),
          PopupMenuItem<int>(
              value: 2,
              child: Text(
                'Item 2',
              )),
        ],
        child: Text(
          title,
          style: const TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
