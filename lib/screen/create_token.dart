import 'dart:developer';
import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hami_launch/side_launchpadlistScreens/add_token.dart';
import 'package:hami_launch/widgets/animated_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wave_transition/wave_transition.dart';

import '../Dialogbox/dialog_helper.dart';
import '../profile_page/profile-screen.dart';
import '../theme/appcolor.dart';
import '../widgets/animated_app.dart';
import '../widgets/appbar_widget.dart';

class CreateToken extends StatefulWidget {
  const CreateToken({Key? key}) : super(key: key);

  @override
  State<CreateToken> createState() => _CreateTokenState();
}

class _CreateTokenState extends State<CreateToken> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    //dropdown
  final List<String> items = [
    'Standard Token',
    'Liquidity Generator Token',
    'Reward Token',
  ];


  String dropdownValue = 'Standard Token';

  File? _image;

  String? imgpath;
  File? _image1;//square
  final imagePicker = ImagePicker();
  String _description = "";
  TextEditingController _img=TextEditingController(text: "No file chosen");
  String initialValue='No file choosen';

   Future getImagegallery() async {
    log('get image');
    final image = await imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      log("printing path to the gallery");
      _image = File(image!.path);
    
      // _img.text=_image!.path.toString();
      // log(_img.text);
      imgpath=_image!.path.split('/').last;//path spliting
      log(_image.toString());
      log(imgpath.toString());
      _img.text=imgpath.toString();
      log(_img.text);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Appcolor.darkviolte6,
      appBar: MyAppBar(title: 'Create Token',),

      body: SingleChildScrollView
      (
        child: Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20),
          child: Column
          (
            children: 
            [
              Container
                  (
                    height: MediaQuery.of(context).size.height*0.20,
                    width: double.infinity,
                    decoration: BoxDecoration
                    (
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Appcolor.background
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Column
                      (
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: 
                        [
                          Row
                          (
                            children: 
                            [
                              Icon
                              (
                                FontAwesomeIcons.coins,
                                color: Appcolor.darkviolte4,
                              ),
                              SizedBox
                              (
                                width: 10,
                              ),
                              Text
                              (
                                'Create Token',
                                style: TextStyle
                                (
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900
                                ),
                              ),
                              SizedBox
                              (
                                width: 5,
                              ),
                              Icon
                              (
                                Icons.help,
                                color: Colors.grey,
                              )
                            ],
                          ),
                          Text
                              (
                                'This is Create Tokens',
                                style: TextStyle
                                (
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                                ),
                              ),

                          // GestureDetector(
                          //   onTap: ()
                          //     {
                          //       log('message');
                          //       Navigator.push(context, MaterialPageRoute(builder: ((context) => 
                          //        ProfileScreen()
                          //       // AnimatedApp()
                                
                          //       )
                                
                          //       )
                          //       );
                          //     },
                          //   child: Container
                          //   (
                          //     height: 40,
                          //     width: 80,
                          //     decoration: BoxDecoration
                          //     (
                          //       borderRadius: BorderRadius.all(Radius.circular(10)),
                          //       color: Appcolor.darkviolte
                          //     ),
                          //     child: Center(
                          //       child: Text
                          //         (
                          //           'Help',
                          //           style: TextStyle
                          //           (
                          //             color: Colors.white,
                          //             fontSize: 18,
                          //             fontWeight: FontWeight.w500
                          //           ),
                          //         ),
                          //     ),
                          //   ),
                          // )
                          AnimatedButton()
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
                  // width: double.infinity,
                  // height: MediaQuery.of(context).size.height*0.50,
                  decoration: BoxDecoration
                    (
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Appcolor.background,
                    ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:20.0,right: 20),
                    child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: 
                      [
                        SizedBox
                        (
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text
                          (
                            'Token Type *',
                            style: TextStyle
                            (
                              fontSize: 15,
                              color: Colors.white
                            ),
                          ),
                        ),

                        SizedBox
                        (
                          height: 10,
                        ),

                        DropdownButtonFormField
                        (
                            style: TextStyle
                            (
                              color: Colors.white
                            ),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder( //<-- SEE HERE
                                        borderSide: BorderSide(color: Colors.grey, width: 1),
                                      ),
                                      focusedBorder: OutlineInputBorder( //<-- SEE HERE
                                        borderSide: BorderSide(color: Colors.grey, width: 1),
                                      ),
                                      filled: false,
                                      fillColor: Colors.transparent,
                                    ),
                                    icon: Icon(Icons.arrow_drop_down,color: Colors.grey,),
                                    dropdownColor: Appcolor.background,
                                    // value: dropdownValue,
                                    value: items[0],
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue!;
                                        log(newValue);
                                      });
                                    },
                                    // items: <String>['All','Trending','Recent','Upcoming','Featured',]
                                    // .map<DropdownMenuItem<String>>((String value) {
                                    //   return DropdownMenuItem<String>(
                                    //     value: value,
                                    //     child: Text(
                                    //       value,
                                    //       style: TextStyle
                                    //       (
                                    //         fontSize: 15,
                                    //         color: Colors.white
                                    //       ),
                                    //     ),
                                    //   );
                                    // }).toList(),
                                      items: items
                          .map((item) =>
                          DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.white
                                // color: Color.fromARGB(115, 230, 224, 224),
                              ),
                            ),
                          ))
                          .toList(),
                              ),
                        SizedBox
                        (
                          height: 20
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text
                          (
                            'Token Name *',
                            style: TextStyle
                            (
                              fontSize: 15,
                              color: Colors.white
                            ),
                          ),
                        ),

                        SizedBox
                        (
                          height: 10,
                        ),

                        TextFormField(
                          // controller: _desccontroller,
                          // minLines: 1,
                          // maxLines: 7,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintText: 'Token Name',
                            hintStyle: TextStyle(
                              color: Colors.grey
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all
                              (
                                Radius.circular(4)
                              ),
                              borderSide: BorderSide
                                (
                                  color: Colors.grey, 
                                  width: 1.0
                                ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all
                              (
                                Radius.circular(4)
                              ),
                              borderSide: BorderSide
                                (
                                  color: Colors.grey, 
                                  width: 1.0
                                ),
                            ),
                            
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all
                              (
                                Radius.circular(4)
                              ),
                              borderSide: BorderSide
                                (
                                  color: Colors.grey, 
                                  width: 1.0
                                ),
                            )
                          ),
                        ),

                        SizedBox
                        (
                          height: 20,
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text
                          (
                            'Token Description *',
                            style: TextStyle
                            (
                              fontSize: 15,
                              color: Colors.white
                            ),
                          ),
                        ),

                        SizedBox
                        (
                          height: 10,
                        ),

                        TextFormField(
                          // controller: _desccontroller,
                          minLines: 1,
                          maxLines: 7,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintText: 'Token Description',
                            hintStyle: TextStyle(
                              color: Colors.grey
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all
                              (
                                Radius.circular(4)
                              ),
                              borderSide: BorderSide
                                (
                                  color: Colors.grey, width: 1.0
                                ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all
                              (
                                Radius.circular(4)
                              ),
                              borderSide: BorderSide
                                (
                                  color: Colors.grey, width: 1.0
                                ),
                            ),
                            
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all
                              (
                                Radius.circular(4)
                              ),
                              borderSide: BorderSide
                                (
                                  color: Colors.grey, width: 1.0
                                ),
                            )
                          ),
                        ),

                        SizedBox
                        (
                          height: 20
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text
                          (
                            'Token Symbol *',
                            style: TextStyle
                            (
                              fontSize: 15,
                              color: Colors.white
                            ),
                          ),
                        ),

                        SizedBox
                        (
                          height: 10,
                        ),

                        TextFormField(
                          // controller: _desccontroller,
                          // minLines: 1,
                          // maxLines: 7,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintText: 'Token Symbol',
                            hintStyle: TextStyle(
                              color: Colors.grey
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all
                              (
                                Radius.circular(4)
                              ),
                              borderSide: BorderSide
                                (
                                  color: Colors.grey, 
                                  width: 1.0
                                ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all
                              (
                                Radius.circular(4)
                              ),
                              borderSide: BorderSide
                                (
                                  color: Colors.grey, 
                                  width: 1.0
                                ),
                            ),
                            
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all
                              (
                                Radius.circular(4)
                              ),
                              borderSide: BorderSide
                                (
                                  color: Colors.grey, 
                                  width: 1.0
                                ),
                            )
                          ),
                        ),

                        SizedBox
                        (
                          height: 20
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text
                          (
                            'Decimal *',
                            style: TextStyle
                            (
                              fontSize: 15,
                              color: Colors.white
                            ),
                          ),
                        ),

                        SizedBox
                        (
                          height: 10,
                        ),

                        TextFormField(
                          // controller: _desccontroller,
                          // minLines: 1,
                          // maxLines: 7,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintText: 'Decimal',
                            hintStyle: TextStyle(
                              color: Colors.grey
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all
                              (
                                Radius.circular(4)
                              ),
                              borderSide: BorderSide
                                (
                                  color: Colors.grey, 
                                  width: 1.0
                                ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all
                              (
                                Radius.circular(4)
                              ),
                              borderSide: BorderSide
                                (
                                  color: Colors.grey, 
                                  width: 1.0
                                ),
                            ),
                            
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all
                              (
                                Radius.circular(4)
                              ),
                              borderSide: BorderSide
                                (
                                  color: Colors.grey, 
                                  width: 1.0
                                ),
                            )
                          ),
                        ),

                        SizedBox
                        (
                          height: 20
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text
                          (
                            'Token Supply *',
                            style: TextStyle
                            (
                              fontSize: 15,
                              color: Colors.white
                            ),
                          ),
                        ),

                        SizedBox
                        (
                          height: 10,
                        ),

                        TextFormField(
                          // controller: _desccontroller,
                          // minLines: 1,
                          // maxLines: 7,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintText: 'Token Supply',
                            hintStyle: TextStyle(
                              color: Colors.grey
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all
                              (
                                Radius.circular(4)
                              ),
                              borderSide: BorderSide
                                (
                                  color: Colors.grey, 
                                  width: 1.0
                                ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all
                              (
                                Radius.circular(4)
                              ),
                              borderSide: BorderSide
                                (
                                  color: Colors.grey, 
                                  width: 1.0
                                ),
                            ),
                            
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all
                              (
                                Radius.circular(4)
                              ),
                              borderSide: BorderSide
                                (
                                  color: Colors.grey, 
                                  width: 1.0
                                ),
                            )
                          ),
                        ),


                        //img
                              SizedBox
                              (
                                height: 20,
                              ),
                        
                        Align(
                        alignment: Alignment.centerLeft,
                        child: Text
                        (
                          'Logo *',
                          style: TextStyle
                          (
                            fontSize: 15,
                            color: Colors.white
                          ),
                        ),
                      ),

                      SizedBox
                        (
                          height: 10,
                        ),

                      Container
                      (
                        height: MediaQuery.of(context).size.height*0.06,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.all
                          (
                            Radius.circular(5)
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left:5.0,right: 10.0,top: 5.0,bottom: 5.0),
                          child: Row
                          (
                            children: 
                            [
                              FlatButton
                              (
                                splashColor: Colors.pinkAccent,
                                hoverColor: Colors.purpleAccent,
                                color: Colors.white,
                                onPressed: getImagegallery,
                                // onPressed: ()
                                // {
                                //   getImagegallery().then((value) {setState(() {
                                //     _img.text=_image!.path.toString();
                                //     log(_img.text);
                                //   });});
                                // }, 
                                child: Text
                                (
                                  'Choose File',
                                  style: TextStyle
                                  (
                                    color: Colors.black,
                                  ),
                                )
                              ),

                              SizedBox
                              (
                                width: 5,
                              ),

                              Expanded
                              (
                                child: SizedBox(
                                  height: 38,
                                  child: TextFormField(
                                    controller: _img,
                                    // initialValue: initialValue.toString(),->wrong
                                  // initialValue: _image.toString(),
                                  style: TextStyle(color: Colors.white),
                                  // onChanged: onDescriptionChange,
                                  // onChanged: (String newValue)
                                  // {
                                  //   setState(() {
                                  //     log('des');
                                  //     _image = newValue as File?; 
                                  //     log(_image!.path);
                                  //   });
                                  // },
                                  decoration:const InputDecoration
                                  (
                                    // contentPadding:
                                    //         EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  )
                                  // decoration: InputDecoration(labelText: "Description"),
                                ),
                                ),
                              )

                              
                            ],
                          ),
                        ),
                      ),

                      SizedBox
                        (
                          height: 20,
                        ),


                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text
                        (
                          'Logo Preview*',
                          style: TextStyle
                          (
                            fontSize: 15,
                            color: Colors.white
                          ),
                        ),
                      ),

                      SizedBox
                        (
                          height: 10,
                        ),


                      Container
                      (
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration
                        (
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border.all
                          (
                            color: Colors.white,width: 1
                          )
                        ),
                        child:(_image !=null)?Image.file(_image!,fit: BoxFit.cover,) :Icon
                        (
                          Icons.add_a_photo_sharp,
                          color: Colors.white,
                        ),
                      ),

                      SizedBox
                        (
                          height: 20,
                        ),

                        //router

                         RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                              // style: TextStyle(color: Colors.black, fontSize: 36),
                              children: <TextSpan>[
                                TextSpan(text: 'Already have a token? ', style: TextStyle(color: Colors.white)),
                                TextSpan
                                (
                                  recognizer: new TapGestureRecognizer()..onTap = () => {
                                    log('add token clicked'),
                                    Navigator.push(
                                      context,
                                      WaveTransition(
                                        child:  AddToken(),
                                        center: FractionalOffset(0.90, 0.90),
                                        duration: Duration(milliseconds: 3000) // optional
                                      )
                                  )
                                  },
                                  text: 'Add your Token ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900)
                                ),
                                TextSpan(text: 'to hami launchpad', style: TextStyle(color: Colors.white))
                              ],
                          ),
                          // textScaleFactor: 0.5,
                        ),
                        SizedBox
                        (
                          height: 20,
                        ),

                        Align(
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            // onPressed: _stepContinue,
                            onPressed: ()
                            {
                              log('wallet connect');
                              DialogHelper3.exit(context);
                            },
                            child: const Text('Connect',
                            style: TextStyle(color: Colors.white)),
                            color: Appcolor.darkviolte,
                          ),
                        ),
                        SizedBox
                        (
                          height: 20,
                        ),

                      ],
                    ),
                  ),
                 ),
                 SizedBox
                 (
                  height: 30,
                 ),
            ],
          ),
        ),
      ),
    );
  }
}