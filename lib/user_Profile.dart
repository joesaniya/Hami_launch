import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'config.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Profile Page",
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
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: currentTheme.isDark ? Colors.black : Colors.white,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade100,
                            child: const Icon(EvaIcons.person),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Anonymouses User',
                                style: TextStyle(
                                    color: currentTheme.isDark
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'ID:',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    '1235467890',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          )
                        ]),
                      ),

                      const SizedBox(
                        width: 20,
                      ),

                      //Con
                      Flexible(
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.orangeAccent.shade100),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(FontAwesomeIcons.remove,
                                  size: 20, color: Colors.orange),
                              Text(
                                'UnVerified',
                                style: TextStyle(color: Colors.orange),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.shade100,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.warning),
                          Flexible(
                            child: Text(
                              'You are required to complete Intermediate Verification to access Binance service.',
                              style: TextStyle(height: 1.5),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.01,
            // ),
            const ListTile(
              leading: Icon(
                Icons.task,
                color: Colors.grey,
              ),
              title: Text(
                'Task Center',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 15,
              ),
            ),

            //2
            const ListTile(
              leading: Icon(
                Icons.card_giftcard,
                color: Colors.grey,
              ),
              title: Text(
                'Reward Center',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 15,
              ),
            ),

            //refe
            const ListTile(
              leading: Icon(
                EvaIcons.personAdd,
                color: Colors.grey,
              ),
              title: Text(
                'Referral',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 15,
              ),
            ),

            //pay
            const ListTile(
              leading: Icon(
                Icons.payment,
                color: Colors.grey,
              ),
              title: Text(
                'Pay',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 15,
              ),
            ),

            //gift
            const ListTile(
              leading: Icon(
                FontAwesomeIcons.gifts,
                color: Colors.grey,
              ),
              title: Text(
                'Gift Card',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 15,
              ),
            ),

            //my gifts
            const ListTile(
              leading: Icon(
                EvaIcons.giftOutline,
                color: Colors.grey,
              ),
              title: Text(
                'My Gifts',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 15,
              ),
            ),

            const Divider(
              color: Colors.grey,
            ),
            //noti
            const ListTile(
              leading: Icon(
                EvaIcons.bell,
                color: Colors.grey,
              ),
              title: Text(
                'Notifications',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 15,
              ),
            ),

            //payment
            const ListTile(
              leading: Icon(
                FontAwesomeIcons.moneyBill1,
                color: Colors.grey,
              ),
              title: Text(
                'Payment Methods',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
