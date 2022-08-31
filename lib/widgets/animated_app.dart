import 'package:appbar_animated/appbar_animated.dart';
import 'package:flutter/material.dart';

class AnimatedApp extends StatelessWidget {
  const AnimatedApp({Key? key}) : super(key: key);

  //  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: ScaffoldLayoutBuilder(
  //       backgroundColorAppBar:
  //           const ColorBuilder(Colors.transparent, Colors.blue),
  //       textColorAppBar: const ColorBuilder(Colors.white),
  //       appBarBuilder: _appBar,
  //       child: SingleChildScrollView(
  //         child: Stack(
  //           children: [
  //             Image.network(
  //               "https://www.gotravelly.com/blog/wp-content/uploads/2019/10/Gunung-Fuji-Jepang.jpg",
  //               width: MediaQuery.of(context).size.width,
  //               height: MediaQuery.of(context).size.height * 0.4,
  //               fit: BoxFit.cover,
  //             ),
  //             Container(
  //               margin: EdgeInsets.only(
  //                 top: MediaQuery.of(context).size.height * 0.36,
  //               ),
  //               height: 900,
  //               decoration: const BoxDecoration(
  //                 borderRadius: BorderRadius.vertical(
  //                   top: Radius.circular(40),
  //                 ),
  //                 color: Colors.white,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget _appBar(BuildContext context, ColorAnimated colorAnimated) {
  //   return AppBar(
  //     backgroundColor: colorAnimated.background,
  //     elevation: 0,
  //     title: Text(
  //       "AppBar Animate",
  //       style: TextStyle(
  //         color: colorAnimated.color,
  //       ),
  //     ),
  //     leading: Icon(
  //       Icons.arrow_back_ios_new_rounded,
  //       color: colorAnimated.color,
  //     ),
  //     actions: [
  //       IconButton(
  //         onPressed: () {},
  //         icon: Icon(
  //           Icons.favorite,
  //           color: colorAnimated.color,
  //         ),
  //       ),
  //     ],
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          snap: false,
          floating: false,
          leading: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
          actions: const [
            Icon(
              Icons.search,
              size: 30,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.more_vert,
              size: 30,
            )
          ],
          expandedHeight: 180.0,
          flexibleSpace: LayoutBuilder(builder: (context, constraints) {
            bool isAppBarExpanded = constraints.maxHeight >
                kToolbarHeight + MediaQuery.of(context).padding.top;
            return FlexibleSpaceBar(
                title: isAppBarExpanded
                    ? const SizedBox()
                    : const Text('Coding is Love'),
                background: Image.asset('assets/images/logo.png', fit: BoxFit.cover)
                );
          }),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.black12,
                height: 100.0,
                child: Center(
                  child: Text('Tweet ${index + 1}'),
                ),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    ));
  }
}