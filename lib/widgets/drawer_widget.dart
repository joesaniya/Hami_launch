// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_vector_icons/flutter_vector_icons.dart';
// import 'package:hami_launch/Create/AMA_apply.dart';
// import 'package:hami_launch/Create/Lock_create.dart';
// import 'package:hami_launch/screen/Presale_screen.dart';
// import 'package:hami_launch/screen/auditing_partners.dart';
// import 'package:hami_launch/screen/create_ad.dart';
// import 'package:hami_launch/screen/create_token.dart';
// import 'package:hami_launch/screen/exchange_listing.dart';
// import 'package:hami_launch/screen/inst_connect_wallet.dart';
// import 'package:hami_launch/screen/launchpad_list.dart';
// import 'package:hami_launch/screen/lock.dart';
// import 'package:hami_launch/screen/marketing_companies.dart';
// import 'package:hami_launch/screen/partner_with_us.dart';
// import 'package:hami_launch/screen/share_earn.dart';
// import 'package:hami_launch/screen/smartContract-developers.dart';
// import 'package:hami_launch/screen/spotlight_sidemenu.dart';
// import 'package:hami_launch/screen/token_list.dart';
// import 'package:hami_launch/screen/twitter_promoters.dart';
// import 'package:hami_launch/side_launchpadlistScreens/add_token.dart';
// import 'package:hami_launch/side_launchpadlistScreens/locked_lp_tokens.dart';

// import '../Create/create_token_profile.dart';
// import '../screen/Shillers.dart';
// import '../screen/WebDeveloper.dart';
// import '../screen/spotlight_screen.dart';
// import '../screen/verifykyc_screen.dart';
// import '../theme/appcolor.dart';

// class MyDrawer extends StatefulWidget {
//   @override
//   _DrawerState createState() => _DrawerState();
// }

// class _DrawerState extends State<MyDrawer> {
//   int? myIndex;
//   PageController? _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = PageController(initialPage: 0);
//   }

//   //The Logic where you change the pages
//   _onChangePage(int index) {
//     if (index != 0) {
//       setState(() => myIndex = index);
//     } //change myIndex if you're Selecting between Settings and Explore
//     _controller!.animateToPage(index.clamp(0, 1),
//         duration: const Duration(milliseconds: 500), curve: Curves.linear);
//   }

//   @override
//   void dispose() {
//     _controller?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//         backgroundColor: Colors.transparent,
//         child: PageView.builder(
//           controller: _controller,
//           physics:
//               const NeverScrollableScrollPhysics(), //so the user can not move between pages
//           itemCount: 2,
//           itemBuilder: (context, index) {
//             // Original Drawer
//             if (index == 0) {
//               return MyWidget(
//                 explore: () => _onChangePage(1),
//                 settings: () => _onChangePage(2),
//               );
//             }
//             //Second Drawer form the PageView
//             switch (myIndex) {
//               case 1:
//                 return MyExploreAll(goBack: () => _onChangePage(0));
//               case 2:
//               default:
//                 return MySettings(goBack: () => _onChangePage(0));
//             }
//           },
//         ));
//   }
// }

// //The Menu Drawer (Your first image)
// class MyWidget extends StatelessWidget {
//   final VoidCallback explore;
//   final VoidCallback settings;

//   const MyWidget({required this.explore, required this.settings});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: CustomScrollView(
//         slivers: [
//           SliverList(
//               delegate: SliverChildListDelegate([
//             const SizedBox(
//               height: 90,
//             ),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Container(
//                 width: 80,
//                 height: 80,
//                 margin: const EdgeInsets.only(left: 24, top: 24),
//                 clipBehavior: Clip.antiAlias,
//                 decoration: BoxDecoration(
//                     color: Colors.grey.shade800, shape: BoxShape.circle),
//                 child: CircleAvatar(
//                   radius: 80,
//                   backgroundColor: Colors.grey,
//                   child: ClipOval(
//                     child: SizedBox(
//                       width: 80,
//                       height: 80,
//                       child: CircleAvatar(
//                           backgroundColor: Appcolor.background,
//                           child: const Image(
//                             image: AssetImage('assets/images/logo.png'),
//                             // image: NetworkImage('https://app.hami.live/static/media/logo.fa40f84cc28cef735cc2.png'),
//                           )),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Padding(
//               padding: EdgeInsets.only(left: 30),
//               child: Text(
//                 'HAMI LAUNCHPAD',
//                 style:
//                     TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
//               ),
//             ),
//             //         Spacer(),
//             const SizedBox(
//               height: 50,
//             ),
//             Divider(
//               color: Colors.grey.shade800,
//             ),

//             // SizedBox
//             // (
//             //   height: 50,
//             // ),
//             // Align(
//             //   alignment: Alignment.centerLeft,
//             //   child: Row(
//             //     children: [
//             //       CircleAvatar(
//             //           backgroundImage: NetworkImage('https://app.hami.live/static/media/logo.fa40f84cc28cef735cc2.png'),
//             //           radius: 30,
//             //         ),
//             //         SizedBox(width: 10,),
//             //         Text('HAMI LAUNCHPAD',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900),)
//             //     ],
//             //   ),
//             // ),
//             // SizedBox
//             // (
//             //   height: 20,
//             // ),
//             //1
//             // SizedBox
//             // (
//             //   height: 50,
//             // ),

//             //0
//             ExpansionTile(
//               leading: const Icon(
//                 Icons.add,
//                 color: Colors.white,
//               ),
//               iconColor: Colors.white,
//               collapsedIconColor: Colors.white,
//               title: const Text(
//                 'Create',
//                 style:
//                     TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
//               ),
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('Create Launchpad clicked');
//                       // Navigator.push(
//                       //     context,
//                       //     MaterialPageRoute(
//                       //         builder: (context) => const SideMenuSpotLight()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Create Launchpad',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('Create Token clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const CreateToken()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Create Token',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('Create Token Profile clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) =>
//                                   const CreateTokenProfile()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Create Token Profile',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('1st Create Lock clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const LockCreate()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Create Lock',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('Apply For AMA clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const AMAApply()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Apply For AMA',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//               ],
//               // trailing: ,
//             ),

//             //1
//             ExpansionTile(
//               leading: const Icon(
//                 Icons.token,
//                 color: Colors.white,
//               ),
//               iconColor: Colors.white,
//               collapsedIconColor: Colors.white,
//               title: const Text(
//                 'LaunchPad',
//                 style:
//                     TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
//               ),
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('Spotlight clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const SideMenuSpotLight()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Spotlight',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('launchpad list clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const LaunchPadList()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Launchpad List',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('presale clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const Launchpad()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Create Launchpad',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('Verify kyc clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const VerifyKYC()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Verify KYC',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('spotlight clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const SpotLightScreen()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Submit for Spotlight',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//               ],
//               // trailing: ,
//             ),

//             //2
//             ExpansionTile(
//               leading: const Icon(
//                 FontAwesome.dollar,
//                 color: Colors.white,
//               ),
//               iconColor: Colors.white,
//               collapsedIconColor: Colors.white,
//               title: const Text(
//                 'Tokens',
//                 style:
//                     TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
//               ),
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('Tokens List clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const TokenSList()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Tokens List',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('Create Token clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const CreateToken()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Create Token',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('Import token clicked');
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => AddToken()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Import Token',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//               ],
//               // trailing: ,
//             ),

//             //2
//             ExpansionTile(
//               leading: const Icon(
//                 Icons.lock,
//                 color: Colors.white,
//               ),
//               iconColor: Colors.white,
//               collapsedIconColor: Colors.white,
//               title: const Text(
//                 'Smart Lock',
//                 style:
//                     TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
//               ),
//               children: [
//                 const Padding(
//                   padding: EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: Text(
//                       'Locked Tokens',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('LockedIp clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const LockedLPTokens()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Locked IP Tokens',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('Create lock clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) =>
//                                   // const LockCreate()
//                                   const CreateLock()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Create Lock',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//               ],
//               // trailing: ,
//             ),

//             // const Divider(color: Colors.grey, thickness: 1,),
//             //3
//             ExpansionTile(
//               leading: const Icon(
//                 Icons.settings,
//                 color: Colors.white,
//               ),
//               iconColor: Colors.white,
//               collapsedIconColor: Colors.white,
//               title: const Text(
//                 'Services',
//                 style:
//                     TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
//               ),
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('Advertise With us clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const CreateAd()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Advertise With us',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('Marketing Companies clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) =>
//                                   const MarketingCompanies()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Marketing Companies',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('Auditing partners clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const AuditingPartners()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Auditing Partners',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 //
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('Exchange Listing clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const ExchangeListing()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Exchange Listing',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('shillers clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const Shillers()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Shillers',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('smartContract developers clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) =>
//                                   const SmartContractDevelopers()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Smartcontract Developers',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('WebDevelopers clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => WebDevelopers()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Web3 Developers',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('Twitter Promoters clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const TwitterPromotors()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Twitter Promoters',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('Partner With us clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const PartnerWithUs()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Partner With Us',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//               ],
//               // trailing: ,
//             ),

//             //4
//             ExpansionTile(
//               leading: const Icon(
//                 Icons.person_add,
//                 color: Colors.white,
//               ),
//               iconColor: Colors.white,
//               collapsedIconColor: Colors.white,
//               title: const Text(
//                 'Referal',
//                 style:
//                     TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
//               ),
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('refer and earn clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const ShareAndEarn()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Share and Earn',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//               ],
//               // trailing: ,
//             ),
//             // const Divider(color: Colors.grey, thickness: 1,),
//             //5
//             ExpansionTile(
//               leading: const Icon(
//                 Icons.notes,
//                 color: Colors.white,
//               ),
//               iconColor: Colors.white,
//               collapsedIconColor: Colors.white,
//               title: const Text(
//                 'Instructions',
//                 style:
//                     TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
//               ),
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     onTap: () {
//                       log('connect_wallet clicked');
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const ConnectWallet()));
//                     },
//                     leading: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'How to connect Wallet',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: Text(
//                       'How to create Token',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: Text(
//                       'How to create Smart Lock',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: Text(
//                       'How to Participate in Launch',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(left: 20.0),
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                     title: Text(
//                       'How to REdeem Token',
//                       style: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ),
//               ],
//               // trailing: ,
//             ),
//             // const Divider(color: Colors.grey, thickness: 1,),

//             //5
//             ListTile(
//               leading: const Icon(
//                 Icons.help,
//                 color: Colors.white,
//               ),
//               title: const Text(
//                 'Get Help',
//                 style:
//                     TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
//               ),
//               // trailing: const Icon(Icons.arrow_forward_ios),
//               onTap: settings,
//             ),

//             //6
//             ListTile(
//               leading: const Icon(
//                 Icons.production_quantity_limits,
//                 color: Colors.white,
//               ),
//               title: const Text(
//                 'our Products',
//                 style:
//                     TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
//               ),
//               // trailing: const Icon(Icons.arrow_forward_ios),
//               onTap: settings,
//             ),

//             //7
//             const ExpansionTile(
//               leading: Icon(
//                 Icons.more,
//                 color: Colors.white,
//               ),
//               iconColor: Colors.white,
//               collapsedIconColor: Colors.white,
//               title: Text(
//                 'More',
//                 style:
//                     TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
//               ),
//               children: [
//                 ListTile(
//                   leading: Icon(
//                     Icons.remove,
//                     color: Colors.white,
//                   ),
//                   title: Text(
//                     'Terms And Conditions',
//                     style: TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.w400),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 4,
//                 ),
//                 ListTile(
//                   leading: Icon(
//                     Icons.remove,
//                     color: Colors.white,
//                   ),
//                   title: Text(
//                     'Privacy Policy',
//                     style: TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.w400),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 4,
//                 ),
//                 ListTile(
//                   leading: Icon(
//                     Icons.remove,
//                     color: Colors.white,
//                   ),
//                   title: Text(
//                     'Advertisement Policy',
//                     style: TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.w400),
//                   ),
//                 ),
//               ],

//               // trailing: ,
//             ),

//             const SizedBox(
//               height: 30,
//             ),
//             const Padding(
//               padding: EdgeInsets.only(left: 30.0),
//               child: Text(
//                 'Hami Launchpd',
//                 style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w900),
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: const [
//                 Icon(Icons.copyright),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 Text(
//                   '2022 All Rights Reserved',
//                   style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500),
//                 )
//               ],
//             )
//           ]))
//         ],
//       ),
//     );
//   }
// }

// // The settings Drawer(second image)
// class MySettings extends StatelessWidget {
//   final VoidCallback goBack;

//   const MySettings({required this.goBack});

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: [
//         SliverList(
//             delegate: SliverChildListDelegate([
//           ListTile(
//             leading: const Icon(Icons.arrow_back_ios),
//             title: const Text('Main Menu'),
//             onTap: goBack,
//           ),
//           ListTile(
//             title: const Text(
//               'Settings',
//               textScaleFactor: 3,
//             ),
//             onTap: () => print('Settings'),
//           ),
//           const Divider(
//             color: Colors.grey,
//             thickness: 1,
//           ),
//           ListTile(
//             title: const Text('Change Country'),
//             onTap: () => print('Change Country'),
//           ),
//           ListTile(
//             title: const Text('ETC'),
//             onTap: () => print('ETC'),
//           ),
//           const Divider(
//             color: Colors.grey,
//             thickness: 1,
//           ),
//           ListTile(
//             title: const Text('Dummy Text'),
//             onTap: () => print('Dummy Text'),
//           ),
//         ]))
//       ],
//     );
//   }
// }

// class MyExploreAll extends StatelessWidget {
//   final VoidCallback goBack;

//   const MyExploreAll({required this.goBack});

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: [
//         SliverList(
//             delegate: SliverChildListDelegate([
//           ListTile(
//             leading: const Icon(Icons.arrow_back_ios),
//             title: const Text('Main Menu'),
//             onTap: goBack,
//           ),
//           ListTile(
//             title: const Text(
//               'Explore All',
//               textScaleFactor: 3,
//             ),
//             onTap: () => print('Explore'),
//           ),
//           const Divider(
//             color: Colors.grey,
//             thickness: 1,
//           ),
//         ]))
//       ],
//     );
//   }
// }

// class MyInnerDrawer extends StatelessWidget {
//   final String name;
//   final PageController _controller;

//   const MyInnerDrawer(this._controller, this.name);

//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//       ListTile(
//         title: Text(name),
//         trailing: const Icon(Icons.arrow_back_ios),
//         onTap: () => _controller.animateToPage(0,
//             duration: const Duration(milliseconds: 500), curve: Curves.linear),
//       )
//     ]);
//   }
// }
