import 'package:flutter/material.dart';
import 'package:hami_launch/walletconnectalert/QRcode.dart';
import 'package:hami_launch/walletconnectalert/searchwallet.dart';

import '../searchPage/search_company.dart';
import '../searchPage/sponsored.dart';
import '../theme/appcolor.dart';

class WalletConnect extends StatefulWidget {
  const WalletConnect({Key? key}) : super(key: key);

  @override
  State<WalletConnect> createState() => _WalletConnectState();
}

class _WalletConnectState extends State<WalletConnect> {
  bool _flag = true;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) 
  {
    return Container(
      height: MediaQuery.of(context).size.height*0.70,
      width: double.infinity,
      // color: Appcolor.background,
      decoration: BoxDecoration
      (
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox
            (
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15),
                child: Container(
                   width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.07,
                decoration: BoxDecoration(
                  color: Appcolor.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              _flag = !_flag;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left:3.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.06,  
                               decoration: BoxDecoration(
                                  color: _flag ? Colors.white : Appcolor.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                  
                                ),
                              // height: 50,
                              // width: 150,
                              child: Center
                              (
                                child: Text('Qr Code',
                                  style: TextStyle(
                                    fontFamily: 'PT Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: _flag?Colors.black:Colors.black
                                  ),
                                )
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              _flag = !_flag;
                            });
                            // buildLastJob(Pay[]);

                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right:3.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.06,  
                               decoration: BoxDecoration(
                                  color: _flag ? Appcolor.grey : Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                  
                                ),
                              child: Center
                              (
                                child: Text
                                (
                                  'Desktop',
                                  style: TextStyle(
                                    fontFamily: 'PT Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: _flag?Colors.black:Colors.black
                                  ),
                                )
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Expanded(child: Container())
                    ],
                  ),

                  // buildLastJobs()

                ),
              ),

              SingleChildScrollView
              (
                child: _flag?QRCode():SearchWallet()
              )
              // SingleChildScrollView
              // (
              //   child: _flag?Column
              //   (
              //     children: buildLastJobs(),
              //   )
              //   :
              //   Column
              //   (
              //     children: completedbuildLastJobs(),
              //   )
              // )
          ],
        ),
      ),
    );
  }
}