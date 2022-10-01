import 'dart:developer';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wave_transition/wave_transition.dart';

import '../config.dart';
import '../models/alertnetwork.dart';
import 'view_detail_token.dart';

class TrendingTokens extends StatefulWidget {
  const TrendingTokens({Key? key}) : super(key: key);

  @override
  State<TrendingTokens> createState() => _TrendingTokensState();
}

class _TrendingTokensState extends State<TrendingTokens> {
  late bool _isLoading;
  final toast = FToast();

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 2), () async {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();

    toast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: _isLoading
            ? SpinKitDualRing(
                color: Colors.pinkAccent.shade200,
              )
            : ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  );
                },
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: TLIst.length,
                itemBuilder: (context, index) {
                  return Container(
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
                              decoration: const BoxDecoration(
                                  color: Colors.blueGrey,
                                  // color: currentTheme.isDark
                                  //     ? Colors.black
                                  //     : Colors.white,
                                  borderRadius: BorderRadius.only(
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
                              ),
                              // child: const Center(
                              //   child: Text('Background image goes here'),
                              // ),
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
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          TLIst[index].title,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: currentTheme.isDark
                                                  ? Colors.white
                                                  : Colors.black,
                                              // color: Colors.black,
                                              fontSize: 20),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          TLIst[index].subtitle,
                                          style: const TextStyle(
                                              // color: currentTheme.isDark
                                              //     ? Colors.black
                                              //     : Colors.black,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20),
                                        ),
                                        //
                                      ],
                                    ),

                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          TLIst[index].address.substring(0, 5),
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            // color: currentTheme.isDark
                                            //     ? Colors.black
                                            //     : Colors.black,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),

                                        IconButton(
                                            onPressed: () {
                                              log('read clicked');

                                              Clipboard.setData(const ClipboardData(
                                                      text:
                                                          '0xC19C2db89e5A8c49570fE52B988376C8057993d8'))
                                                  .then((_) {
                                                showtoptoast();
                                              });
                                            },
                                            icon: const Icon(
                                              Icons.copy,
                                              color: Colors.grey,
                                            ))
                                        // const Icon(
                                        //   Iconsax.copy,
                                        //   color: Colors.grey,
                                        // )
                                      ],
                                    ),

                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 40,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.red),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              EvaIcons.hash,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            Text(
                                              'Trending',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),

                                    //hardcap
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            TLIst[index].Supply,
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            TLIst[index].supplyno,
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 20),
                                          )
                                        ],
                                      ),
                                    ),

                                    //soft cap
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            TLIst[index].decimals,
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            TLIst[index].decno,
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 20),
                                          )
                                        ],
                                      ),
                                    ),

                                    //seeding
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            TLIst[index].type,
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            TLIst[index].Typename,
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 20),
                                          )
                                        ],
                                      ),
                                    ),

                                    //timer
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(
                                              children: const [
                                                Icon(
                                                  Icons.arrow_drop_up,
                                                  color: Colors.greenAccent,
                                                ),
                                                Text(
                                                  '\$0',
                                                  style: TextStyle(
                                                      color: Colors.greenAccent,
                                                      fontSize: 20),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Iconsax.heart,
                                                  color: Colors.red,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  TLIst[index].heart,
                                                  style: TextStyle(
                                                      color: currentTheme.isDark
                                                          ? Colors.white
                                                          : Colors.black,
                                                      fontSize: 20),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    log('view token clicked');
                                                    Navigator.push(
                                                        context,
                                                        WaveTransition(
                                                            child:
                                                                const ViewToken(),
                                                            center:
                                                                const FractionalOffset(
                                                                    0.90, 0.90),
                                                            duration: const Duration(
                                                                seconds: 1
                                                                // milliseconds:
                                                                //     3000
                                                                ) // optional
                                                            ));
                                                  },
                                                  child: Container(
                                                    height: 40,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.deepPurple,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: const Center(
                                                      child: Text(
                                                        'View Token',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                // child: const Center(
                                //   child: Text('Content goes here'),
                                // ),
                              ),
                            )
                          ],
                        ),
                        // Profile image
                        Positioned(
                          top: 70,
                          // top:
                          //     150.0, // (background container size) - (circle height / 2)
                          child: Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.deepPurple),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image(
                                image: AssetImage(TLIst[index].Profileimage),
                                // image: AssetImage(
                                //     'assets/images/launch_lohgo.png')
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ));
  }

  void showtoptoast() {
    log('showtotoat');
    toast.showToast(child: buildToast(), gravity: ToastGravity.BOTTOM);
  }

  Widget buildToast() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
            color: Colors.deepPurple, borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              EvaIcons.doneAll,
              color: Colors.white,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'Referal Code Copied',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      );
}
