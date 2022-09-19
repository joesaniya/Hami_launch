import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hami_launch/models/alertnetwork.dart';
import 'package:hami_launch/screen/recent_reports.dart';
import 'package:readmore/readmore.dart';

import '../Dialogbox/dialog_helper.dart';
import '../theme/appcolor.dart';
import '../widgets/appbar_widget.dart';

class DetailAuditingPartners extends StatefulWidget {
  const DetailAuditingPartners({Key? key}) : super(key: key);

  @override
  State<DetailAuditingPartners> createState() => _DetailAuditingPartnersState();
}

class _DetailAuditingPartnersState extends State<DetailAuditingPartners> {
  
  List<Auditor>? Auddata;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Appcolor.darkviolte6,
      appBar: MyAppBar(title: 'Auditing Partners'),
      body: SingleChildScrollView
      (
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20),
          child: Column
          (
            children: 
            [
              Container
              (
                // height: MediaQuery.of(context).size.height*0.20,
                // width: double.infinity,
                decoration: BoxDecoration
                  (
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Appcolor.background
                  ),
                  child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage('assets/images/cogo.png',),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(

                  bottom: 0.0,
                  // left: MediaQuery.of(context).size.width / 2 - 20,
          //         child: Container(
          //    width: 70.0,
          //    height: 70.0,
          //    decoration: BoxDecoration(
          //     //  color: const Color(0xff7c94b6),
          //      image: DecorationImage(
          //        image: NetworkImage('assets/images/cogo_logo.png'),
          //        fit: BoxFit.cover,
          //      ),
          //      borderRadius: BorderRadius.all( Radius.circular(50.0)),
          //      border: Border.all(
          //        color: Colors.grey,
          //        width: 2.0,
          //      ),
          //    ),
          //  )
          child: CircleAvatar(               
            backgroundColor: Colors.white,
            radius: 30.0,
              child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/cogo_logo.png'),
              radius: 28.0,
              ),
            ),
                ),

                
              ],
            ),

            SizedBox
            (
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text
                    (
                      'Cognitos',
                      style: TextStyle
                      (
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 20
                        
                      ),
                      textAlign: TextAlign.left,
                    ),

                    SizedBox
                    (
                      width: 10,
                    ),
                   Container
                   (
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue
                    ),
                    child: Center
                    (
                      child: Icon(Icons.done,size: 15,color: Colors.white,)
                    ),
                   )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: ()
                  {
                    log('apply auditing clicked');
                    DialogHelper.exit(context);
                  },
                  child: Container
                  (
                    height: 30,
                    width: 200,
                    decoration: BoxDecoration
                    (
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.deepPurple
                    ),
                    child: Row
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: 
                      [
                        Icon(Icons.note_add,color: Colors.white,),
                        Text
                        (
                          'APPLY FOR AUDITING',
                          style: TextStyle
                          (
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 18
                            
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),
            
          ],
        ),
              ),

              SizedBox
              (
                height: 20,
              ),

              Container
              (
                // height: 200,
                width: double.infinity,
                decoration: BoxDecoration
                  (
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Appcolor.background
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: 
                      [

                        
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text
                                              (
                          'Description',
                          style: TextStyle
                          (
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20
                            
                          ),
                          textAlign: TextAlign.left,
                                              ),
                        ),

                        SizedBox
                        (
                          height: 10,
                        ),

                        ReadMoreText(
                        'Securing DeFi Project and Blackchain Protocol Cognitos is the next generation of bockchain security. Collaborating with The Eyes, a top-class AI technology Cognitos has designed the standards or requerements verification to monitor and analyze DiFi project and Blockchain Protocol such us smart contract, Web3 apps, and NFT. Background Blockchain industry grows fast, especially in 2020 - 2022. And blockchain tecnology is decentralize, however it has no security guarantee due to the decentralization. Scammers take adventage of the opportunity. Not only investors, some project companies suffered losses due to the fact that developer and team do not really know their smart contract’s deficiency and investors can not take control it. Mission The Eyes, a technology that Cognitos has developed using the top-class AI technology collaborating with Cognitos’ team to map out and detect system deficiencies. The audit result may help developers to improve and ensure the security such as NFT, DApps, or smart contract that they offer to the investors. Furthermore, the audit result convices the investor and gain their trust. It provides a sense of security when they do their own research and know more about the project that they want to invest on.',
                        trimLines: 8,
                        style: TextStyle
                          (
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

                      SizedBox
                      (
                        height: 30,
                      ),

                      Text
                      (
                        '8',
                        style: TextStyle
                          (
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                      ),

                      SizedBox
                      (
                        height: 10,
                      ),

                      Text
                      (
                        'Total Audited',
                        style: TextStyle
                          (
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

              SizedBox
              (
                height: 20,
              ),

              Container
              (
                // height: MediaQuery.of(context).size.height*0.30,
                width: double.infinity,
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Appcolor.background
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: 
                    [
                      Row
                      (
                        children: 
                        [
                          Image.asset
                          (
                            'assets/images/report.png',
                            height: 18,
                            color: Colors.white,
                          ),
                          // Icon
                          // (
                          //   FontAwesomeIcons.file,
                          //   color: Colors.white
                          // ),
                          SizedBox
                          (
                            width: 10,
                          ),
                          Text
                          (
                            'Recent Reports',
                            style: TextStyle
                            (
                              color: Colors.white,
                              fontSize: 18
                            ),
                          )
                        ],
                      ),
                      SizedBox
                      (
                        height: 10,
                      ),
                      Container
                      (
                        height: MediaQuery.of(context).size.height*0.005,
                        width: double.infinity,
                        color: Appcolor.darkviolte,
                        child: Row
                        (
                          children: 
                          [
                            Container
                            (
                              height: MediaQuery.of(context).size.height*0.005,
                              // width: 100,
                              width: MediaQuery.of(context).size.width*0.40,
                              color: Appcolor.darkviolte4,
                            )
                          ],
                        ),
                      ),
                      Container(
                      padding: EdgeInsets.all(16),
                      width: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: Auditor1.length,
                        physics: NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 16);
                        },
                        itemBuilder: (context, index) {

                          return SingleChildScrollView(
                            child: 
                            // Auditor1.length==0?CircularProgressIndicator():
                            GestureDetector(
                              onTap: ()
                              {
                                log('report');
                                log(Auditor1.length.toString());
                              },
                            // onTap: ()=>selectMeal(context),
                            
                            child: Container(
                              // height: 90,
                              height: 120,
                              padding: EdgeInsets.all(10),
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
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blueGrey,
                                      image: DecorationImage(image: AssetImage(Auditor1[index].image,), fit: BoxFit.cover),
                                    ),
                                  ),
                                  // Recipe Info
                                  Flexible(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 10),
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          // Recipe title
                                          Row
                                          (
                                            children: 
                                            [
                                              Container(
                                                margin: EdgeInsets.only(bottom: 12),
                                                child: Text(
                                                  Auditor1[index].title,
                                                  style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'inter',fontSize: 15),
                                                ),
                                              ),

                                              SizedBox
                                              (
                                                width: 15,
                                              ),

                                              Container(
                                                margin: EdgeInsets.only(bottom: 12),
                                                child: Text(
                                                  Auditor1[index].subtitle,
                                                  style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'inter',fontSize: 13,color: Colors.grey),
                                                ),
                                              ),
                                            ],
                                          ),
                                          // Recipe Calories and Time
                                          
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 10.0),
                                            child: Container(
                                              margin: EdgeInsets.only(left: 5),
                                              // child:Text(calories!=null?calories:'$calories'),
                                              child: Text(
                                                Auditor1[index].Description,
                                                style: TextStyle(fontSize: 12),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                          

                                          

                                          //button
                                          SizedBox(
                                            width: MediaQuery.of(context).size.width,
                                            height: 40,
                                            child: OutlinedButton(
                                              child: Text('view Report', style: TextStyle
                                              (
                                                color: Colors.deepPurpleAccent, 
                                                fontSize: 16, 
                                                fontWeight: FontWeight.w600, 
                                                fontFamily: 'inter'
                                              )
                                              ),
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
                                              style: OutlinedButton.styleFrom(
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                                side: BorderSide(color: Appcolor.secondary.withOpacity(0.5), width: 1),
                                                primary: Colors.white,
                                              ),
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