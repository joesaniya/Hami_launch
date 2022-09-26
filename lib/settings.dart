import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'Dialogbox/dialog_helper.dart';
import 'config.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController website =
      TextEditingController(text: "https://hami.network");

  final TextEditingController telegram =
      TextEditingController(text: "https://t.me/haminetwork1");

  final TextEditingController twitter =
      TextEditingController(text: "https://twitter.com/haminetwork");

  final TextEditingController Discord =
      TextEditingController(text: "https://discord.com");
  final TextEditingController Medium =
      TextEditingController(text: "https://medium.com/@haminetwork");
  final TextEditingController desc = TextEditingController(
      text:
          "HAMI, also known as Hybrid Autonomous Monetary Infrastructure, is a Blockchain-based project which helps Anyone to Invest, Send or Receive Crypto Instantly without any technical knowledge. HAMI also has Decentralized Crypto Projects, which include NFT Marketplace, Decentralized Exchange, Launchpad, Token Generators, etc. HAMI's Ultimate goal is to Create its own Blockchain Network known as Hami Network");

  final TextEditingController _img =
      TextEditingController(text: "No file chosen");
  final TextEditingController _img1 =
      TextEditingController(text: "No file chosen");

  String initialValue = 'No file choosen';
  File? _image;
  String? imgpath;
  final imagePicker = ImagePicker();

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

  File? _image1;
  String? imgpath1;

  Future getImagegallery1() async {
    log('get image');
    final image1 = await imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      log("printing path to the gallery");
      _image1 = File(image1!.path);

      // _img.text=_image!.path.toString();
      // log(_img.text);
      imgpath1 = _image1!.path.split('/').last; //path spliting
      log(_image1.toString());
      log(imgpath1.toString());
      _img1.text = imgpath.toString();
      log(_img1.text);
    });
  }

  Connect() {
    log('login fuction');
    if (_formKey.currentState!.validate()) {
      log('validated');
      _formKey.currentState!.save();
      try {
        log('Connected');
        DialogHelperWrong.exit(context);
        // _currentStep < 2 ? setState(() => _currentStep += 1) : null;
      } catch (e) {
        log(e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Token Description *',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                style: TextStyle(
                  color: currentTheme.isDark ? Colors.white : Colors.black,
                ),
                controller: desc,
                // minLines: 1,
                // maxLines: 7,
                validator: (String? desc) {
                  if (desc!.isEmpty) {
                    return '* Enter Token Description';
                  }
                  return null;
                },
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 7,
                decoration: const InputDecoration(
                    hintText: 'Description',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    )),
              ),

              const SizedBox(
                height: 20,
              ),
              const Text(
                'Banner Image *',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),

              //image1
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
                          color: Colors.grey,
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

              //2
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Logo *',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),

              //image1
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
                          color: Colors.grey,
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

              //
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Website *',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                style: TextStyle(
                  color: currentTheme.isDark ? Colors.white : Colors.black,
                ),
                controller: website,
                // minLines: 1,
                // maxLines: 7,
                validator: (String? web) {
                  if (web!.isEmpty) {
                    return '* Enter website Name';
                  }
                  return null;
                },
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                    hintText: 'Enter Website Name',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    )),
              ),

              //fnam
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Telegram *',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                style: TextStyle(
                  color: currentTheme.isDark ? Colors.white : Colors.black,
                ),
                controller: telegram,
                // minLines: 1,
                // maxLines: 7,
                validator: (String? tele) {
                  if (tele!.isEmpty) {
                    return '* Enter Telegram Name';
                  }
                  return null;
                },
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                    hintText: 'Telegram Name',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    )),
              ),

              //ln
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Twitter *',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                style: TextStyle(
                  color: currentTheme.isDark ? Colors.white : Colors.black,
                ),
                controller: twitter,
                // minLines: 1,
                // maxLines: 7,
                validator: (String? twiter) {
                  if (twiter!.isEmpty) {
                    return '* Enter Twitter Id';
                  }
                  return null;
                },
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                    hintText: 'Twitter',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    )),
              ),

              //email
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Discord *',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                style: TextStyle(
                  color: currentTheme.isDark ? Colors.white : Colors.black,
                ),
                controller: Discord,
                // minLines: 1,
                // maxLines: 7,
                validator: (String? discord) {
                  if (discord!.isEmpty) {
                    return '* Enter Discord';
                  }
                  return null;
                },
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                    hintText: 'Discord',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    )),
              ),

              const SizedBox(
                height: 20,
              ),

              const Text(
                'Medium *',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                style: TextStyle(
                  color: currentTheme.isDark ? Colors.white : Colors.black,
                ),
                controller: Discord,
                // minLines: 1,
                // maxLines: 7,
                validator: (String? med) {
                  if (med!.isEmpty) {
                    return '* Enter Medium';
                  }
                  return null;
                },
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                    hintText: 'Medium',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    )),
              ),

              const SizedBox(
                height: 20,
              ),

              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: Connect,
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text('Update',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 20)),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              )
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: FlatButton(
              //     onPressed: Connect,
              //     // onPressed: ()
              //     // {
              //     //   log('wallet connect');
              //     //   DialogHelper3.exit(context);
              //     // },
              //     color: Appcolor.darkviolte,
              //     child: const Text('Connect',
              //         style: TextStyle(color: Colors.white)),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
