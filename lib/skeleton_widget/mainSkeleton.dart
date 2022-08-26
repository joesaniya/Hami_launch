import 'package:flutter/material.dart';
import 'package:hami_launch/skeleton_widget/reuseSkeleton.dart';

class MainSkeleton extends StatelessWidget {
   MainSkeleton({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         ReuseSkelton(height: 120, width: 120),
         SizedBox(width:16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               ReuseSkelton(width: 80),
               SizedBox(height: 16 / 2),
               ReuseSkelton(),
               SizedBox(height: 16 / 2),
               ReuseSkelton(),
               SizedBox(height: 16 / 2),
              Row(
                children:  [
                  Expanded(
                    child: ReuseSkelton(),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: ReuseSkelton(),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}