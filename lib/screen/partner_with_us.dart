import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../theme/appcolor.dart';
import '../widgets/animated_button.dart';
import '../widgets/appbar_widget.dart';


class PartnerWithUs extends StatefulWidget {
  const PartnerWithUs({Key? key}) : super(key: key);

  @override
  State<PartnerWithUs> createState() => _PartnerWithUsState();
}

class _PartnerWithUsState extends State<PartnerWithUs> {

  bool agree = false;
  File? _image;

  String? imgpath;
  String? imgpath1;
  File? _image1;//square
  final imagePicker = ImagePicker();
  String _description = "";
  TextEditingController _img=TextEditingController(text: "No file chosen");
  TextEditingController _img1=TextEditingController(text: "No file chosen");
  String initialValue='No file choosen';

   TextEditingController _address = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _desccontroller = TextEditingController();

  onDescriptionChange(String newValue)
  {
    print("Description changed to $newValue");
    setState(() 
    {
      log('des');
       _image = newValue as File?; 
       log(_image!.path);
    });
  }
  

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

  Future SquareImagegallery() async {
    log('square image');
    final image1 = await imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      log("squarre path to the gallery");
      _image1 = File(image1!.path);
      imgpath1=_image1!.path.split('/').last;//path spliting
      log(_image1.toString());
      log(imgpath1.toString());
      _img1.text=imgpath1.toString();
      log(_img1.text);
    });
  }

  Connect()
  {
    log('login fuction');
      if(_formKey.currentState!.validate())
      {
        log('validated');
        _formKey.currentState!.save();
        try
        {
          log('validated');
          // _currentStep < 2 ? setState(() => _currentStep += 1) : null;
        }
        catch(e)
        {
          log(e.toString());
        }
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Appcolor.darkviolte6,
      appBar: MyAppBar(title: 'Partner with us'),
      body: SingleChildScrollView
      (
        child: Padding
        (
          padding: const EdgeInsets.only(left:20.0,right: 20),
          child: Column
          (
            children: [
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
                                FontAwesomeIcons.lightbulb,
                                color: Appcolor.darkviolte3,
                              ),
                              SizedBox
                              (
                                width: 10,
                              ),
                              Text
                              (
                                'Partner With Us',
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
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Appcolor.background,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
        key: _formKey,
        child: Column
        (
          children: 
          [
            Align(
              alignment: Alignment.centerLeft,
              child: Text
              (
                  'Company Name*',
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
              style: TextStyle
                  (
                    color: Colors.white
                  ),
              validator: (String? cname)
              {
                  if(cname!.isEmpty)
                   {
                      return '* Please enter Company Name';
                   }
              },
                    // controller: _desccontroller,
                    minLines: 1,
                    maxLines: 7,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(color: Colors.orange),
                      hintText: 'Company Name',
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
                            color: Colors.white, width: 1.0
                          ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all
                        (
                          Radius.circular(4)
                        ),
                         borderSide: BorderSide
                          (
                            color: Colors.white, width: 1.0
                          ),
                      ),
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all
                        (
                          Radius.circular(4)
                        ),
                         borderSide: BorderSide
                          (
                            color: Colors.white, width: 1.0
                          ),
                      )
                    ),
                  ),
            
      
            
              //
              SizedBox
              (
                  height: 20,
              ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text
              (
                  'Company Logo*',
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
                                        validator: (String? img)
                                        {
                                          if(img!.isEmpty)
                                          {
                                            return '* Choose Your Image File';
                                          }
                                        },
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
                                        errorStyle: TextStyle(color:Colors.orange),
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
                  'Website*',
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
              style: TextStyle
                  (
                    color: Colors.white
                  ),
              validator: (String? link)
              {
                  if(link!.isEmpty)
                   {
                      return '* Please enter Website Link';
                   }
              },
                    // controller: _desccontroller,
                    minLines: 1,
                    maxLines: 7,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(color: Colors.orange),
                      hintText: 'Ad Link',
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
                            color: Colors.white, width: 1.0
                          ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all
                        (
                          Radius.circular(4)
                        ),
                         borderSide: BorderSide
                          (
                            color: Colors.white, width: 1.0
                          ),
                      ),
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all
                        (
                          Radius.circular(4)
                        ),
                         borderSide: BorderSide
                          (
                            color: Colors.white, width: 1.0
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
                  'Telegram*',
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
              style: TextStyle
                  (
                    color: Colors.white
                  ),
              validator: (String? tele)
              {
                  if(tele!.isEmpty)
                   {
                      return '* Please enter Telegram Link';
                   }
              },
                    // controller: _desccontroller,
                    minLines: 1,
                    maxLines: 7,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(color: Colors.orange),
                      hintText: 'Ad Link',
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
                            color: Colors.white, width: 1.0
                          ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all
                        (
                          Radius.circular(4)
                        ),
                         borderSide: BorderSide
                          (
                            color: Colors.white, width: 1.0
                          ),
                      ),
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all
                        (
                          Radius.circular(4)
                        ),
                         borderSide: BorderSide
                          (
                            color: Colors.white, width: 1.0
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
                  'Twitter*',
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
              style: TextStyle
                  (
                    color: Colors.white
                  ),
              validator: (String? tlink)
              {
                  if(tlink!.isEmpty)
                   {
                      return '* Please enter Twitter Link';
                   }
              },
                    // controller: _desccontroller,
                    minLines: 1,
                    maxLines: 7,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(color: Colors.orange),
                      hintText: 'Ad Link',
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
                            color: Colors.white, width: 1.0
                          ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all
                        (
                          Radius.circular(4)
                        ),
                         borderSide: BorderSide
                          (
                            color: Colors.white, width: 1.0
                          ),
                      ),
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all
                        (
                          Radius.circular(4)
                        ),
                         borderSide: BorderSide
                          (
                            color: Colors.white, width: 1.0
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
                'Ad Description*',
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
                  validator: (String? desc)
                  {
                    if(desc!.isEmpty)
                                    {
                                      return 'Please enter description';
                                    }
                  },
                  style: TextStyle
                  (
                  
                    color: Colors.white
                  ),
                  controller: _desccontroller,
                  minLines: 6,
                  maxLines: 7,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    errorStyle: TextStyle(color: Colors.orange),
                    hintText: 'Ad Description',
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
                          color: Colors.white, width: 1.0
                        ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all
                      (
                        Radius.circular(4)
                      ),
                       borderSide: BorderSide
                        (
                          color: Colors.white, width: 1.0
                        ),
                    ),
                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all
                      (
                        Radius.circular(4)
                      ),
                       borderSide: BorderSide
                        (
                          color: Colors.white, width: 1.0
                        ),
                    )
                  ),
                ),
      
              //
              SizedBox
              (
                  height: 20,
              ),
            
              Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    // onPressed: _stepContinue,
                    onPressed: Connect,
                    child: const Text('Connect',
                    style: TextStyle(color: Colors.white)),
                    color: Appcolor.darkviolte,
                  ),
              ),
          ],
        ),
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