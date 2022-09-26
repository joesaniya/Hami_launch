import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'Dialogbox/dialog_helper.dart';
import 'config.dart';

class OwnerDetails extends StatefulWidget {
  const OwnerDetails({Key? key}) : super(key: key);

  @override
  State<OwnerDetails> createState() => _OwnerDetailsState();
}

class _OwnerDetailsState extends State<OwnerDetails> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController person = TextEditingController(text: "lekhraj");

  final TextEditingController firstname =
      TextEditingController(text: "lekhraj");

  final TextEditingController Email =
      TextEditingController(text: "lekhraj@hami.live");

  final TextEditingController lastname = TextEditingController(text: "H");

  final TextEditingController _img =
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
                'Contact Person *',
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
                controller: person,
                // minLines: 1,
                // maxLines: 7,
                validator: (String? name) {
                  if (name!.isEmpty) {
                    return '* Enter Contact Person Name';
                  }
                  return null;
                },
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                    hintText: 'Contact Person Name',
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
                'Owner First Name *',
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
                controller: firstname,
                // minLines: 1,
                // maxLines: 7,
                validator: (String? fname) {
                  if (fname!.isEmpty) {
                    return '* Enter First Name';
                  }
                  return null;
                },
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                    hintText: 'First Name',
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
                'Contact Email *',
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
                controller: Email,
                // minLines: 1,
                // maxLines: 7,
                validator: (String? email) {
                  if (email!.isEmpty) {
                    return '* Enter Contact Email';
                  }
                  return null;
                },
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                    hintText: 'Contact Email',
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
                'Owner Last Name *',
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
                controller: lastname,
                // minLines: 1,
                // maxLines: 7,
                validator: (String? lname) {
                  if (lname!.isEmpty) {
                    return '* Enter Owner Last Name';
                  }
                  return null;
                },
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                    hintText: 'Owner Last Name',
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
