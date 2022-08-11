// // @dart=2.9

// import 'package:flutter/material.dart';
// import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:trading_demo/screen/homepage.dart';
// import 'package:trading_demo/screen/search.dart';
// import 'package:trading_demo/theme/appcolor.dart';
// import 'package:line_icons/line_icons.dart';
// import 'package:trading_demo/widgets/drawer_widget.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Hami App',
//       theme: ThemeData(
//           textTheme: GoogleFonts.latoTextTheme(
//             Theme.of(context).textTheme
//           ),
//           scaffoldBackgroundColor: Appcolor.darkviolte6
//         ),
//       home: RootPage(),
//     );
//   }
// }


// class RootPage extends StatefulWidget {
//   @override
//   _RootPageState createState() => _RootPageState();
// }

// class _RootPageState extends State<RootPage> {
//   List <BottomNavigationBarItem>items = const [
//     BottomNavigationBarItem(icon: Icon(LineIcons.home,size: 27,),label: 'home'
//     ),
//     BottomNavigationBarItem(icon: Icon(LineIcons.search,size: 27,),
//     label: 'search'
//     // title:Padding(
//     //   padding: const EdgeInsets.only(top: 8),
//     //   child: Text("Search",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
//     // )
//     ),
//     BottomNavigationBarItem(icon: Icon(LineIcons.bell,size: 27),
//     label: 'notifications'
//     ),
//     BottomNavigationBarItem(icon: Icon(Icons.alarm,size: 27),
//     label: 'Alerts'
//     )
//   ];
//   int selectedIndex = 0;
//   List <Widget> pages = [
//     Homepage(),
//     Search(),
//     // Center(child: Text("Home",style: TextStyle(fontSize: 40),),),
//     // Center(child: Text("Search",style: TextStyle(fontSize: 40),),),
//     Center(child: Text("Notifications",style: TextStyle(fontSize: 40),),),
//     Center(child: Text("Profile",style: TextStyle(fontSize: 40),),)
//   ];

//   final _advancedDrawerController = AdvancedDrawerController();

//    void _handleMenuButtonPressed() {
//     _advancedDrawerController.showDrawer();
//   }

//   @override
//   Widget build(BuildContext context)
//   {
//     final _scaffoldKey = GlobalKey<ScaffoldState>();
//     return WillPopScope
//     (
//       child: AdvancedDrawer
//       (
//         backdropColor: Appcolor.darkviolte6,
//         // backdropColor:Appcolor.secondary,
//                       // backdropColor: Colors.grey.shade900,
//                       controller: _advancedDrawerController,
//                       animationCurve: Curves.easeInOut,
//                       animationDuration: const Duration(milliseconds: 300),
//                       animateChildDecoration: true,
//                       rtlOpening: false,
//                       disabledGestures: false,
//                       childDecoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             // color: Appcolor.darkviolte6,
//                             color: Appcolor.secondary,
//                             blurRadius: 20.0,
//                             spreadRadius: 5.0,
//                             offset: Offset(-20.0, 0.0),
//                           ),
//                         ],
//                         borderRadius: BorderRadius.circular(30),
//                       ),

//                       drawer: MyDrawer(),

//                       // drawer:SafeArea
//                       // (
//                       //   child: Container
//                       //   (
//                       //     // color: Colors.red,
//                       //     padding: EdgeInsets.only(top: 20),
//                       //     child: Column
//                       //     (
//                       //       crossAxisAlignment: CrossAxisAlignment.start,
//                       //       children: 
//                       //       [
//                       //         Container
//                       //         (
//                       //           width: 80,
//                       //           height: 80,
//                       //           margin: EdgeInsets.only
//                       //           (
//                       //             left: 24,
//                       //             top: 24
//                       //           ),
//                       //           clipBehavior: Clip.antiAlias,
//                       //           decoration: BoxDecoration
//                       //           (
//                       //             color: Colors.grey.shade800,
//                       //             shape: BoxShape.circle
//                       //           ),
//                       //           child: CircleAvatar
//                       //           (
//                       //             radius: 80,
//                       //             backgroundColor: Colors.grey,
//                       //             child: ClipOval
//                       //             (
//                       //               child: SizedBox
//                       //               (
//                       //                 width: 80,
//                       //                 height: 80,
//                       //                 child: CircleAvatar(
//                       //                     backgroundColor: Appcolor.background,
//                       //                     child: Image
//                       //                     (
//                       //                       image: NetworkImage('https://app.hami.live/static/media/logo.fa40f84cc28cef735cc2.png'),
//                       //                     )
//                       //                   ),
//                       //               ),
//                       //             ),
//                       //           ),
//                       //         ),
//                       //         SizedBox
//                       //         (
//                       //           height: 10,
//                       //         ),
//                       //         Padding
//                       //         (
//                       //           padding: EdgeInsets.only(left: 30),
//                       //           child: Text
//                       //           (
//                       //             'HAMI LAUNCHPAD',
//                       //             style: TextStyle
//                       //             (
//                       //               color: Colors.white,
//                       //               fontWeight: FontWeight.w600
//                       //             ),
//                       //           ),
//                       //         ),
//                       //         Spacer(),
//                       //         Divider(color: Colors.grey.shade800,),
//                       //         ExpansionTile
//                       //         (
//                       //           leading: Icon(Icons.token,color: Colors.white,),
//                       //           iconColor: Colors.white,
//                       //           collapsedIconColor: Colors.white,
//                       //           title: Text('LaunchPad',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
//                       //           children: 
//                       //           [
//                       //             ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Tokens List',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Create Token',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Add Token',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
                                    
//                       //           ],
//                       //           // trailing: ,
//                       //         ),
//                       //         ExpansionTile
//                       //         (
//                       //           leading: Icon(Icons.lock,color: Colors.white,),
//                       //           iconColor: Colors.white,
//                       //           collapsedIconColor: Colors.white,
//                       //           title: Text('Smart Lock',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
//                       //           children: 
//                       //           [
//                       //             ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Locked Tokens',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Locked IP Tokens',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Create Lock',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
                                    
//                       //           ],
//                       //           // trailing: ,
//                       //         ),

//                       //     // const Divider(color: Colors.grey, thickness: 1,),
//                       //     //3
//                       //     ExpansionTile
//                       //         (
//                       //           leading: Icon(Icons.settings,color: Colors.white,),
//                       //           iconColor: Colors.white,
//                       //           collapsedIconColor: Colors.white,
//                       //           title: Text('Services',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
//                       //           children: 
//                       //           [
//                       //             ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Advertise With us',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Marketing Companies',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Smartcontract Auditing',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               //
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Exchange Listing',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Shilliers',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Smartcontract Developers',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Web3 Developers',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Twitter Promoters',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Partner With Us',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
                                    
//                       //           ],
//                       //           // trailing: ,
//                       //         ),

                          

//                       //     //4
//                       //     ExpansionTile
//                       //         (
//                       //           leading: Icon(Icons.person_add,color: Colors.white,),
//                       //           iconColor: Colors.white,
//                       //           collapsedIconColor: Colors.white,
//                       //           title: Text('Referal',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
//                       //           children: 
//                       //           [
//                       //             ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Share and Earn',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
                                    
                                    
//                       //           ],
//                       //           // trailing: ,
//                       //         ),
//                       //     // const Divider(color: Colors.grey, thickness: 1,),
//                       //     //5
//                       //     ExpansionTile
//                       //         (
//                       //           leading: Icon(Icons.notes,color: Colors.white,),
//                       //           iconColor: Colors.white,
//                       //           collapsedIconColor: Colors.white,
//                       //           title: Text('Instructions',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
//                       //           children: 
//                       //           [
//                       //             ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('How to connect Wallet',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('How to create Token',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('How to create Smart Lock',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('How to Participate in Launch',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('How to Redeem Token',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
                                    
//                       //           ],
//                       //           // trailing: ,
//                       //         ),
//                       //     // const Divider(color: Colors.grey, thickness: 1,),

//                       //     //5
//                       //     ListTile(
//                       //       leading: Icon(Icons.help,color: Colors.white,),
//                       //       title: Text('Get Help',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
//                       //       // trailing: const Icon(Icons.arrow_forward_ios),
//                       //       // onTap: settings,
//                       //     ),

//                       //     //6
//                       //     ListTile(
//                       //       leading: Icon(Icons.production_quantity_limits,color: Colors.white,),
//                       //       title: Text('our Products',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
//                       //       // trailing: const Icon(Icons.arrow_forward_ios),
//                       //       // onTap: settings,
//                       //     ),

//                       //     //7
//                       //     ExpansionTile
//                       //         (
//                       //           leading: Icon(Icons.more,color: Colors.white,),
//                       //           iconColor: Colors.white,
//                       //           collapsedIconColor: Colors.white,
//                       //           title: Text('More',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
//                       //           children: 
//                       //           [
//                       //             ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Terms And Conditions',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Privacy Policy',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
//                       //               SizedBox
//                       //               (
//                       //                 width: 4,
//                       //               ),
//                       //               ListTile
//                       //               (
//                       //                 leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
//                       //                 title: Text('Advertisement Policy',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
//                       //               ),
                                    
//                       //           ],
                                
//                       //           // trailing: ,
//                       //         ),

//                       //         SizedBox
//                       //         (
//                       //           height: 30,
//                       //         ),
//                       //         Padding(
//                       //           padding: const EdgeInsets.only(left:25.0),
//                       //           child: Text('Hami Launchpd',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w900),),
//                       //         ),
//                       //         SizedBox(
//                       //           height: 10,
//                       //         ),
//                       //         Row
//                       //         (
//                       //           children: 
//                       //           [
//                       //             Icon(Icons.copyright),
//                       //             SizedBox(width: 5,),
//                       //             Text('2022 All Rights Reserved',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w500),)
//                       //           ],
//                       //         )
//                       //       ],
//                       //     ),
//                       //   )
//                       // ),

//         // drawer: SafeArea
//         // (
//         //   child: MyDrawer()
//         // ),
//       child:Scaffold(
//       key:  _scaffoldKey,
//       // drawer: MyDrawer(),
//       //myyy
//       // drawer: Drawer
//       // (
//       //   child: BackdropFilter
//       //   (
//       //     filter: ImageFilter.blur(
//       //           sigmaX: 5.0,
//       //           sigmaY: 5.0,
//       //         ),
//       //         child: MyDrawer(),
//       //   ),
//       // ),
    
//       // drawer: StylishDrawer(),
    
//       appBar:
//       PreferredSize(
//         preferredSize: Size(double.infinity, 50),
//         child: AppBar(
//           centerTitle: false,

//           leading: IconButton
//           (
//             color:Colors.white,
//             onPressed: _handleMenuButtonPressed,
//             icon: ValueListenableBuilder(
//               valueListenable:  _advancedDrawerController,
//               builder: (_, value, __ )
//               {
//                 return AnimatedSwitcher
//                 (
//                   duration: Duration(microseconds: 250),
//                   child: Icon
//                   (
//                     value.visible ?Iconsax.close_square : Iconsax.menu,
//                           key: ValueKey<bool>(value.visible),
//                   ),
//                 );
//               }
//             ),
                    
//           ),
      
//            backgroundColor: Colors.transparent,
//            elevation: 0.0,
//           //  title: Container
//           //  (
//           //   height: 30,
//           //   width: 300,
//           //   // ?color: Colors.grey,
//           //   decoration: BoxDecoration
//           //   (
//           //     color: Appcolor.background,
//           //     borderRadius: BorderRadius.all(Radius.circular(20))
//           //   ),
//           //   child: Row
//           //   (
//           //     mainAxisAlignment: MainAxisAlignment.start,
//           //     children: 
//           //     [
//           //       SizedBox
//           //       (
//           //         width: 10,
//           //       ),
//           //       Icon(Icons.search),
//           //       SizedBox
//           //       (
//           //         width: 20,
//           //       ),
//           //       Text('search')
//           //     ],
//           //   ),
//           //  ),
//            actions: 
//            [
//             // Icon(Icons.chat_bubble),
//             // SizedBox(width: 10,),
//             // Icon(Icons.notifications_active),
//             // Icon(FontAwesomeIcons.search),
//             // SvgPicture.asset
//             // (
//             //   'assets/icons/search.svg',
//             //    width: 20,
//             //    height: 20,
//             //    color: Colors.white,
//             // ),
//             SizedBox(width: 20,),
//             // Icon(Icons.headphones),
//             Icon(FontAwesomeIcons.globe),
//             SizedBox(width: 20,),
//             Icon(FontAwesomeIcons.connectdevelop,),
//             // Icon(Icons.scanner),
//             SizedBox(width: 20,),
//            ],
//         ),
//       ),

    
//       body: getBody(),
//       bottomNavigationBar: Theme(
//         data: Theme.of(context).copyWith(
//           // sets the background color of the `BottomNavigationBar`
//           canvasColor: Appcolor.darkviolte6,
//         ),
//         child: BottomNavigationBar(
//           elevation: 0.0,
//           backgroundColor: Appcolor.darkviolte6,
                
//                 items: items,
//                 onTap: (index){
//                   setState(() {
//         selectedIndex = index;
//                   });
//                 },
//                 // selectedItemColor: Colors.white,
//                 selectedItemColor: Appcolor.darkviolte4,
//                 unselectedItemColor: Colors.grey,
//                 showUnselectedLabels: true,
//                 currentIndex: selectedIndex,
//                 type: BottomNavigationBarType.shifting,
//               ),
//       ),
//     )
//       ),
//     );

//   }


//   // @override
//   // Widget build(BuildContext context) {
//   //   final _scaffoldKey = GlobalKey<ScaffoldState>();
//   //   // final _advancedDrawerController = AdvancedDrawerController();
//   //   return Scaffold(
//   //     key:  _scaffoldKey,
//   //     drawer: MyDrawer(),
//   //     //myyy
//   //     // drawer: Drawer
//   //     // (
//   //     //   child: BackdropFilter
//   //     //   (
//   //     //     filter: ImageFilter.blur(
//   //     //           sigmaX: 5.0,
//   //     //           sigmaY: 5.0,
//   //     //         ),
//   //     //         child: MyDrawer(),
//   //     //   ),
//   //     // ),
    
//   //     // drawer: StylishDrawer(),
    
//   //     appBar:
//   //     PreferredSize(
//   //       preferredSize: Size(double.infinity, 50),
//   //       child: AppBar(
//   //         centerTitle: false,

//   //         leading: IconButton
//   //         (
//   //           color:Colors.white,
//   //           onPressed: _handleMenuButtonPressed,
//   //           icon: ValueListenableBuilder(
//   //             valueListenable:  _advancedDrawerController,
//   //             builder: (_, value, __ )
//   //             {
//   //               return AnimatedSwitcher
//   //               (
//   //                 duration: Duration(microseconds: 250),
//   //                 child: Icon
//   //                 (
//   //                   value.visible ?Iconsax.close_square : Iconsax.menu,
//   //                         key: ValueKey<bool>(value.visible),
//   //                 ),
//   //               );
//   //             }
//   //           ),
                    
//   //         ),
//   //         // leading: GestureDetector(onTap: ()
//   //         //       {
//   //         //         print('drawer open');
//   //         //         // Scaffold.of(context).openDrawer();
//   //         //         _scaffoldKey.currentState.openDrawer();
//   //         //       },
//   //         //       child: Icon(Icons.menu),
                
//   //         //   // child: CircleAvatar
//   //         //   // (
//   //         //   //   child: Icon(Icons.person),
//   //         //   //   backgroundColor: Colors.transparent,
//   //         //   // ),
//   //         // ),
//   //          backgroundColor: Colors.transparent,
//   //          elevation: 0.0,
//   //          title: Container
//   //          (
//   //           height: 30,
//   //           width: 300,
//   //           // ?color: Colors.grey,
//   //           decoration: BoxDecoration
//   //           (
//   //             color: Appcolor.background,
//   //             borderRadius: BorderRadius.all(Radius.circular(20))
//   //           ),
//   //           child: Row
//   //           (
//   //             mainAxisAlignment: MainAxisAlignment.start,
//   //             children: 
//   //             [
//   //               SizedBox
//   //               (
//   //                 width: 10,
//   //               ),
//   //               Icon(Icons.search),
//   //               SizedBox
//   //               (
//   //                 width: 20,
//   //               ),
//   //               Text('search')
//   //             ],
//   //           ),
//   //          ),
//   //          actions: 
//   //          [
//   //           Icon(Icons.chat_bubble),
//   //           SizedBox(width: 10,),
//   //           Icon(Icons.notifications_active),
//   //           SizedBox(width: 10,),
//   //           Icon(Icons.headphones),
//   //           SizedBox(width: 10,),
//   //           Icon(Icons.scanner),
//   //           SizedBox(width: 10,),
//   //          ],
//   //       ),
//   //     ),

    
//   //     body: getBody(),
//   //     bottomNavigationBar: Theme(
//   //       data: Theme.of(context).copyWith(
//   //         // sets the background color of the `BottomNavigationBar`
//   //         canvasColor: Appcolor.darkviolte6,
//   //       ),
//   //       child: BottomNavigationBar(
//   //         elevation: 0.0,
//   //         backgroundColor: Appcolor.darkviolte6,
                
//   //               items: items,
//   //               onTap: (index){
//   //                 setState(() {
//   //       selectedIndex = index;
//   //                 });
//   //               },
//   //               // selectedItemColor: Colors.white,
//   //               selectedItemColor: Appcolor.darkviolte4,
//   //               unselectedItemColor: Colors.grey,
//   //               showUnselectedLabels: true,
//   //               currentIndex: selectedIndex,
//   //               type: BottomNavigationBarType.shifting,
//   //             ),
//   //     ),
//   //   );
//   // }

//   Widget getBody() {
//     return pages.elementAt(selectedIndex);
//   }
  
// }




// // //normal drawer
// // class MyDrawer extends StatefulWidget {
// //   @override
// //   _DrawerState createState() => _DrawerState();
// // }

// // class _DrawerState extends State<MyDrawer> {
// //   int myIndex;
// //   PageController _controller;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _controller = PageController(initialPage: 0);
// //   }

// //   //The Logic where you change the pages
// //   _onChangePage(int index){
// //     if(index != 0) setState(() => myIndex = index); //change myIndex if you're Selecting between Settings and Explore
// //     _controller.animateToPage(index.clamp(0, 1),
// //       duration: const Duration(milliseconds: 500), curve: Curves.linear);
// //   }

// //   @override
// //   void dispose() {
// //     _controller?.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Drawer(
// //       backgroundColor: Colors.transparent,
// //         child: PageView.builder(
          
// //           controller: _controller,
// //           physics: NeverScrollableScrollPhysics(), //so the user can not move between pages
// //           itemCount: 2,
// //           itemBuilder: (context, index) {
// //             // Original Drawer
// //             if (index == 0) return MyWidget(
// //                 explore: () => _onChangePage(1),
// //                 settings: () => _onChangePage(2),
// //               );
// //             //Second Drawer form the PageView
// //               switch(myIndex){
// //                 case 1:
// //                   return MyExploreAll(goBack: () => _onChangePage(0));
// //                 case 2:
// //                 default:
// //                   return MySettings(goBack: () => _onChangePage(0));
// //               }
// //           },
// //         )
// //       );
// //   }
// // }

// // //The Menu Drawer (Your first image)
// // class MyWidget extends StatelessWidget {
// //   final VoidCallback explore;
// //   final VoidCallback settings;

// //   MyWidget({this.explore,this.settings});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.all(8.0),
// //       child: CustomScrollView(
// //         slivers: [
// //           SliverList(
// //             delegate: SliverChildListDelegate([
// //                       SizedBox
// //                       (
// //                         height: 90,
// //                       ),
// //                       Align(
// //                         alignment: Alignment.centerLeft,
// //                         child: Container
// //                                 (
// //                                   width: 80,
// //                                   height: 80,
// //                                   margin: EdgeInsets.only
// //                                   (
// //                                     left: 24,
// //                                     top: 24
// //                                   ),
// //                                   clipBehavior: Clip.antiAlias,
// //                                   decoration: BoxDecoration
// //                                   (
// //                                     color: Colors.grey.shade800,
// //                                     shape: BoxShape.circle
// //                                   ),
// //                                   child: CircleAvatar
// //                                   (
// //                                     radius: 80,
// //                                     backgroundColor: Colors.grey,
// //                                     child: ClipOval
// //                                     (
// //                                       child: SizedBox
// //                                       (
// //                                         width: 80,
// //                                         height: 80,
// //                                         child: CircleAvatar(
// //                                             backgroundColor: Appcolor.background,
// //                                             child: Image
// //                                             (
// //                                               image: NetworkImage('https://app.hami.live/static/media/logo.fa40f84cc28cef735cc2.png'),
// //                                             )
// //                                           ),
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 ),
// //                       ),
// //                               SizedBox
// //                               (
// //                                 height: 10,
// //                               ),
// //                               Padding
// //                               (
// //                                 padding: EdgeInsets.only(left: 30),
// //                                 child: Text
// //                                 (
// //                                   'HAMI LAUNCHPAD',
// //                                   style: TextStyle
// //                                   (
// //                                     color: Colors.white,
// //                                     fontWeight: FontWeight.w600
// //                                   ),
// //                                 ),
// //                               ),
// //                       //         Spacer(),
// //                               SizedBox
// //                               (
// //                                 height: 50,
// //                               ),
// //                               Divider(color: Colors.grey.shade800,),

// //               // SizedBox
// //               // (
// //               //   height: 50,
// //               // ),
// //               // Align(
// //               //   alignment: Alignment.centerLeft,
// //               //   child: Row(
// //               //     children: [
// //               //       CircleAvatar(
// //               //           backgroundImage: NetworkImage('https://app.hami.live/static/media/logo.fa40f84cc28cef735cc2.png'),
// //               //           radius: 30,
// //               //         ),
// //               //         SizedBox(width: 10,),
// //               //         Text('HAMI LAUNCHPAD',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900),)
// //               //     ],
// //               //   ),
// //               // ),
// //               // SizedBox
// //               // (
// //               //   height: 20,
// //               // ),
// //               //1
// //               // SizedBox
// //               // (
// //               //   height: 50,
// //               // ),
// //               ExpansionTile
// //                   (
// //                     leading: Icon(Icons.token,color: Colors.white,),
// //                     iconColor: Colors.white,
// //                     collapsedIconColor: Colors.white,
// //                     title: Text('LaunchPad',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
// //                     children: 
// //                     [
// //                       ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Tokens List',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Create Token',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Add Token',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
                        
// //                     ],
// //                     // trailing: ,
// //                   ),
              
// //               //2
// //               ExpansionTile
// //                   (
// //                     leading: Icon(Icons.lock,color: Colors.white,),
// //                     iconColor: Colors.white,
// //                     collapsedIconColor: Colors.white,
// //                     title: Text('Smart Lock',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
// //                     children: 
// //                     [
// //                       ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Locked Tokens',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Locked IP Tokens',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Create Lock',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
                        
// //                     ],
// //                     // trailing: ,
// //                   ),

// //               // const Divider(color: Colors.grey, thickness: 1,),
// //               //3
// //               ExpansionTile
// //                   (
// //                     leading: Icon(Icons.settings,color: Colors.white,),
// //                     iconColor: Colors.white,
// //                     collapsedIconColor: Colors.white,
// //                     title: Text('Services',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
// //                     children: 
// //                     [
// //                       ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Advertise With us',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Marketing Companies',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Smartcontract Auditing',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         //
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Exchange Listing',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Shilliers',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Smartcontract Developers',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Web3 Developers',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Twitter Promoters',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Partner With Us',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
                        
// //                     ],
// //                     // trailing: ,
// //                   ),

            

// //               //4
// //               ExpansionTile
// //                   (
// //                     leading: Icon(Icons.person_add,color: Colors.white,),
// //                     iconColor: Colors.white,
// //                     collapsedIconColor: Colors.white,
// //                     title: Text('Referal',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
// //                     children: 
// //                     [
// //                       ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Share and Earn',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
                        
                        
// //                     ],
// //                     // trailing: ,
// //                   ),
// //               // const Divider(color: Colors.grey, thickness: 1,),
// //               //5
// //               ExpansionTile
// //                   (
// //                     leading: Icon(Icons.notes,color: Colors.white,),
// //                     iconColor: Colors.white,
// //                     collapsedIconColor: Colors.white,
// //                     title: Text('Instructions',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
// //                     children: 
// //                     [
// //                       ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('How to connect Wallet',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('How to create Token',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('How to create Smart Lock',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('How to Participate in Launch',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('How to REdeem Token',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
                        
// //                     ],
// //                     // trailing: ,
// //                   ),
// //               // const Divider(color: Colors.grey, thickness: 1,),

// //               //5
// //               ListTile(
// //                 leading: Icon(Icons.help,color: Colors.white,),
// //                 title: Text('Get Help',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
// //                 // trailing: const Icon(Icons.arrow_forward_ios),
// //                 onTap: settings,
// //               ),

// //               //6
// //               ListTile(
// //                 leading: Icon(Icons.production_quantity_limits,color: Colors.white,),
// //                 title: Text('our Products',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
// //                 // trailing: const Icon(Icons.arrow_forward_ios),
// //                 onTap: settings,
// //               ),

// //               //7
// //               ExpansionTile
// //                   (
// //                     leading: Icon(Icons.more,color: Colors.white,),
// //                     iconColor: Colors.white,
// //                     collapsedIconColor: Colors.white,
// //                     title: Text('More',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
// //                     children: 
// //                     [
// //                       ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Terms And Conditions',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Privacy Policy',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
// //                         SizedBox
// //                         (
// //                           width: 4,
// //                         ),
// //                         ListTile
// //                         (
// //                           leading: Icon(Icons.rectangle_outlined,color: Colors.white,),
// //                           title: Text('Advertisement Policy',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
// //                         ),
                        
// //                     ],
                    
// //                     // trailing: ,
// //                   ),

// //                   SizedBox
// //                   (
// //                     height: 30,
// //                   ),
// //                   Padding(
// //                     padding: const EdgeInsets.only(left:30.0),
// //                     child: Text('Hami Launchpd',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w900),),
// //                   ),
// //                   SizedBox(
// //                     height: 10,
// //                   ),
// //                   Row
// //                   (
// //                     children: 
// //                     [
// //                       Icon(Icons.copyright),
// //                       SizedBox(width: 5,),
// //                       Text('2022 All Rights Reserved',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w500),)
// //                     ],
// //                   )
// //             ])
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }

// // // The settings Drawer(second image)
// // class MySettings extends StatelessWidget {
// //   final VoidCallback goBack;

// //   MySettings({this.goBack});

// //   @override
// //   Widget build(BuildContext context) {
// //     return CustomScrollView(
// //       slivers: [
// //         SliverList(
// //           delegate: SliverChildListDelegate([
// //             ListTile(
// //               leading: const Icon(Icons.arrow_back_ios),
// //               title: Text('Main Menu'),
// //               onTap: goBack,
// //             ),
// //             ListTile(
// //               title: Text('Settings', textScaleFactor: 3,),
// //               onTap: () => print('Settings'),
// //             ),
// //             const Divider(color: Colors.grey, thickness: 1,),
// //             ListTile(
// //               title: Text('Change Country'),
// //               onTap: () => print('Change Country'),
// //             ),
// //             ListTile(
// //               title: Text('ETC'),
// //               onTap: () => print('ETC'),
// //             ),
// //             const Divider(color: Colors.grey, thickness: 1,),
// //             ListTile(
// //               title: Text('Dummy Text'),
// //               onTap: () => print('Dummy Text'),
// //             ),
// //           ])
// //         )
// //       ],
// //     );
// //   }
// // }

// // class MyExploreAll extends StatelessWidget {
// //   final VoidCallback goBack;

// //   MyExploreAll({this.goBack});

// //   @override
// //   Widget build(BuildContext context) {
// //     return CustomScrollView(
// //       slivers: [
// //         SliverList(
// //           delegate: SliverChildListDelegate([
// //             ListTile(
// //               leading: const Icon(Icons.arrow_back_ios),
// //               title: Text('Main Menu'),
// //               onTap: goBack,
// //             ),
// //             ListTile(
// //               title: Text('Explore All', textScaleFactor: 3,),
// //               onTap: () => print('Explore'),
// //             ),
// //             const Divider(color: Colors.grey, thickness: 1,),
// //           ])
// //         )
// //       ],
// //     );
// //   }
// // }


// // class MyInnerDrawer extends StatelessWidget {
// //   final String name;
// //   final PageController _controller;

// //   MyInnerDrawer(this._controller, this.name);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(children: [
// //       ListTile(
// //         title: Text(name),
// //         trailing: const Icon(Icons.arrow_back_ios),
// //         onTap: () => _controller.animateToPage(0,
// //             duration: const Duration(milliseconds: 500), curve: Curves.linear),
// //       )
// //     ]);
// //   }
// // }

