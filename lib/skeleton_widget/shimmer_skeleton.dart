import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerSkeleton extends StatefulWidget {
  const ShimmerSkeleton({Key? key}) : super(key: key);

  @override
  State<ShimmerSkeleton> createState() => _ShimmerSkeletonState();
}

class _ShimmerSkeletonState extends State<ShimmerSkeleton> {
  @override
  Widget build(BuildContext context) {
    return ListView
    (
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20),
      children: 
      [
        SizedBox
        (
          height: 20,
        ),
        Center
        (
          child: Shimmer.fromColors
          (
            baseColor: Colors.grey.withOpacity(0.25), 
            highlightColor: Colors.white.withOpacity(0.6),
            period: Duration(seconds: 10),
            loop: 1,
            direction: ShimmerDirection.rtl,
            child: Container
            (
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration
              (
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.withOpacity(0.9)
              ),
            ),
          ),
        ),

        SizedBox
        (
          height: 20,
        ),

        Container
        (
          height: 140,
          child: ListView.builder
          (
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index)
            {
              return Shimmer.fromColors
              (
                baseColor: Colors.grey.withOpacity(0.25), 
                highlightColor: Colors.white.withOpacity(0.25),
                period: Duration(seconds: 10),
                child: Container
                (
                  margin: EdgeInsets.only(top: 12,right: 12,bottom: 12),
                  height: 140,
                  width: 180,
                  decoration: BoxDecoration
                  (
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.withOpacity(0.9)
                  ),
                ),
              );
            }
          ),
        ),

        ListView.builder
        (
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context,index)
          {
            return Padding
            (
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row
              (
                children: 
                [
                  Expanded
                  (
                    flex: 26,
                    child: Shimmer.fromColors
                    (
                      baseColor: Colors.grey.withOpacity(0.25), 
                      highlightColor: Colors.white.withOpacity(0.25),
                      period: Duration(seconds: 10),
                      child: Container
                      (
                        height: 90,
                        decoration: BoxDecoration
                        (
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.withOpacity(0.9)
                        ),
                      ),
                    )
                  ),
                  Expanded
                  (
                    flex: 3,
                    child: Text('')
                  ),
                  Expanded
                  (
                    flex: 70,
                    child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: 
                      [
                        Shimmer.fromColors
                        (
                          baseColor: Colors.grey.withOpacity(0.25),
                          highlightColor: Colors.white.withOpacity(0.6),
                          period: Duration(seconds: 10),
                          child: Container
                          (
                            height: 16,
                            width: 220,
                            decoration: BoxDecoration
                            (
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.withOpacity((0.9))
                            ),
                          ),
                        ),
                        SizedBox
                        (
                          height: 10,
                        ),

                        Shimmer.fromColors
                        (
                          baseColor: Colors.grey.withOpacity(0.25),
                          highlightColor: Colors.white.withOpacity(0.6),
                          period: Duration(seconds: 10),
                          child: Container
                          (
                            height: 16,
                            width: 150,
                            decoration: BoxDecoration
                            (
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.withOpacity((0.9))
                            ),
                          ),
                        ),
                      ],
                    )
                  )
                ],
              ),
            );
          }
        )
      ],
    );
  }
}