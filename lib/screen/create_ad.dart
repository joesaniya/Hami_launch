import 'dart:developer';
import 'dart:io';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../config.dart';
import '../theme/appcolor.dart';
import '../widgets/animated_button.dart';
import '../widgets/appbar_widget.dart';

class CreateAd extends StatefulWidget {
  const CreateAd({Key? key}) : super(key: key);

  @override
  State<CreateAd> createState() => _CreateAdState();
}

class _CreateAdState extends State<CreateAd> {
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

  final TextEditingController _desccontroller = TextEditingController();

  int _currentStep = 0;

  final bool _isVerticalStepper = true;

  _stepTapped(int step) {
    setState(() => _currentStep = step);
  }

  _stepContinue() {
    log('login fuction');
    if (_formKey.currentState!.validate()) {
      log('validated');
      _formKey.currentState!.save();
      try {
        log('try');
        _currentStep < 2 ? setState(() => _currentStep += 1) : null;
      } catch (e) {
        log(e.toString());
      }
    }
  }

  // _stepContinue() {
  //    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  // }

  _stepCancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }

  final TextEditingController _address = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List<Step> getPresale() => [
        Step(
          title: Text(
            'Basic Info',
            style: TextStyle(
                color: currentTheme.isDark ? Colors.white : Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w900),
          ),
          content: Form(
            key: _formKey,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Banner Image(728*90)*',
                    style: TextStyle(
                        fontSize: 15,
                        color:
                            currentTheme.isDark ? Colors.white : Colors.black),
                  ),
                ),
                // Row
                // (
                //   children:
                //   [
                //     FlatButton
                //     (
                //       color: Colors.white,
                //       onPressed: getImagegallery,
                //       // onPressed: ()
                //       // {
                //       //   getImagegallery().then((value) {setState(() {
                //       //     _img.text=_image!.path.toString();
                //       //     log(_img.text);
                //       //   });});
                //       // },
                //       child: Text
                //       (
                //         'Choose File',
                //         style: TextStyle
                //         (
                //           color: Colors.black,
                //         ),
                //       )
                //     ),
                //     Expanded
                //     (
                //       child: SizedBox(
                //         height: 38,
                //         child: TextFormField(
                //           controller: _img,
                //           // initialValue: initialValue.toString(),->wrong
                //         // initialValue: _image.toString(),
                //         style: TextStyle(color: Colors.white),
                //         // onChanged: onDescriptionChange,
                //         // onChanged: (String newValue)
                //         // {
                //         //   setState(() {
                //         //     log('des');
                //         //     _image = newValue as File?;
                //         //     log(_image!.path);
                //         //   });
                //         // },
                //         decoration:const InputDecoration
                //         (
                //           // labelText: 'No File Chosen',
                //           // labelStyle: TextStyle(

                //           // ),
                //           focusedBorder: OutlineInputBorder
                //           (
                //               borderSide: BorderSide
                //               (
                //                 color: Colors.white, width: 1.0
                //               ),
                //           ),
                //           enabledBorder: OutlineInputBorder
                //           (
                //               borderSide: BorderSide
                //               (
                //                 color: Colors.white, width: 1.0
                //               ),
                //           ),
                //           errorBorder: OutlineInputBorder
                //           (
                //             borderSide: BorderSide
                //               (
                //                 color: Colors.white, width: 1.0
                //               ),
                //           ),
                //         )
                //         // decoration: InputDecoration(labelText: "Description"),
                //        ),
                //       ),
                //     )
                //   ],
                // ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 5.0, right: 10.0, top: 5.0, bottom: 5.0),
                    child: Row(
                      children: [
                        FlatButton(
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
                            child: const Text(
                              'Choose File',
                              style: TextStyle(
                                color: Colors.black,
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
                                style: const TextStyle(color: Colors.white),
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
                                  errorStyle: TextStyle(color: Colors.orange),
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
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Banner Image  Preview',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: (_image != null)
                      ? Image.file(
                          _image!,
                          fit: BoxFit.cover,
                        )
                      : const Icon(
                          Icons.add_a_photo_sharp,
                          color: Colors.white,
                        ),
                ),

                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Ad Description*',
                    style: TextStyle(fontSize: 15, color: Colors.white),
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
                  style: const TextStyle(color: Colors.white),
                  controller: _desccontroller,
                  minLines: 6,
                  maxLines: 7,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                      errorStyle: TextStyle(color: Colors.orange),
                      hintText: 'Ad Description',
                      hintStyle: TextStyle(color: Colors.grey),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      )),
                ),

                const SizedBox(
                  height: 20,
                ),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Square Image(250*250)*',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                // Row
                // (
                //   children:
                //   [
                //     FlatButton
                //     (
                //       color: Colors.white,
                //       onPressed: SquareImagegallery,
                //       child: Text
                //       (
                //         'Choose File',
                //         style: TextStyle
                //         (
                //           color: Colors.black,
                //         ),
                //       )
                //     ),
                //     Expanded
                //     (
                //       child: SizedBox(
                //         height: 38,
                //         child: TextFormField(
                //         // initialValue: _image1.toString(),
                //         controller:_img,
                //         onChanged: onDescriptionChange,
                //         decoration:const InputDecoration
                //         (
                //           // labelText: 'No File Chosen',
                //           // labelStyle: TextStyle(

                //           // ),
                //           focusedBorder: OutlineInputBorder
                //           (
                //               borderSide: BorderSide
                //               (
                //                 color: Colors.white, width: 1.0
                //               ),
                //           ),
                //           enabledBorder: OutlineInputBorder
                //           (
                //               borderSide: BorderSide
                //               (
                //                 color: Colors.white, width: 1.0
                //               ),
                //           ),
                //           errorBorder: OutlineInputBorder
                //           (
                //             borderSide: BorderSide
                //               (
                //                 color: Colors.white, width: 1.0
                //               ),
                //           ),
                //         )
                //         // decoration: InputDecoration(labelText: "Description"),
                //        ),
                //       ),
                //     )
                //   ],
                // ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 5.0, right: 10.0, top: 5.0, bottom: 5.0),
                    child: Row(
                      children: [
                        FlatButton(
                            splashColor: Colors.pinkAccent,
                            hoverColor: Colors.purpleAccent,
                            color: Colors.white,
                            onPressed: SquareImagegallery,
                            // onPressed: ()
                            // {
                            //   getImagegallery().then((value) {setState(() {
                            //     _img.text=_image!.path.toString();
                            //     log(_img.text);
                            //   });});
                            // },
                            child: const Text(
                              'Choose File',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 38,
                            child: TextFormField(
                                validator: (String? pic) {
                                  if (pic!.isEmpty) {
                                    return '* Choose Your Image';
                                  }
                                  return null;
                                },
                                controller: _img1,
                                // initialValue: initialValue.toString(),->wrong
                                // initialValue: _image.toString(),
                                style: const TextStyle(color: Colors.white),
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
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Square Image  Preview',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: (_image1 != null)
                      ? Image.file(
                          _image1!,
                          fit: BoxFit.cover,
                        )
                      : const Icon(
                          Icons.add_a_photo_sharp,
                          color: Colors.white,
                        ),
                ),
                const SizedBox(
                  height: 20,
                ),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Ad Link*',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  validator: (String? link) {
                    if (link!.isEmpty) {
                      return '* Please enter Ad Link';
                    }
                    return null;
                  },
                  // controller: _desccontroller,
                  minLines: 1,
                  maxLines: 7,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                      errorStyle: TextStyle(color: Colors.orange),
                      hintText: 'Ad Link',
                      hintStyle: TextStyle(color: Colors.grey),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      )),
                ),

                //
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Material(
                      child: Theme(
                        data: ThemeData(unselectedWidgetColor: Colors.white),
                        child: Checkbox(
                          activeColor: Appcolor.darkviolte1,
                          value: agree,
                          onChanged: (value) {
                            setState(() {
                              agree = value ?? false;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 15),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Before Creating, you agree to the',
                                style: TextStyle(color: Colors.white)),
                            TextSpan(
                                text: 'Terms of Service',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900)),
                            TextSpan(
                                text: ' and',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            TextSpan(
                                text: ' Advertisement Policy',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900)),
                            TextSpan(
                                text: '.*',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ],
                        ),
                        // textScaleFactor: 0.5,
                      ),
                      // child: const Text(
                      //   'I have read and accept terms and conditions',
                      //   style: TextStyle
                      //   (
                      //     color: Colors.white,
                      //     fontSize: 15
                      //   ),
                      //   // overflow: TextOverflow.ellipsis,
                      // ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    // onPressed: _stepContinue,
                    onPressed: _stepContinue,
                    color: Appcolor.darkviolte,
                    child: const Text('Next',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
        ),
        // The second step: Phone number
        Step(
          title: const Text(
            'Contact Details',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),
          ),
          content: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Contact Person Name *',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                  style: const TextStyle(color: Colors.white),
                  validator: (String? contactname) {
                    if (contactname!.isEmpty) {
                      return 'Please enter contac person name';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      errorStyle: TextStyle(color: Colors.orange),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      labelText: 'Contact Person Name*',
                      labelStyle: TextStyle(color: Colors.grey))),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Telegram *',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                  style: const TextStyle(color: Colors.white),
                  validator: (String? tele) {
                    if (tele!.isEmpty) {
                      return '* Please enter telegram id';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      errorStyle: TextStyle(color: Colors.orange),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      labelText: 'Telegram*',
                      labelStyle: TextStyle(color: Colors.grey))),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email Address *',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                  style: const TextStyle(color: Colors.white),
                  validator: (email) {
                    if (email!.isEmpty) {
                      return '* Please enter email id';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      errorStyle: TextStyle(color: Colors.orange),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      labelText: 'Email Address*',
                      labelStyle: TextStyle(color: Colors.grey))),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButton(
                    onPressed: _stepCancel,
                    color: Colors.transparent,
                    child: const Text('Back',
                        style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  FlatButton(
                    onPressed: _stepContinue,
                    color: Appcolor.darkviolte,
                    child: const Text('Next',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= 1 ? StepState.complete : StepState.disabled,
        ),
        // The third step: Verify phone number
        Step(
          title: const Text(
            'Payment Details',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),
          ),
          content: Column(
            children: <Widget>[
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Text
              //   (
              //     'Amount *',
              //     style: TextStyle
              //     (
              //       fontSize: 15,
              //       color: Colors.white
              //     ),
              //   ),
              // ),

              // SizedBox
              // (
              //   height: 10,
              // ),

              // TextFormField
              //   (
              //     decoration:const InputDecoration
              //       (
              //         focusedBorder: OutlineInputBorder
              //         (
              //             borderSide: BorderSide
              //             (
              //               color: Colors.grey,
              //               width: 1.0
              //             ),
              //         ),
              //         enabledBorder: OutlineInputBorder
              //         (
              //             borderSide: BorderSide
              //             (
              //               color: Colors.grey,
              //               width: 1.0
              //             ),
              //         ),
              //         errorBorder: OutlineInputBorder
              //         (
              //           borderSide: BorderSide
              //             (
              //               color: Colors.grey,
              //               width: 1.0
              //             ),
              //         ),
              //         labelText: 'Amount *',
              //         labelStyle: TextStyle
              //         (
              //           color: Colors.grey
              //         )
              //       )
              //   ),

              // SizedBox
              // (
              //   height: 20,
              // ),

              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Text
              //   (
              //     'Transaction Id',
              //     style: TextStyle
              //     (
              //       fontSize: 15,
              //       color: Colors.white
              //     ),
              //   ),
              // ),

              // SizedBox
              // (
              //   height: 10,
              // ),

              // TextFormField
              //   (
              //     decoration:const InputDecoration
              //       (
              //         focusedBorder: OutlineInputBorder
              //         (
              //             borderSide: BorderSide
              //             (
              //               color: Colors.grey,
              //               width: 1.0
              //             ),
              //         ),
              //         enabledBorder: OutlineInputBorder
              //         (
              //             borderSide: BorderSide
              //             (
              //               color: Colors.grey,
              //               width: 1.0
              //             ),
              //         ),
              //         errorBorder: OutlineInputBorder
              //         (
              //           borderSide: BorderSide
              //             (
              //               color: Colors.grey,
              //               width: 1.0
              //             ),
              //         ),
              //         labelText: 'Transaction Id*',
              //         labelStyle: TextStyle
              //         (
              //           color: Colors.grey
              //         )
              //       )
              //   ),

              // SizedBox(
              //   height: 20,
              // ),

              Container(
                height: MediaQuery.of(context).size.height * 0.24, //->a10
                // height: MediaQuery.of(context).size.height*0.40,
                width: double.infinity,
                color: Colors.transparent,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.20,
                        // height: MediaQuery.of(context).size.height*0.40,
                        color: Colors.transparent,
                        child: const Image(
                          image: AssetImage('assets/images/qr.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Container(
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Amount *',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          TextFormField(
                              style: const TextStyle(color: Colors.white),
                              validator: (amount) {
                                if (amount!.isEmpty) {
                                  return '* Please enter amount';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  errorStyle: TextStyle(color: Colors.orange),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1.0),
                                  ),
                                  labelText: 'Amount *',
                                  labelStyle: TextStyle(color: Colors.grey))),

                          const SizedBox(
                            height: 20,
                          ),

                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Transaction Id',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          TextFormField(
                              style: const TextStyle(color: Colors.white),
                              validator: (transacid) {
                                if (transacid!.isEmpty) {
                                  return '* Please enter transaction id';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1.0),
                                  ),
                                  labelText: 'Transaction Id*',
                                  labelStyle: TextStyle(color: Colors.grey))),

                          // SizedBox(
                          //   height: 20,
                          // ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButton(
                    onPressed: _stepCancel,
                    color: Colors.transparent,
                    child: const Text('Back',
                        style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  FlatButton(
                    onPressed: _stepContinue,
                    color: Appcolor.darkviolte,
                    child: const Text('Connect',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= 2 ? StepState.complete : StepState.disabled,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.darkviolte6,
      appBar: MyAppBar(title: 'Advertise with us'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.20,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Appcolor.background),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.lightbulb,
                            color: Appcolor.darkviolte3,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Advertise With Us',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w900),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.help,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      const Text(
                        'This is Advertise With Us',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),

                      AnimatedButton()

                      // Container
                      // (
                      //   height: 40,
                      //   width: 80,
                      //   decoration: BoxDecoration
                      //   (
                      //     borderRadius: BorderRadius.all(Radius.circular(10)),
                      //     color: Appcolor.darkviolte
                      //   ),
                      //   child: Center(
                      //     child: Text
                      //       (
                      //         'Help',
                      //         style: TextStyle
                      //         (
                      //           color: Colors.white,
                      //           fontSize: 18,
                      //           fontWeight: FontWeight.w500
                      //         ),
                      //       ),
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // width: double.infinity,
                // height: MediaQuery.of(context).size.height*0.90,
                // height: 900,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: Appcolor.background,
                ),
                child: Theme(
                  data: ThemeData(
                      canvasColor: Appcolor.background,
                      colorScheme: Theme.of(context).colorScheme.copyWith(
                          primary: Colors.green, onPrimary: Colors.pink
                          // background: Appcolor.darkviolte,
                          // secondary: Colors.green,
                          )
                      // .copyWith(primarySwatch: Colors.orange, secondary: Colors.orange),
                      ),
                  child: PageTransitionSwitcher(
                    duration: const Duration(seconds: 10),
                    transitionBuilder: (child, anim, sec) =>
                        SharedAxisTransition(
                      transitionType: SharedAxisTransitionType.horizontal,
                      animation: anim,
                      secondaryAnimation: sec,
                      child: child,
                    ),
                    child: Stepper(
                        controlsBuilder:
                            (BuildContext context, ControlsDetails details) {
                          return Row(
                            children: const <Widget>[
                              // FlatButton(
                              //   onPressed: _stepContinue,
                              //   child: const Text('Connect',
                              //       style: TextStyle(color: Colors.white)),
                              //   color: Appcolor.darkviolte,
                              // ),
                              // new Padding(
                              //   padding: new EdgeInsets.all(10),
                              // ),
                              // FlatButton(
                              //   onPressed: _stepCancel,
                              //   child: Text(hide == true ? '' :'Cancel'),
                              //   // child: const Text(
                              //   //   'Zurück',
                              //   //   style: TextStyle(color: Colors.white),
                              //   // ),
                              //   color: hide == true ? Colors.transparent : Colors.amber,
                              // ),
                            ],
                          );

                          // return Row(
                          //   children: <Widget>[
                          //     TextButton(
                          //       onPressed: details.onStepContinue,
                          //       child: Text(hide == false ? '' : 'Confirm'),
                          //     ),
                          //     TextButton(
                          //       onPressed: details.onStepCancel,
                          //       child: Text(hide == true ? '' :'Cancel'),
                          //     ),
                          //   ],
                          // );
                        },
                        elevation: 0.0,
                        // vertical or horizontial
                        type: StepperType.vertical,
                        // type: _isVerticalStepper
                        //     ? StepperType.vertical
                        //     : StepperType.horizontal,
                        physics: const ScrollPhysics(),
                        currentStep: _currentStep,
                        onStepTapped: (step) => _stepTapped(step),
                        onStepContinue: _stepContinue,
                        onStepCancel: _stepCancel,
                        steps: getPresale()),
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
