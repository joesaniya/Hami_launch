import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hami_launch/ClaimToken.dart';
import 'package:hami_launch/Owner_Details.dart';
import 'package:hami_launch/contribute.dart';
import 'package:hami_launch/settings.dart';
import 'package:hami_launch/vesting.dart';
import 'package:hami_launch/widgets/posts.dart';
import 'package:line_icons/line_icons.dart';

import '../config.dart';
import '../theme/appcolor.dart';

class Tabwidget extends StatefulWidget {
  const Tabwidget({Key? key}) : super(key: key);

  @override
  State<Tabwidget> createState() => _TabwidgetState();
}

class _TabwidgetState extends State<Tabwidget> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 6, vsync: this);
    return Container(
      // height: 1600,
      height: 500,
      // height: MediaQuery.of(context).size.height * 0.99,
      width: double.infinity,
      color: currentTheme.isDark ? Colors.black : Colors.white,
      child: Column(
        children: [
          Container(
              child: Stack(
            fit: StackFit.passthrough,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.all(Radius.circular(1)),
                  border: Border(
                    bottom: BorderSide(color: Appcolor.Citextbg, width: 2.0),
                  ),
                ),
              ),
              TabBar(
                  labelColor: Colors.deepPurple.shade300,
                  indicatorColor: Colors.deepPurple,
                  isScrollable: true,
                  controller: tabController,
                  // unselectedLabelColor: C,
                  tabs: const [
                    Tab(icon: Icon(LineIcons.rocket), text: 'Contribute'),
                    Tab(icon: Icon(LineIcons.building_o), text: 'Vesting'),
                    Tab(icon: Icon(LineIcons.rupee), text: 'Claim Token'),
                    Tab(icon: Icon(LineIcons.pencil), text: 'Posts'),
                    Tab(icon: Icon(LineIcons.user), text: 'Owner details'),
                    Tab(icon: Icon(FontAwesomeIcons.tools), text: 'Settings')
                  ]),
            ],
          )),
          Expanded(
            child: TabBarView(controller: tabController, children: [
              // Text('1'),
              Contribute(),
              const Vesting(),
              // const Text('2'),
              const ClaimToken(),
              const Poststab(),
              const OwnerDetails(),
              const Settings()
            ]),
          )
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:scroll_navigation/misc/navigation_helpers.dart';
// import 'package:scroll_navigation/navigation/scroll_navigation.dart';

// class ScrollWidget1 extends StatelessWidget {
//   const ScrollWidget1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 500,
//       child: ScrollNavigation(
//         bodyStyle: const NavigationBodyStyle(
//           background: Colors.white,
//           borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
//           scrollDirection: Axis.vertical,
//         ),
//         barStyle: const NavigationBarStyle(
//           position: NavigationPosition.left,
//           elevation: 0.0,
//           background: Colors.white,
//         ),
//         pages: [
//           Container(color: Colors.blue[100]),
//           Container(color: Colors.green[100]),
//           Container(color: Colors.purple[100]),
//           Container(color: Colors.amber[100]),
//           Container(color: Colors.deepOrange[100])
//         ],
//         items: const [
//           ScrollNavigationItem(icon: Icon(Icons.camera)),
//           ScrollNavigationItem(icon: Icon(Icons.chat)),
//           ScrollNavigationItem(icon: Icon(Icons.favorite)),
//           ScrollNavigationItem(icon: Icon(Icons.notifications)),
//           ScrollNavigationItem(icon: Icon(Icons.home))
//         ],
//       ),
//     );
//   }
// }
