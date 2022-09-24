import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hami_launch/Dialogbox/dialog_helper.dart';
import 'package:hami_launch/config.dart';
import 'package:readmore/readmore.dart';

import '../theme/appcolor.dart';

class ToeknWidget1 extends StatefulWidget {
  const ToeknWidget1({Key? key}) : super(key: key);

  @override
  State<ToeknWidget1> createState() => _ToeknWidget1State();
}

class _ToeknWidget1State extends State<ToeknWidget1> {
  late bool _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: _isLoading
          ? SpinKitDualRing(
              color: Colors.pinkAccent.shade200,
            )
          : Container(
              height: 500,
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  // background image and bottom contents
                  Column(
                    children: <Widget>[
                      Container(
                        height: 120.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: currentTheme.isDark
                                ? Colors.black
                                : Colors.white,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(
                                10,
                              ),
                              topLeft: Radius.circular(
                                10,
                              ),
                            )),
                        child: const ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              10,
                            ),
                            topLeft: Radius.circular(
                              10,
                            ),
                          ),
                          child: Image(
                            image: AssetImage('assets/images/launch_bg.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                color: currentTheme.isDark
                                    ? Colors.black
                                    : Colors.white,
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(
                                    10,
                                  ),
                                  bottomLeft: Radius.circular(
                                    10,
                                  ),
                                )),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, right: 20),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    // crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Image(
                                          width: 30,
                                          height: 30,
                                          image: AssetImage(
                                              'assets/images/lion_meta.png')),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Icon(
                                        Icons.share,
                                        size: 25,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Icon(
                                        Icons.more_vert,
                                        color: Colors.grey,
                                        size: 25,
                                      ),
                                    ],
                                  ),

                                  //Hami
                                  Row(
                                    children: [
                                      const Text(
                                        'HAMI',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Appcolor.darkviolte2),
                                          child: const Icon(
                                            Icons.done,
                                            color: Colors.white,
                                            size: 15,
                                          )),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 100,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            color: Colors.redAccent,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: const Center(
                                          child: Text(
                                            'Trending',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),

                                  //2
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'HAMI',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),

                                  //code
                                  Row(
                                    children: const [
                                      Text(
                                        '0xc19999988888666',
                                        //                     data.split(path.extension(data))[0],
                                        // maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.copy,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),

                                  //text
                                  const ReadMoreText(
                                    'HAMI, also known as Hybrid Autonomous Monetary Infrastructure, is a Blockchain-based project which helps Anyone to Invest, Send or Receive Crypto Instantly without any technical knowledge. HAMI also has Decentralized Crypto Projects, which include NFT Marketplace, Decentralized Exchange, Launchpad, Token Generators, etc. HAMI\'s Ultimate goal is to Create its own Blockchain Network known as Hami Network',
                                    trimLines: 3,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      // fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.justify,
                                    colorClickableText:
                                        Color.fromARGB(255, 29, 8, 78),
                                    trimMode: TrimMode.Line,
                                    trimCollapsedText: ' View more',
                                    trimExpandedText: ' View Less',
                                  ),

                                  //like
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            '120M',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w900),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Total Supply',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),

                                      //deci
                                      Column(
                                        children: const [
                                          Text(
                                            '18',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w900),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Decimal',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            '9',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w900),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Likes',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          log('companyicon');
                                          DialogHelper.exit(context);
                                        },
                                        icon: const Icon(
                                          FontAwesomeIcons.heart,
                                          color: Colors.pinkAccent,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )),
                      )
                    ],
                  ),
                  // Profile image
                  Positioned(
                    left: 20,
                    top: 70,
                    // top:
                    //     150.0, // (background container size) - (circle height / 2)
                    // child: Container(
                    //   height: 100.0,
                    //   width: 100.0,
                    //   decoration: const BoxDecoration(
                    //       shape: BoxShape.circle, color: Colors.green),
                    // ),
                    child: Stack(children: [
                      Container(
                        margin: const EdgeInsets.only(top: 48),
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      const Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            child: CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 38.0,
                                backgroundImage: AssetImage(
                                    'assets/images/launch_lohgo.png'),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 12.0,
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: 15.0,
                                      color: Color(0xFF404040),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )),
                    ]),
                  )
                ],
              ),
            ),
    );
  }
}
