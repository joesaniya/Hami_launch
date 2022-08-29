import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:image_picker/image_picker.dart';

import '../theme/appcolor.dart';

class CreateToken extends StatefulWidget {
  const CreateToken({Key? key}) : super(key: key);

  @override
  State<CreateToken> createState() => _CreateTokenState();
}

class _CreateTokenState extends State<CreateToken> {

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
      appBar: AppBar
      (
        elevation: 0.0,
        backgroundColor: Appcolor.darkviolte6,
        automaticallyImplyLeading: false,
        leading: IconButton
        (
          onPressed:()
          {
            Navigator.pop(context);
          }, 
          icon: Icon
          (
            Icons.arrow_back_ios,
            color: Colors.white,
          )
        ),
        title: Text
        (
          'Create Token',
          style: TextStyle
          (
            color: Colors.white
          ),
        ),
      ),

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
                                FontAwesome.rocket,
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

                          Container
                          (
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration
                            (
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Appcolor.darkviolte
                            ),
                            child: Center(
                              child: Text
                                (
                                  'Help',
                                  style: TextStyle
                                  (
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500
                                  ),
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
                 
                 Container
                 (
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.50,
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

                      ],
                    ),
                  ),
                 )
            ],
          ),
        ),
      ),
    );
  }
}