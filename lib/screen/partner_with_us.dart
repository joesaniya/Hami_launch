import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../config.dart';
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
  File? _image1; //square
  final imagePicker = ImagePicker();
  final String _description = "";
  final TextEditingController _img =
      TextEditingController(text: "No file chosen");
  final TextEditingController _img1 =
      TextEditingController(text: "No file chosen");
  String initialValue = 'No file choosen';

  final TextEditingController _address = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _desccontroller = TextEditingController();

  onDescriptionChange(String newValue) {
    print("Description changed to $newValue");
    setState(() {
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
      imgpath = _image!.path.split('/').last; //path spliting
      log(_image.toString());
      log(imgpath.toString());
      _img.text = imgpath.toString();
      log(_img.text);
    });
  }

  Future SquareImagegallery() async {
    log('square image');
    final image1 = await imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      log("squarre path to the gallery");
      _image1 = File(image1!.path);
      imgpath1 = _image1!.path.split('/').last; //path spliting
      log(_image1.toString());
      log(imgpath1.toString());
      _img1.text = imgpath1.toString();
      log(_img1.text);
    });
  }

  Connect() {
    log('login fuction');
    if (_formKey.currentState!.validate()) {
      log('validated');
      _formKey.currentState!.save();
      try {
        log('validated');
        // _currentStep < 2 ? setState(() => _currentStep += 1) : null;
      } catch (e) {
        log(e.toString());
      }
    }
  }

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
              "Partner With Us",
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
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Company Name*',
                          style: TextStyle(
                            fontSize: 15,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      TextFormField(
                        style: TextStyle(
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
                        ),
                        validator: (String? cname) {
                          if (cname!.isEmpty) {
                            return '* Please enter Company Name';
                          }
                          return null;
                        },
                        // controller: _desccontroller,
                        minLines: 1,
                        maxLines: 7,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            errorStyle: const TextStyle(color: Colors.orange),
                            hintText: 'Company Name',
                            hintStyle: const TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1.0),
                            )),
                      ),

                      //
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Company Logo*',
                          style: TextStyle(
                            fontSize: 15,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: currentTheme.isDark
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 5.0, right: 10.0, top: 5.0, bottom: 5.0),
                          child: Row(
                            children: [
                              FlatButton(
                                  splashColor: Colors.pinkAccent,
                                  hoverColor: Colors.purpleAccent,
                                  color: Colors.deepPurple.shade100,
                                  onPressed: getImagegallery,
                                  // onPressed: ()
                                  // {
                                  //   getImagegallery().then((value) {setState(() {
                                  //     _img.text=_image!.path.toString();
                                  //     log(_img.text);
                                  //   });});
                                  // },
                                  child: Text(
                                    'Choose File',
                                    style: TextStyle(
                                      color: currentTheme.isDark
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  )),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 38,
                                  child: TextFormField(
                                      validator: (String? img) {
                                        if (img!.isEmpty) {
                                          return '* Choose Your Image File';
                                        }
                                        return null;
                                      },
                                      controller: _img,
                                      // initialValue: initialValue.toString(),->wrong
                                      // initialValue: _image.toString(),
                                      style: TextStyle(
                                        color: currentTheme.isDark
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                      // onChanged: onDescriptionChange,
                                      // onChanged: (String newValue)
                                      // {
                                      //   setState(() {
                                      //     log('des');
                                      //     _image = newValue as File?;
                                      //     log(_image!.path);
                                      //   });
                                      // },
                                      decoration: const InputDecoration(
                                        errorStyle:
                                            TextStyle(color: Colors.orange),
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
                      const SizedBox(
                        height: 20,
                      ),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Website*',
                          style: TextStyle(
                            fontSize: 15,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      TextFormField(
                        style: TextStyle(
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
                        ),
                        validator: (String? link) {
                          if (link!.isEmpty) {
                            return '* Please enter Website Link';
                          }
                          return null;
                        },
                        // controller: _desccontroller,
                        minLines: 1,
                        maxLines: 7,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            errorStyle: const TextStyle(color: Colors.orange),
                            hintText: 'Website Link',
                            hintStyle: const TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1.0),
                            )),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Telegram*',
                          style: TextStyle(
                            fontSize: 15,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      TextFormField(
                        style: TextStyle(
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
                        ),
                        validator: (String? tele) {
                          if (tele!.isEmpty) {
                            return '* Please enter Telegram Link';
                          }
                          return null;
                        },
                        // controller: _desccontroller,
                        minLines: 1,
                        maxLines: 7,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            errorStyle: const TextStyle(color: Colors.orange),
                            hintText: 'Telegram Link',
                            hintStyle: const TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1.0),
                            )),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Twitter*',
                          style: TextStyle(
                            fontSize: 15,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      TextFormField(
                        style: TextStyle(
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
                        ),
                        validator: (String? tlink) {
                          if (tlink!.isEmpty) {
                            return '* Please enter Twitter Link';
                          }
                          return null;
                        },
                        // controller: _desccontroller,
                        minLines: 1,
                        maxLines: 7,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            errorStyle: const TextStyle(color: Colors.orange),
                            hintText: 'Ad Link',
                            hintStyle: const TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1.0),
                            )),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Ad Description*',
                          style: TextStyle(
                            fontSize: 15,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      TextFormField(
                        validator: (String? desc) {
                          if (desc!.isEmpty) {
                            return 'Please enter description';
                          }
                          return null;
                        },
                        style: TextStyle(
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
                        ),
                        controller: _desccontroller,
                        minLines: 6,
                        maxLines: 7,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            errorStyle: const TextStyle(color: Colors.orange),
                            hintText: 'Ad Description',
                            hintStyle: const TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1.0),
                            )),
                      ),

                      //
                      const SizedBox(
                        height: 20,
                      ),

                      Align(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          // onPressed: _stepContinue,
                          onPressed: Connect,
                          color: Appcolor.darkviolte,
                          child: const Text('Connect',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.09),

            //disclaimer
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                // style: const TextStyle(color: Colors.black, fontSize: 36),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Disclaimer:',
                      style: TextStyle(
                          fontSize: 16,
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
                          height: 1.5)),
                  // const TextSpan(text: 'dot '),
                  const TextSpan(
                      text:
                          'The information provided shall not in any way constitute a recommendation as to whether you should invest in any product discussed. We accept no liability for any loss occasioned to any person acting or refraining from action as a result of any material provided or published.',
                      style: TextStyle(
                          color: Colors.grey, fontSize: 16, height: 1.5
                          // decoration: TextDecoration.underline
                          ))
                ],
              ),
              // textScaleFactor: 0.5,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.09),
          ],
        ),
      ),
    );
  }
}
