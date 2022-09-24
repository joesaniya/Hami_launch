import 'package:flutter/material.dart';
import 'package:hami_launch/insta_profile/widgets/profile_header_widget.dart';

import '../config.dart';
import 'gallery_screen.dart';
import 'igtv_screen.dart';

class ProfileBaseScreen extends StatefulWidget {
  @override
  _ProfileBaseScreenState createState() => _ProfileBaseScreenState();
}

class _ProfileBaseScreenState extends State<ProfileBaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Appcolor.darkviolte6,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey.shade200,
              ),
            ),
          ),
          child: AppBar(
            backgroundColor: currentTheme.isDark ? Colors.black : Colors.white,
            // backgroundColor: Appcolor.darkviolte6,
            // backgroundColor: currentTheme.isDark ? Colors.white : Colors.black,
            title: Text(
              "jenslin",
              style: TextStyle(
                  color: currentTheme.isDark ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            centerTitle: false,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: currentTheme.isDark ? Colors.white : Colors.black,
              ),
            ),
            elevation: 0,
            actions: [
              IconButton(
                icon: Icon(Icons.add_box_outlined,
                    color: currentTheme.isDark ? Colors.white : Colors.black),
                onPressed: () => print("Add"),
              ),
              IconButton(
                icon: Icon(Icons.menu,
                    color: currentTheme.isDark ? Colors.white : Colors.black),
                onPressed: () => print("Add"),
              )
            ],
          ),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    profileHeaderWidget(context),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: <Widget>[
              Material(
                // color: Appcolor.darkviolte6,
                child: TabBar(
                  labelColor: currentTheme.isDark ? Colors.white : Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorWeight: 3,
                  indicatorColor: Colors.pinkAccent,
                  tabs: const [
                    Tab(
                      text: 'Tokens',
                      icon: Icon(
                        Icons.grid_on_sharp,
                        // color: Colors.white,
                      ),
                    ),
                    Tab(
                      text: 'Saved Tokens',
                      icon: Icon(
                        Icons.task,
                        // color: Colors.white,
                      ),
                      // icon: Image.asset(
                      //   'assets/icons/igtv.png',
                      //   height: 30,
                      //   width: 30,
                      // ),
                    ),
                    Tab(
                      text: 'Locked Tokens',
                      icon: Icon(
                        Icons.done_all,
                        // color: Colors.white,
                      ),
                      // icon: Image.asset(
                      //   'assets/icons/reels.png',
                      //   height: 25,
                      //   width: 25,
                      // ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Gallery(),
                    Igtv(),
                    Igtv(),
                    // Reels(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
