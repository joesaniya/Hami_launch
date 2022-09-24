import 'package:flutter/material.dart';
import '../config.dart';
import '/models/company.dart';

import '../theme/appcolor.dart';

class CompanyTile extends StatelessWidget {
  final Company data;
  const CompanyTile({required this.data});

  @override
  Widget build(BuildContext context) {
    // return Container
    // (
    //   width: MediaQuery.of(context).size.width,
    //   height: 30,
    //   color: Colors.red,
    // );
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        width: double.infinity,
        color: Colors.transparent,
        child: Row(
          children: [
//               CachedNetworkImage(
//   // imageUrl: "http://via.placeholder.com/200x150",
//   imageUrl: data.image,
//   imageBuilder: (context, imageProvider) => Container(
//     decoration: BoxDecoration(
//       image: DecorationImage(
//           image: imageProvider,
//           fit: BoxFit.cover,
//           // colorFilter:
//           //     ColorFilter.mode(Colors.red, BlendMode.colorBurn)
//               ),
//     ),
//   ),
//   placeholder: (context, url) => CircularProgressIndicator
//   (
//     // color: Appcolor.darkviolte6,
//   ),
//   errorWidget: (context, url, error) => Icon(Icons.error),
// ),
            CircleAvatar(
              backgroundImage: NetworkImage(data.image),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              data.title,
              style: TextStyle(
                color: currentTheme.isDark ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 20,
              width: 40,
              decoration: BoxDecoration(
                  color: Appcolor.darkviolte1,
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Center(
                  child: Text(
                data.Subtitle,
                style: const TextStyle(color: Colors.white),
              )),
            ),
            const Spacer(),
            Text(
              data.number,
              style: TextStyle(
                color: currentTheme.isDark ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Container(
              height: 30,
              width: 60,
              decoration: const BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: const Center(
                child: Text(
                  'View',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
