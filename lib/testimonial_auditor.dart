import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'config.dart';

class AuditorsTextimonial extends StatelessWidget {
  const AuditorsTextimonial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: BoxDecoration(
            color: currentTheme.isDark ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // SvgPicture.asset(
              //   'assets/icons/testimonial.svg',
              //   color: Colors.grey,
              //   width: 100,
              //   height: 150,
              // ),
              Lottie.asset('assets/lottie_anim/testimonial.json', repeat: true),
              const Text(
                'Testimonials Not Found',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
