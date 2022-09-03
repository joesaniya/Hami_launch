import 'package:flutter/material.dart';
import 'package:hami_launch/theme/appcolor.dart';



class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  
  MyAppBar({
    this.title,
  });

  String? title;
  
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar
    (
      elevation: 0.0,
      // backgroundColor: Colors.red,
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
          title!,
          style: TextStyle
          (
            color: Colors.white
          ),
        ),
    );
  }
}


// class AppbarWidget extends StatelessWidget {
//   // const AppbarWidget({Key? key}) : super(key: key);
//   String? title;
//   AppbarWidget
//   (
//     {
//       this.title
//     }
//   );

//   @override
//   Widget build(BuildContext context) {
//     return AppBar
//     (
//       elevation: 0.0,
//       backgroundColor: Appcolor.darkviolte6,
//       automaticallyImplyLeading: false,
//         leading: IconButton
//         (
//           onPressed:()
//           {
//             Navigator.pop(context);
//           }, 
//           icon: Icon
//           (
//             Icons.arrow_back_ios,
//             color: Colors.white,
//           )
//         ),
//         title: Text
//         (
//           title!,
//           style: TextStyle
//           (
//             color: Colors.white
//           ),
//         ),
//     );
//   }
// }
