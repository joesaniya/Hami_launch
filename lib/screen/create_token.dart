import 'dart:developer';
import 'dart:io';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hami_launch/side_launchpadlistScreens/add_token.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wave_transition/wave_transition.dart';

import '../config.dart';
import '../theme/appcolor.dart';

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
  ];

  String? dropdownValue = 'select token';

  File? _image;

  String? imgpath;
  File? _image1; //square
  final imagePicker = ImagePicker();
  final String _description = "";
  final TextEditingController _img =
      TextEditingController(text: "No file chosen");
  String initialValue = 'No file choosen';

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
        // _currentStep < 2 ? setState(() => _currentStep += 1) : null;
      } catch (e) {
        log(e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Appcolor.darkviolte6,
      // appBar: MyAppBar(title: 'Create Token',),
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
              "Create Token",
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
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                // width: double.infinity,
                // height: MediaQuery.of(context).size.height*0.50,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  // color: Colors.purple
                  color: currentTheme.isDark ? Colors.black : Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Token Type *',
                            style: TextStyle(
                              fontSize: 18,
                              color: currentTheme.isDark
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        DropdownButtonFormField2(
                          focusColor: Colors.purple,
                          // focusColor: const Color.fromARGB(115, 230, 224, 224),
                          decoration: InputDecoration(
                            //Add isDense true and zero Padding.
                            //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.purple),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(115, 230, 224, 224),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            //Add more decoration as you want here
                            //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                          ),
                          isExpanded: true,
                          hint: Text(
                            dropdownValue.toString(),
                            style: const TextStyle(
                                fontSize: 14, color: Colors.deepPurple
                                // color: Color.fromARGB(115, 230, 224, 224),
                                ),
                          ),
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: currentTheme.isDark
                                ? Colors.deepPurple
                                : Colors.deepPurple,
                            // color: Color.fromARGB(115, 230, 224, 224),
                          ),
                          iconSize: 30,
                          buttonHeight: 60,
                          buttonPadding:
                              const EdgeInsets.only(left: 20, right: 10),
                          dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              // color: Appcolor.background,
                              color: Colors.grey.shade100),
                          items: items
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.deepPurpleAccent
                                          // color: Color.fromARGB(115, 230, 224, 224),
                                          ),
                                    ),
                                  ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select gender.';
                            }
                            return null;
                          },
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                              log(newValue);
                            });
                          },
                          // onChanged: (value) {
                          //   //Do something when changing the item if you want.
                          // },
                          // onSaved: (value) {
                          //   selectedValue = value.toString();
                          // },
                        ),
                        const SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Token Name *',
                            style: TextStyle(
                              fontSize: 18,
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
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                          // controller: _desccontroller,
                          // minLines: 1,
                          // maxLines: 7,
                          validator: (String? tname) {
                            if (tname!.isEmpty) {
                              return '* Enter Token Name';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.multiline,
                          decoration: const InputDecoration(
                              hintText: 'Token Name',
                              hintStyle: TextStyle(color: Colors.grey),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              )),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Token Description *',
                            style: TextStyle(
                              fontSize: 18,
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
                          // controller: _desccontroller,
                          minLines: 5,
                          maxLines: 7,
                          style: TextStyle(
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                          validator: (String? desc) {
                            if (desc!.isEmpty) {
                              return '* Enter Token Description';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.multiline,
                          decoration: const InputDecoration(
                              hintText: 'Token Description',
                              hintStyle: TextStyle(color: Colors.grey),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              )),
                        ),

                        const SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Token Symbol *',
                            style: TextStyle(
                              fontSize: 18,
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
                          // controller: _desccontroller,
                          // minLines: 1,
                          // maxLines: 7,
                          style: TextStyle(
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                          validator: (String? symbol) {
                            if (symbol!.isEmpty) {
                              return '* Enter Token Symbol';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.multiline,
                          decoration: const InputDecoration(
                              hintText: 'Token Symbol',
                              hintStyle: TextStyle(color: Colors.grey),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              )),
                        ),

                        const SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Decimal *',
                            style: TextStyle(
                              fontSize: 18,
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
                          // controller: _desccontroller,
                          // minLines: 1,
                          // maxLines: 7,
                          style: TextStyle(
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                          validator: (String? decimal) {
                            if (decimal!.isEmpty) {
                              return '* Enter Token Decimal';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.multiline,
                          decoration: const InputDecoration(
                              hintText: 'Decimal',
                              hintStyle: TextStyle(color: Colors.grey),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              )),
                        ),

                        const SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Token Supply *',
                            style: TextStyle(
                              fontSize: 18,
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
                          // controller: _desccontroller,
                          // minLines: 1,
                          // maxLines: 7,
                          style: TextStyle(
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                          validator: (String? Supply) {
                            if (Supply!.isEmpty) {
                              return '* Enter Token Supply';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.multiline,
                          decoration: const InputDecoration(
                              hintText: 'Token Supply',
                              hintStyle: TextStyle(color: Colors.grey),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              )),
                        ),

                        //img
                        const SizedBox(
                          height: 20,
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Logo *',
                            style: TextStyle(
                              fontSize: 18,
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
                                color: Colors.grey,
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
                                        // fontSize: 18,
                                        color: Colors.grey,
                                        // color: currentTheme.isDark
                                        //     ? Colors.white
                                        //     : Colors.black,
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

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Logo Preview*',
                            style: TextStyle(
                              fontSize: 18,
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
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                  width: 1)),
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

                        //router

                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            // style: TextStyle(color: Colors.black, fontSize: 36),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Already have a token? ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => {
                                        log('add token clicked'),
                                        Navigator.push(
                                            context,
                                            WaveTransition(
                                                child: AddToken(),
                                                center: const FractionalOffset(
                                                    0.90, 0.90),
                                                duration: const Duration(
                                                    milliseconds:
                                                        3000) // optional
                                                ))
                                      },
                                text: 'Add your Token ',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: currentTheme.isDark
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w900),
                              ),
                              TextSpan(
                                text: 'to hami launchpad',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              )
                            ],
                          ),
                          // textScaleFactor: 0.5,
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        Align(
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            onPressed: Connect,
                            // onPressed: ()
                            // {
                            //   log('wallet connect');
                            //   DialogHelper3.exit(context);
                            // },
                            color: Appcolor.darkviolte,
                            child: const Text('Connect',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  // style: const TextStyle(color: Colors.black, fontSize: 36),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Disclaimer:',
                        style: TextStyle(
                            fontSize: 16,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
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
      ),
    );
  }
}
