import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../Dialogbox/dialog_helper.dart';
import '../theme/appcolor.dart';

class CreateAd extends StatefulWidget {
  const CreateAd({Key? key}) : super(key: key);

  @override
  State<CreateAd> createState() => _CreateAdState();
}

class _CreateAdState extends State<CreateAd> {
  bool agree = false;
  File? _image;
  File? _image1;//square
  final imagePicker = ImagePicker();
  String _description = "";

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
      log(_image.toString());
    });
  }

  Future SquareImagegallery() async {
    log('square image');
    final image1 = await imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      log("squarre path to the gallery");
      _image1 = File(image1!.path);
      log(_image1.toString());
    });
  }

 

  final TextEditingController _desccontroller = TextEditingController();

  int _currentStep = 0;

  bool _isVerticalStepper = true;

   _stepTapped(int step) {
      setState(() => _currentStep = step);
    }

    
    _stepContinue() {
       _currentStep < 2 ? setState(() => _currentStep += 1) : null;
    }

    _stepCancel() {
      _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
    }

  TextEditingController _address = TextEditingController();

  List<Step> getPresale()=>
  [
    Step
    (
      title: const Text
       (
         'Basic Info',
          style: TextStyle
            (
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w900
            ),
       ),
      content: Column
      (
        children: 
        [
          Align(
            alignment: Alignment.centerLeft,
            child: Text
            (
              'Banner Image(728*90)*',
              style: TextStyle
              (
                fontSize: 15,
                color: Colors.white
              ),
            ),
          ),
          Row
          (
            children: 
            [
              FlatButton
              (
                color: Colors.white,
                onPressed: getImagegallery, 
                child: Text
                (
                  'Choose File',
                  style: TextStyle
                  (
                    color: Colors.black,
                  ),
                )
              ),
              Expanded
              (
                child: SizedBox(
                  height: 38,
                  child: TextFormField(
                  initialValue: _image.toString(),
                  onChanged: onDescriptionChange,
                  decoration:const InputDecoration
                  (
                    // labelText: 'No File Chosen',
                    // labelStyle: TextStyle(
                      
                    // ),
                    focusedBorder: OutlineInputBorder
                    (
                        borderSide: BorderSide
                        (
                          color: Colors.white, width: 1.0
                        ),
                    ),
                    enabledBorder: OutlineInputBorder
                    (
                        borderSide: BorderSide
                        (
                          color: Colors.white, width: 1.0
                        ),
                    ),
                    errorBorder: OutlineInputBorder
                    (
                      borderSide: BorderSide
                        (
                          color: Colors.white, width: 1.0
                        ),
                    ),
                  )
                  // decoration: InputDecoration(labelText: "Description"),
                 ),
                ),
              )
            ],
          ),
          SizedBox
          (
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text
            (
              'Banner Image  Preview',
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
                controller: _desccontroller,
                minLines: 6,
                maxLines: 7,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
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

              SizedBox
              (
                height: 20,
              ),


              Align(
            alignment: Alignment.centerLeft,
            child: Text
            (
              'Square Image(250*250)*',
              style: TextStyle
              (
                fontSize: 15,
                color: Colors.white
              ),
            ),
          ),
          Row
          (
            children: 
            [
              FlatButton
              (
                color: Colors.white,
                onPressed: SquareImagegallery, 
                child: Text
                (
                  'Choose File',
                  style: TextStyle
                  (
                    color: Colors.black,
                  ),
                )
              ),
              Expanded
              (
                child: SizedBox(
                  height: 38,
                  child: TextFormField(
                  initialValue: _image1.toString(),
                  onChanged: onDescriptionChange,
                  decoration:const InputDecoration
                  (
                    // labelText: 'No File Chosen',
                    // labelStyle: TextStyle(
                      
                    // ),
                    focusedBorder: OutlineInputBorder
                    (
                        borderSide: BorderSide
                        (
                          color: Colors.white, width: 1.0
                        ),
                    ),
                    enabledBorder: OutlineInputBorder
                    (
                        borderSide: BorderSide
                        (
                          color: Colors.white, width: 1.0
                        ),
                    ),
                    errorBorder: OutlineInputBorder
                    (
                      borderSide: BorderSide
                        (
                          color: Colors.white, width: 1.0
                        ),
                    ),
                  )
                  // decoration: InputDecoration(labelText: "Description"),
                 ),
                ),
              )
            ],
          ),
          SizedBox
          (
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text
            (
              'Square Image  Preview',
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
            child:(_image1 !=null)?Image.file(_image1!,fit: BoxFit.cover,) :Icon
            (
              Icons.add_a_photo_sharp,
              color: Colors.white,
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
              'Ad Link*',
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
          

          
            //
            SizedBox
            (
              height: 20,
            ),
          Row(
          children: [
            Material(
              child: Theme(
                data: ThemeData(
                    unselectedWidgetColor: Colors.white
                ),
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
              child: const Text(
                'I have read and accept terms and conditions',
                style: TextStyle
                (
                  color: Colors.white,
                  fontSize: 15
                ),
                // overflow: TextOverflow.ellipsis,
              ),
            )
          ],
                ),

        SizedBox
        (
          height: 20,
        ),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                // onPressed: _stepContinue,
                onPressed: _stepContinue,
                child: const Text('Next',
                style: TextStyle(color: Colors.white)),
                color: Appcolor.darkviolte,
              ),
            ),
        ],
      ),
      isActive: _currentStep >= 0,
      state: _currentStep >= 0? StepState.complete: StepState.disabled,
    ),
                      // The second step: Phone number
                      Step(
                        title: const Text
                        (
                          'Contact Details',
                          style: TextStyle
                          (
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        content: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                  labelText: 'You mobile number'),
                            ),
                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 1
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      // The third step: Verify phone number
                      Step(
                        title: const Text
                        (
                          'Payment Details',
                          style: TextStyle
                          (
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        content: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: const InputDecoration(
                                  labelText: 'Verification code'),
                            ),
                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 2
                            ? StepState.complete
                            : StepState.disabled,
                      ),
  ];

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
          'Advertise With Us',
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                FontAwesomeIcons.lightbulb,
                                color: Appcolor.darkviolte3,
                              ),
                              SizedBox
                              (
                                width: 10,
                              ),
                              Text
                              (
                                'Advertise With Us',
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
                                'This is Advertise With Us',
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
                              color: Appcolor.darkviolte6
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
              Container(
              height: MediaQuery.of(context).size.height*0.90,
              // height: 900,
              decoration: BoxDecoration
              (
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Appcolor.background,
              ),
              child: Theme(
                data: ThemeData
                (
                  accentColor: Colors.orange,
                  primarySwatch: Colors.orange,
                  canvasColor: Appcolor.background,
                  colorScheme: Theme.of(context).colorScheme.copyWith(
                    primary: Colors.green,
                    onPrimary: Colors.pink
                    // background: Appcolor.darkviolte,
                    // secondary: Colors.green,
                  ),
                ),
                child: Stepper(
                   controlsBuilder: (BuildContext context, ControlsDetails details) {
                    return Row(
                  children: <Widget>[
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
                  steps: getPresale()
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