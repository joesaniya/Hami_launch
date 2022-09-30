import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hami_launch/config.dart';
import 'package:hami_launch/models/alertnetwork.dart';
import 'package:readmore/readmore.dart';

import '../Dialogbox/dialog_helper.dart';
import '../theme/appcolor.dart';

class DetailAuditingPartners extends StatefulWidget {
  const DetailAuditingPartners({Key? key}) : super(key: key);

  @override
  State<DetailAuditingPartners> createState() => _DetailAuditingPartnersState();
}

class _DetailAuditingPartnersState extends State<DetailAuditingPartners> {
  List<Auditor>? Auddata;

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
              "Auditing Page",
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
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            children: [
              Container(
                height: 300,
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
                              color: Colors.blueGrey.shade100,
                              // color: currentTheme.isDark
                              //     ? Colors.black
                              //     : Colors.white,
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
                            // child: Image(
                            //   image: AssetImage('assets/images/launch_bg.jpg'),
                            //   fit: BoxFit.cover,
                            // ),
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
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    //Hami
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Text(
                                                'Expelee Auditors',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: currentTheme.isDark
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                  height: 20,
                                                  width: 20,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color:
                                                          Appcolor.darkviolte2),
                                                  child: const Icon(
                                                    Icons.done,
                                                    color: Colors.white,
                                                    size: 15,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 30,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.blue,
                                                ),
                                                alignment: Alignment.center,
                                                child: const Icon(
                                                  FontAwesomeIcons.twitter,
                                                  color: Colors.white,
                                                  size: 13,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                height: 30,
                                                width: 30,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.blueGrey,
                                                ),
                                                alignment: Alignment.center,
                                                child: const Icon(
                                                  FontAwesomeIcons.telegram,
                                                  color: Colors.white,
                                                  size: 13,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                height: 30,
                                                width: 30,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.green,
                                                ),
                                                alignment: Alignment.center,
                                                child: const Icon(
                                                  FontAwesomeIcons.globe,
                                                  color: Colors.white,
                                                  size: 13,
                                                ),
                                              ),
                                              // const CircleAvatar(
                                              //   radius: 20,
                                              //   backgroundColor: Colors.green,
                                              //   child: Icon(
                                              //     FontAwesomeIcons.globe,
                                              //     color: Colors.white,
                                              //   ),
                                              // )
                                              // CircleAvatar
                                              // (
                                              //   backgroundImage: AssetImage('assets/images/terra.png'),
                                              // )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),

                                    //2
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: GestureDetector(
                                        onTap: () {
                                          log('connectWallet');
                                          DialogHelper.exit(context);
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 160,
                                          decoration: BoxDecoration(
                                              color: Colors.deepPurple,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              // Icon(
                                              //   Icons.report,
                                              //   color: Colors.white,
                                              // ),
                                              Image.asset(
                                                  'assets/images/report.png',
                                                  height: 18,
                                                  color: Colors.white),
                                              const Text(
                                                'Apply For Auditing',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
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
                            child: CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 38.0,
                                backgroundImage:
                                    AssetImage('assets/images/aud1.png'),
                              ),
                            )),
                      ]),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: currentTheme.isDark ? Colors.black : Colors.white,
                ),

                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Description',
                          style: TextStyle(
                              color: currentTheme.isDark
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              height: 1.5),
                          textAlign: TextAlign.left,
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      ReadMoreText(
                        'Securing DeFi Project and Blackchain Protocol Cognitos is the next generation of bockchain security. Collaborating with The Eyes, a top-class AI technology Cognitos has designed the standards or requerements verification to monitor and analyze DiFi project and Blockchain Protocol such us smart contract, Web3 apps, and NFT. Background Blockchain industry grows fast, especially in 2020 - 2022. And blockchain tecnology is decentralize, however it has no security guarantee due to the decentralization. Scammers take adventage of the opportunity. Not only investors, some project companies suffered losses due to the fact that developer and team do not really know their smart contract’s deficiency and investors can not take control it. Mission The Eyes, a technology that Cognitos has developed using the top-class AI technology collaborating with Cognitos’ team to map out and detect system deficiencies. The audit result may help developers to improve and ensure the security such as NFT, DApps, or smart contract that they offer to the investors. Furthermore, the audit result convices the investor and gain their trust. It provides a sense of security when they do their own research and know more about the project that they want to invest on.',
                        trimLines: 8,
                        style: const TextStyle(
                          height: 1.5,
                          color: Colors.grey,
                          // fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.justify,
                        colorClickableText: Appcolor.darkviolte4,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: '...Show more',
                        trimExpandedText: ' Show Less',
                      ),

                      const SizedBox(
                        height: 30,
                      ),

                      Text(
                        '8',
                        style: TextStyle(
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      const Text(
                        'Total Audited',
                        style: TextStyle(
                          color: Colors.grey,
                          // fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),

                      //reports
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // height: MediaQuery.of(context).size.height*0.30,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: currentTheme.isDark ? Colors.black : Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/report.png',
                            height: 18,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                          // Icon
                          // (
                          //   FontAwesomeIcons.file,
                          //   color: Colors.white
                          // ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Recent Reports',
                            style: TextStyle(
                                height: 1.5,
                                color: currentTheme.isDark
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.005,
                        width: double.infinity,
                        color: Appcolor.darkviolte,
                        child: Row(
                          children: [
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.005,
                              // width: 100,
                              width: MediaQuery.of(context).size.width * 0.40,
                              color: Appcolor.darkviolte4,
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        width: MediaQuery.of(context).size.width,
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemCount: Auditor1.length,
                          physics: const NeverScrollableScrollPhysics(),
                          separatorBuilder: (context, index) {
                            return const SizedBox(height: 16);
                          },
                          itemBuilder: (context, index) {
                            return SingleChildScrollView(
                              child:
                                  // Auditor1.length==0?CircularProgressIndicator():
                                  GestureDetector(
                                onTap: () {
                                  log('report');
                                  log(Auditor1.length.toString());
                                },
                                // onTap: ()=>selectMeal(context),

                                child: Container(
                                  // height: 90,
                                  height: 120,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Appcolor.whiteSoft,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      // Recipe Photo
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.blueGrey,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                Auditor1[index].image,
                                              ),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      // Recipe Info
                                      Flexible(
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // Recipe title
                                              Row(
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            bottom: 12),
                                                    child: Text(
                                                      Auditor1[index].title,
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: 'inter',
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 15,
                                                  ),
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            bottom: 12),
                                                    child: Text(
                                                      Auditor1[index].subtitle,
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: 'inter',
                                                          fontSize: 13,
                                                          color: Colors.grey),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              // Recipe Calories and Time

                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 10.0),
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 5),
                                                  // child:Text(calories!=null?calories:'$calories'),
                                                  child: Text(
                                                    Auditor1[index].Description,
                                                    style: const TextStyle(
                                                        fontSize: 12),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),

                                              //button
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 40,
                                                child: OutlinedButton(
                                                  onPressed: () {
                                                    // showModalBottomSheet(
                                                    //   context: context,
                                                    //   backgroundColor: Colors.white,
                                                    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                                                    //   isScrollControlled: true,
                                                    //   builder: (context) {
                                                    //     return LoginModal();
                                                    //   },
                                                    // );
                                                  },
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                    side: BorderSide(
                                                        color: Appcolor
                                                            .secondary
                                                            .withOpacity(0.5),
                                                        width: 1),
                                                    primary: Colors.white,
                                                  ),
                                                  child: const Text(
                                                      'view Report',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .deepPurpleAccent,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: 'inter')),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                            // return RecentReports(

                            //   title: Auddata![index].title,
                            //   subtitle: Auddata![index].subtitle,
                            //   image: Auddata![index].image,
                            //   Description: Auddata![index].Description,

                            //   // removeItem: _removeMeal,
                            // );
                          },
                        ),
                      ),

                      //no post
                      // Container
                      // (
                      //   height: MediaQuery.of(context).size.height*0.20,
                      //   width: double.infinity,
                      //   color: Colors.transparent,
                      //   child: Center(
                      //     child: Text
                      //     (
                      //       'No Posts Found',
                      //       style: TextStyle
                      //       (
                      //         fontSize: 18,
                      //         color: Colors.white
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
