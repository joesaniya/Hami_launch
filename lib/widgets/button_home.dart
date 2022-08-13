import 'package:flutter/material.dart';
import '../screen/token-detail.dart';
import '/theme/appcolor.dart';

import '../models/job.dart';

class ButtonHome extends StatefulWidget {
  const ButtonHome({Key? key}) : super(key: key);
  // final String name;
  // const ButtonHome
  // (
  //   this.name,
  // );

  @override
  State<ButtonHome> createState() => _ButtonHomeState();
}

class _ButtonHomeState extends State<ButtonHome> {
  bool _flag =true;
  //token
  List<Shift> shift = getShift();

  List<Widget> buildLastJobs(){
    List<Widget> list = [];
    for (var i = shift.length - 1; i > -1; i--) {
      list.add(buildLastJob(shift[i]));
    }
    return list;
  }

    Widget buildLastJob(Shift shift){
    return Column(
      children: [
        GestureDetector(
          onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => ToenDetail()
                  // ToenDetail('name':shift.heading)
                  )
                  
                  ));
                },
          child: Container
          (
            height: 40,
            width: double.infinity,
            color: Colors.transparent,
            
            child: Row
            (
              children: 
              [
                Container(
                  height: 20,
                  width: 40,
                  color: Colors.transparent,
                  child: Text
                  (
                    shift.heading,
                    style: TextStyle
                    (
                      color: Colors.white
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container
                (
                  height: 20,
                  width: 40,
                  decoration: BoxDecoration
                  (
                    color: Appcolor.darkviolte1,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Center
                  (
                    child: Text
                    (
                      shift.subheading,
                      style: TextStyle(color: Colors.white),
                    )
                  ),
                ),
                // Spacer(),
                SizedBox
                (
                  width: 10,
                ),
                Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration
                (
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: Center(
                  child: Text
                  (
                    shift.supply,
                    style: TextStyle
                    (
                      color: Colors.white
                    ),
                  ),
                ),
                ),
                // Expanded(
                //   child: Text
                //   (
                //     shift.supply,
                //     style: TextStyle
                //     (
                //       color: Colors.white
                //     ),
                //   ),
                // ),
                // SizedBox
                // (
                //   width: 30,
                // ),
                Spacer(),
                Container(
                  height: 30,
                  width: 40,
                  decoration: BoxDecoration
                  (
                    // color: Colors.pinkAccent,
                    color: shift.status=='Standard'?Colors.pinkAccent: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all
                    (
                      color: Appcolor.darkviolte3
                    )
                  ),
                  child: Center(
                    child: Text
                    (
                      'View',
                      style: TextStyle
                      (
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }


  //project
   List<Shift1> shift1 = getShift1();

  List<Widget> buildLastJobs1(){
    List<Widget> list = [];
    for (var i = shift1.length - 1; i > -1; i--) {
      list.add(buildLastJob1(shift1[i]));
    }
    return list;
  }

    Widget buildLastJob1(Shift1 shift1){
    return Column(
      children: [
        Container
        (
          height: 40,
          width: double.infinity,
          color: Colors.transparent,
          child: Row
          (
            children: 
            [
              Container(
                height: 20,
                width: 40,
                color:Colors.transparent,
                child: Text
                (
                  shift1.heading,
                  style: TextStyle
                  (
                    color: Colors.white
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container
              (
                height: 30,
                width: 60,
                decoration: BoxDecoration
                (
                  // color: shift1.sale=='Live'?Appcolor.darkviolte1:Shift1.sale=='Ended'?Colors.transparent:Colors.grey,
                  // color: Appcolor.darkviolte1,
                  color: shift1.status=='Live'?Colors.red:Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Center
                (
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8),
                    child: FittedBox(
                      child: Text
                      (
                        shift1.status,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ),
              ),
              SizedBox
              (
                width: 80,
                // width:100
              ),
              Container(
                height: 20,
                width: 40,
                color:Colors.transparent,
                child: Text
                (
                  shift1.supply,
                  style: TextStyle
                  (
                    color: Colors.white
                  ),
                ),
              ),
              // SizedBox
              // (
              //   width: 30,
              // ),
              Spacer(),
              Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration
                (
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8),
                    child: Text
                    (
                      shift1.Ltime,
                      style: TextStyle
                      (
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox
          (
            height: 30,
            width: double.infinity,
            // color: Colors.red,
            child: Row
            (
              children: 
              [
                SizedBox
                (
                  width: 10,
                ),
                GestureDetector(
                  onTap: ()
                  {
                    setState(() {
                      _flag = !_flag;
                    });
                  },
                  child: Container
                  (
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration
                    (
                      // color: Appcolor.background,
                      color: _flag?Appcolor.background:Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Center(
                      child: Text
                      (
                        'Tokens',
                        style: TextStyle
                        (
                          color: _flag?Colors.white:Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox
                (
                  width: 20,
                ),
                
                //2
                GestureDetector(
                  onTap: (){
                                  setState(() {
                                    _flag = !_flag;
                                  });
                                  // buildLastJob(Pay[]);
    
                                },
                  child: Container
                  (
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration
                    (
                      color: _flag ? Colors.transparent : Appcolor.background,
                      // color: Appcolor.background,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Center(
                      child: Text
                      (
                        'Projects',
                        style: TextStyle
                        (
                          // color: _flag?Appcolor.secondary:Colors.white
                          color: _flag?Colors.grey:Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //scroll
          SingleChildScrollView
          (
            child: _flag?
            Column
            (
              children: 
              [
                SizedBox
                (
                  height: 20,
                ),
                Container
                (
                  height: 20,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Row
                  (
                    children: 
                    [
                      Expanded(
                        child: FittedBox(
                          child: Text
                          (
                            'TOKEN NAME',
                            style: TextStyle
                            (
                              color: Colors.grey
                            ),
                          ),
                        ),
                      ),
                      // Spacer
                      // (

                      // ),
                    SizedBox
                    (
                      width: 20,
                    ),
                      Expanded(
                        child: FittedBox(
                          child: Text
                          (
                            'TOKEN SUPPLY',
                            style: TextStyle
                            (
                              color: Colors.grey
                            ),
                          ),
                        ),
                      ),
                       SizedBox
                    (
                      width: 20,
                    ),
                      Expanded(
                        child: FittedBox(
                          child: Text
                          (
                            'TOKEN TYPE',
                            style: TextStyle
                            (
                              color: Colors.grey
                            ),
                          ),
                        ),
                      ),
                      SizedBox
                    (
                      width: 10,
                    ),
                      Expanded(
                        child: FittedBox(
                          child: Text
                          (
                            'VIEW TOKEN',
                            style: TextStyle
                            (
                              color: Colors.grey
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ...buildLastJobs()
              ],
              )
              :
              Column
            (
              children: 
              [
                SizedBox
                (
                  height: 20,
                ),
                Container
                (
                  height: 20,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Row
                  (
                    children: 
                    [
                      Text
                      (
                        'TPROJECT NAME',
                        style: TextStyle
                        (
                          color: Colors.grey
                        ),
                      ),
                      Spacer
                      (

                      ),
                      Text
                      (
                        'LIQUIDITY %',
                        style: TextStyle
                        (
                          color: Colors.grey
                        ),
                      ),
                      SizedBox
                    (
                      width: 10,
                    ),
                      Text
                      (
                        'LOCKUP TIME',
                        style: TextStyle
                        (
                          color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                ),
                ...buildLastJobs1()
              ],
              )
          )
        ],
      ),
    );
  }
}







// import 'package:flutter/material.dart';
// import '../screen/token-detail.dart';
// import '/theme/appcolor.dart';

// import '../models/job.dart';

// class ButtonHome extends StatefulWidget {
//   const ButtonHome({Key? key}) : super(key: key);
//   // final String name;
//   // const ButtonHome
//   // (
//   //   this.name,
//   // );

//   @override
//   State<ButtonHome> createState() => _ButtonHomeState();
// }

// class _ButtonHomeState extends State<ButtonHome> {
//   bool _flag =true;
//   //token
//   List<Shift> shift = getShift();

//   List<Widget> buildLastJobs(){
//     List<Widget> list = [];
//     for (var i = shift.length - 1; i > -1; i--) {
//       list.add(buildLastJob(shift[i]));
//     }
//     return list;
//   }

//     Widget buildLastJob(Shift shift){
//     return Column(
//       children: [
//         GestureDetector(
//           onTap: ()
//                 {
//                   Navigator.push(context, MaterialPageRoute(builder: ((context) => ToenDetail()
//                   // ToenDetail('name':shift.heading)
//                   )
                  
//                   ));
//                 },
//           child: Container
//           (
//             height: 40,
//             width: double.infinity,
//             color: Colors.transparent,
            
//             child: Row
//             (
//               children: 
//               [
//                 Container(
//                   height: 20,
//                   width: 40,
//                   color: Colors.transparent,
//                   child: Text
//                   (
//                     shift.heading,
//                     style: TextStyle
//                     (
//                       color: Colors.white
//                     ),
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Container
//                 (
//                   height: 20,
//                   width: 40,
//                   decoration: BoxDecoration
//                   (
//                     color: Appcolor.darkviolte1,
//                     borderRadius: BorderRadius.all(Radius.circular(20))
//                   ),
//                   child: Center
//                   (
//                     child: Text
//                     (
//                       shift.subheading,
//                       style: TextStyle(color: Colors.white),
//                     )
//                   ),
//                 ),
//                 // Spacer(),
//                 SizedBox
//                 (
//                   width: 10,
//                 ),
//                 Container(
//                 height: 30,
//                 width: 60,
//                 decoration: BoxDecoration
//                 (
//                   color: Colors.transparent,
//                   borderRadius: BorderRadius.all(Radius.circular(5))
//                 ),
//                 child: Center(
//                   child: Text
//                   (
//                     shift.supply,
//                     style: TextStyle
//                     (
//                       color: Colors.white
//                     ),
//                   ),
//                 ),
//                 ),
//                 // Expanded(
//                 //   child: Text
//                 //   (
//                 //     shift.supply,
//                 //     style: TextStyle
//                 //     (
//                 //       color: Colors.white
//                 //     ),
//                 //   ),
//                 // ),
//                 // SizedBox
//                 // (
//                 //   width: 30,
//                 // ),
//                 Spacer(),
//                 Container(
//                   height: 30,
//                   width: 40,
//                   decoration: BoxDecoration
//                   (
//                     // color: Colors.pinkAccent,
//                     color: shift.status=='Standard'?Colors.pinkAccent: Colors.grey,
//                     borderRadius: BorderRadius.all(Radius.circular(30)),
//                     border: Border.all
//                     (
//                       color: Appcolor.darkviolte3
//                     )
//                   ),
//                   child: Center(
//                     child: Text
//                     (
//                       'View',
//                       style: TextStyle
//                       (
//                         color: Colors.white
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }


//   //project
//    List<Shift1> shift1 = getShift1();

//   List<Widget> buildLastJobs1(){
//     List<Widget> list = [];
//     for (var i = shift1.length - 1; i > -1; i--) {
//       list.add(buildLastJob1(shift1[i]));
//     }
//     return list;
//   }

//     Widget buildLastJob1(Shift1 shift1){
//     return Column(
//       children: [
//         Container
//         (
//           height: 40,
//           width: double.infinity,
//           color: Colors.transparent,
//           child: Row
//           (
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: 
//             [
//               Expanded(
//                 child: Container(
//                   height: 20,
//                   width: 40,
//                   color:Colors.transparent,
//                   child: Text
//                   (
//                     shift1.heading,
//                     style: TextStyle
//                     (
//                       color: Colors.white
//                     ),
//                     // overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//               ),
//               // SizedBox(
//               //   width: 20,
//               // ),
//               // Container
//               // (
//               //   height: 20,
//               //   width: 60,
//               //   decoration: BoxDecoration
//               //   (
//               //     color: Appcolor.darkviolte1,
//               //     borderRadius: BorderRadius.all(Radius.circular(20))
//               //   ),
//               //   child: Center
//               //   (
//               //     child: Text
//               //     (
//               //       shift1.subheading,
//               //       style: TextStyle(color: Colors.white),
//               //     )
//               //   ),
//               // ),
//               // SizedBox
//               // (
//               //   width: 80,
//               //   // width:100
//               // ),
//               Expanded(
//                 child: Container(
//                   height: 20,
//                   width: 40,
//                   color:Colors.transparent,
//                   child: Text
//                   (
//                     shift1.supply,
//                     style: TextStyle
//                     (
//                       color: Colors.white
//                     ),
//                   ),
//                 ),
//               ),
//               // SizedBox
//               // (
//               //   width: 30,
//               // ),

//               // Spacer(),
//               Expanded(
//                 child: Container(
//                   height: 30,
//                   width: 30,
//                   decoration: BoxDecoration
//                   (
//                     color: Colors.transparent,
//                     // borderRadius: BorderRadius.all(Radius.circular(5))
//                   ),
//                   child: Center(
//                     child: Text
//                     (
//                       shift1.Ltime,
//                       style: TextStyle
//                       (
//                         color: Colors.white
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   height: 30,
//                   width: 30,
//                   decoration: BoxDecoration
//                   (
//                     color: Colors.transparent,
//                     // borderRadius: BorderRadius.all(Radius.circular(5))
//                   ),
//                   child: Center(
//                     child: Text
//                     (
//                       shift1.amount,
//                       style: TextStyle
//                       (
//                         color: Colors.white
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   height: 30,
//                   width: 30,
//                   decoration: BoxDecoration
//                   (
//                     color: Colors.transparent,
//                     // borderRadius: BorderRadius.all(Radius.circular(5))
//                   ),
//                   child: Center(
//                     child: Text
//                     (
//                       shift1.sale,
//                       style: TextStyle
//                       (
//                         color: Colors.white
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   height: 30,
//                   width: 30,
//                   decoration: BoxDecoration
//                   (
//                     color: Colors.transparent,
//                     // borderRadius: BorderRadius.all(Radius.circular(5))
//                   ),
//                   child: Center(
//                     child: Text
//                     (
//                       shift1.status,
//                       style: TextStyle
//                       (
//                         color: Colors.white
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }


//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           SizedBox
//           (
//             height: 30,
//             width: double.infinity,
//             // color: Colors.red,
//             child: Row
//             (
//               children: 
//               [
//                 SizedBox
//                 (
//                   width: 10,
//                 ),
//                 GestureDetector(
//                   onTap: ()
//                   {
//                     setState(() {
//                       _flag = !_flag;
//                     });
//                   },
//                   child: Container
//                   (
//                     height: 30,
//                     width: 70,
//                     decoration: BoxDecoration
//                     (
//                       // color: Appcolor.background,
//                       color: _flag?Appcolor.background:Colors.transparent,
//                       borderRadius: BorderRadius.all(Radius.circular(10))
//                     ),
//                     child: Center(
//                       child: Text
//                       (
//                         'Tokens',
//                         style: TextStyle
//                         (
//                           color: _flag?Colors.white:Colors.grey,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox
//                 (
//                   width: 20,
//                 ),
                
//                 //2
//                 GestureDetector(
//                   onTap: (){
//                                   setState(() {
//                                     _flag = !_flag;
//                                   });
//                                   // buildLastJob(Pay[]);
    
//                                 },
//                   child: Container
//                   (
//                     height: 30,
//                     width: 70,
//                     decoration: BoxDecoration
//                     (
//                       color: _flag ? Colors.transparent : Appcolor.background,
//                       // color: Appcolor.background,
//                       borderRadius: BorderRadius.all(Radius.circular(10))
//                     ),
//                     child: Center(
//                       child: Text
//                       (
//                         'Projects',
//                         style: TextStyle
//                         (
//                           // color: _flag?Appcolor.secondary:Colors.white
//                           color: _flag?Colors.grey:Colors.white
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           //scroll
//           SingleChildScrollView
//           (
//             child: _flag?
//             Column
//             (
//               children: 
//               [
//                 SizedBox
//                 (
//                   height: 20,
//                 ),
//                 Container
//                 (
//                   height: 20,
//                   width: double.infinity,
//                   color: Colors.transparent,
//                   child: Row
//                   (
//                     children: 
//                     [
//                       Expanded(
//                         child: FittedBox(
//                           child: Text
//                           (
//                             'TOKEN NAME',
//                             style: TextStyle
//                             (
//                               color: Colors.grey
//                             ),
//                           ),
//                         ),
//                       ),
//                       // Spacer
//                       // (

//                       // ),
//                     SizedBox
//                     (
//                       width: 20,
//                     ),
//                       Expanded(
//                         child: FittedBox(
//                           child: Text
//                           (
//                             'TOKEN SUPPLY',
//                             style: TextStyle
//                             (
//                               color: Colors.grey
//                             ),
//                           ),
//                         ),
//                       ),
//                        SizedBox
//                     (
//                       width: 20,
//                     ),
//                       Expanded(
//                         child: FittedBox(
//                           child: Text
//                           (
//                             'TOKEN TYPE',
//                             style: TextStyle
//                             (
//                               color: Colors.grey
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox
//                     (
//                       width: 10,
//                     ),
//                       Expanded(
//                         child: FittedBox(
//                           child: Text
//                           (
//                             'VIEW TOKEN',
//                             style: TextStyle
//                             (
//                               color: Colors.grey
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 ...buildLastJobs()
//               ],
//               )
//               :
//               Column
//             (
//               children: 
//               [
//                 SizedBox
//                 (
//                   height: 20,
//                 ),
//                 Container
//                 (
//                   height: 40,
//                   width: double.infinity,
//                   color: Colors.transparent,
//                   child: Row
//                   (
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: 
//                     [
//                       Expanded(
//                         child: Text
//                         (
//                           'PNAME',
//                           style: TextStyle
//                           (
//                             color: Colors.grey
//                           ),
//                         ),
//                       ),

//                       SizedBox
//                       (
//                         width: 10,
//                       ),
                      
//                       Expanded(
//                         child: Text
//                         (
//                           'LIQUIDITY %',
//                           style: TextStyle
//                           (
//                             color: Colors.grey
//                           ),
//                         ),
//                       ),
//                       SizedBox
//                     (
//                       width: 10,
//                     ),
                    
//                       Expanded(
//                         child: Text
//                         (
//                           'LOCKUP TIME',
//                           style: TextStyle
//                           (
//                             color: Colors.grey
//                           ),
//                         ),
//                       ),
//                       SizedBox
//                       (
//                         width: 10,
//                       ),
                      
//                       Expanded(
//                         child: Text
//                         (
//                           'LISTING PRICE',
//                           style: TextStyle
//                           (
//                             color: Colors.grey
//                           ),
//                         ),
//                       ),
                      
//                       // SizedBox
//                       // (
//                       //   width: 20,
//                       // ),
//                       Expanded(
//                         child: Text
//                         (
//                           'PRERESALE PRICE',
//                           style: TextStyle
//                           (
//                             color: Colors.grey
//                           ),
//                         ),
//                       ),
//                       Spacer(),
//                       Expanded(
//                         child: Text
//                         (
//                           'STATUS',
//                           style: TextStyle
//                           (
//                             color: Colors.grey
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Container
//                 // (
//                 //   height: 20,
//                 //   width: double.infinity,
//                 //   color: Colors.transparent,
//                 //   child: Row
//                 //   (
//                 //     children: 
//                 //     [
//                 //       Expanded(
//                 //         child: FittedBox(
//                 //           child: Text
//                 //           (
//                 //             'PROJECT NAME',
//                 //             style: TextStyle
//                 //             (
//                 //               color: Colors.grey
//                 //             ),
//                 //           ),
//                 //         ),
//                 //       ),
//                 //       // Spacer
//                 //       // (

//                 //       // ),
//                 //     SizedBox
//                 //     (
//                 //       width: 20,
//                 //     ),
//                 //       Expanded(
//                 //         child: FittedBox(
//                 //           child: Text
//                 //           (
//                 //             'LIQUIDITY %',
//                 //             style: TextStyle
//                 //             (
//                 //               color: Colors.grey
//                 //             ),
//                 //           ),
//                 //         ),
//                 //       ),
//                 //        SizedBox
//                 //     (
//                 //       width: 20,
//                 //     ),
//                 //       Expanded(
//                 //         child: FittedBox(
//                 //           child: Text
//                 //           (
//                 //             'LOCKUP TIME',
//                 //             style: TextStyle
//                 //             (
//                 //               color: Colors.grey
//                 //             ),
//                 //           ),
//                 //         ),
//                 //       ),
//                 //       SizedBox
//                 //     (
//                 //       width: 10,
//                 //     ),
//                 //       Expanded(
//                 //         child: FittedBox(
//                 //           child: Text
//                 //           (
//                 //             'LISTING PRICE',
//                 //             style: TextStyle
//                 //             (
//                 //               color: Colors.grey
//                 //             ),
//                 //           ),
//                 //         ),
//                 //       ),
//                 //       SizedBox
//                 //       (
//                 //         width: 20,
//                 //       ),
//                 //       Expanded(
//                 //         child: FittedBox(
//                 //           child: Text
//                 //           (
//                 //             'PRERESALE PRICE',
//                 //             style: TextStyle
//                 //             (
//                 //               color: Colors.grey
//                 //             ),
//                 //           ),
//                 //         ),
//                 //       ),
//                 //       SizedBox
//                 //       (
//                 //         width: 20,
//                 //       ),
//                 //       Expanded(
//                 //         child: FittedBox(
//                 //           child: Text
//                 //           (
//                 //             'Type',
//                 //             style: TextStyle
//                 //             (
//                 //               color: Colors.grey
//                 //             ),
//                 //           ),
//                 //         ),
//                 //       ),
//                 //     ],
//                 //   ),
//                 // ),
//                 ...buildLastJobs1()
//               ],
//               )
//           )
//         ],
//       ),
//     );
//   }
// }