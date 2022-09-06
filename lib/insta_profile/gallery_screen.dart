import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hami_launch/theme/appcolor.dart';

import '../helper/company_helper.dart';
import '../models/company.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  late OverlayEntry _popupDialog;

  List<String> name = [
    'Tokens',
    'arch',
    'ar',
    'people',
    'tech',
    'animals',
    'Tokens',
    'https://placeimg.com/640/480/nature',
    'https://placeimg.com/640/480/people',
    'https://placeimg.com/640/480/tech',
    'https://placeimg.com/640/480/nature',
    'https://placeimg.com/640/480/people',
    'https://placeimg.com/640/480/tech',
    'https://placeimg.com/640/480/animals',
    'https://placeimg.com/640/480/arch',
    'https://placeimg.com/640/480/nature',
    'https://placeimg.com/640/480/people',
  ];
  List<String> imageUrls = [
    'assets/images/terra.png',
    'assets/images/polygan.png',
    'assets/images/luna.png',
    'assets/images/weth.png',
    'assets/images/ethirum.jpg',
    'assets/images/crypto.jpg',
    'assets/images/ledger.png',
    'assets/images/tokenary.jpg',
    'assets/images/infinity_wallet.png',
    'assets/images/wallet3.jpg',
    'assets/images/secux.png',
    'assets/images/fireblocks.png',
    'assets/images/ricewallet.png',
    'assets/images/vision.png',
    'assets/images/keyringpro.jpg',
    'assets/images/paper.png',
    'assets/images/wallet3_2.png',
  ];

  List<Company> searchResult = CompanyHelper.SarchResultCompany;
  List<Company>? foundCompany;

  @override
  initState() {
    print('init');
    foundCompany = searchResult;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
        // children: foundCompany.map(_createGridTileWidget).toList(),
        children: imageUrls.map(_createGridTileWidget).toList(),
      ),
    );
  }

  Widget _createGridTileWidget(String url) => Builder(
        builder: (context) => GestureDetector(
          onLongPress: () {
            log('_creategrid clicked');
            _popupDialog = _createPopupDialog(url);
            Overlay.of(context)!.insert(_popupDialog);
          },
          onLongPressEnd: (details) => _popupDialog.remove(),
          child: Container
          (
            height: 30,
            decoration: BoxDecoration
            (
              color: Appcolor.background,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Image.asset(url, fit: BoxFit.cover),
                CircleAvatar
                (
                  backgroundImage: AssetImage(url),
                ),
                // Image.network(url, fit: BoxFit.cover),
                // SizedBox(height: 20,),
                Text
                (
                  name.first,
                  style: TextStyle
                  (
                    color: Colors.white
                  ),
                )
              ],
            )
          ),
        ),
      );

  OverlayEntry _createPopupDialog(String url) {
    return OverlayEntry(
      builder: (context) => AnimatedDialog(
        child: _createPopupContent(url),
      ),
    );
  }

  Widget _createPhotoTitle() => Container(
      width: double.infinity,
      color: Appcolor.background,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage('https://placeimg.com/640/480/people'),
        ),
        title: Text(
          'jenslin',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ));

  Widget _createActionBar() => Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        color: Appcolor.background,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            Icon(
              Icons.chat_bubble_outline_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.send,
              color: Colors.white,
            ),
          ],
        ),
      );

  Widget _createPopupContent(String url) => Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _createPhotoTitle(),
              Image.network(url, fit: BoxFit.fitWidth),
              _createActionBar(),
            ],
          ),
        ),
      );
}

class AnimatedDialog extends StatefulWidget {
  const AnimatedDialog({this.child});

  final Widget? child;

  @override
  State<StatefulWidget> createState() => AnimatedDialogState();
}

class AnimatedDialogState extends State<AnimatedDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacityAnimation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.easeOutExpo);
    opacityAnimation = Tween<double>(begin: 0.0, end: 0.6).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeOutExpo));

    controller.addListener(() => setState(() {}));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black.withOpacity(opacityAnimation.value),
      child: Center(
        child: FadeTransition(
          opacity: scaleAnimation,
          child: ScaleTransition(
            scale: scaleAnimation,
            child: widget.child,
          ),
        ),
      ),
    );
  }
}