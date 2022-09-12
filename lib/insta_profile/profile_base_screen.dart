import 'package:flutter/material.dart';
import 'package:hami_launch/insta_profile/widgets/profile_header_widget.dart';
import 'package:hami_launch/theme/appcolor.dart';

import 'gallery_screen.dart';
import 'igtv_screen.dart';
import 'reels_screen.dart';


class ProfileBaseScreen extends StatefulWidget {
  @override
  _ProfileBaseScreenState createState() => _ProfileBaseScreenState();
}

class _ProfileBaseScreenState extends State<ProfileBaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.darkviolte6,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey.shade200,
              ),
            ),
          ),
          child: AppBar(
            backgroundColor: Appcolor.darkviolte6,
            title: Text(
              "jenslin",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            centerTitle: false,
            elevation: 0,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.white,
                ),
                onPressed: () => print("Add"),
              ),
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
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
                color: Appcolor.darkviolte6,
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicatorWeight: 3,
                  indicatorColor: Colors.pinkAccent,
                  
                  tabs: [
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