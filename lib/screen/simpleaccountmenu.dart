import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/utils/arrow_clipper.dart';

class SimpleAccountMenu extends StatefulWidget {
  final List<Icon>? icons;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final Color? iconColor;
  final ValueChanged<int>? onChange;
  final bool _flag = true;

  const SimpleAccountMenu({
    this.icons,
    this.borderRadius,
    this.backgroundColor = const Color(0xfff67c0b9),
    this.iconColor = Colors.black,
    this.onChange,
  }) : assert(icons != null);
  @override
  _SimpleAccountMenuState createState() => _SimpleAccountMenuState();
}

class _SimpleAccountMenuState extends State<SimpleAccountMenu>
    with SingleTickerProviderStateMixin {
  late GlobalKey _key;
  bool isMenuOpen = false;
  late Offset buttonPosition;
  late Size buttonSize;
  late OverlayEntry _overlayEntry;
  late BorderRadius _borderRadius;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    _borderRadius = widget.borderRadius ?? BorderRadius.circular(4);
    _key = LabeledGlobalKey("button_icon");
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  findButton() {
    // RenderBox renderBox = _key.currentContext?.findRenderObject();
    final RenderBox renderBox =
        _key.currentContext!.findRenderObject() as RenderBox;
    buttonSize = renderBox.size;
    buttonPosition = renderBox.localToGlobal(Offset.zero);
  }

  void closeMenu() {
    _overlayEntry.remove();
    _animationController.reverse();
    isMenuOpen = !isMenuOpen;
  }

  void openMenu() {
    findButton();
    _animationController.forward();
    _overlayEntry = _overlayEntryBuilder();
    Overlay.of(context)!.insert(_overlayEntry);
    isMenuOpen = !isMenuOpen;
  }

  final bool _flag = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _key,
      decoration: const BoxDecoration(
          color: Colors.transparent,
          // borderRadius: _borderRadius,
          // borderRadius: BorderRadius.circular(0)
          shape: BoxShape.circle),
      child: IconButton(
        // icon:
        //     _flag ? const Icon(Icons.add) : const Icon(FontAwesomeIcons.close),
        icon: AnimatedIcon(
          // icon: _flag?Icon(Icons.add)
          //           : const Icon(FontAwesomeIcons.close),
          icon: AnimatedIcons.menu_close,
          progress: _animationController,
        ),
        color: Colors.white,
        onPressed: () {
          if (isMenuOpen) {
            closeMenu();
          } else {
            openMenu();
          }
        },
      ),
    );
  }

  OverlayEntry _overlayEntryBuilder() {
    return OverlayEntry(
      builder: (context) {
        return Positioned(
          // top: buttonPosition.dy + buttonSize.height,
          // top: buttonPosition.dy * 9 + buttonSize.height,
          bottom: 100,
          left: buttonPosition.dx,
          width: buttonSize.width,
          child: Material(
            color: Colors.transparent,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: ClipPath(
                    clipper: ArrowClipper(),
                    child: Container(
                      width: 17,
                      height: 17,
                      color: widget.backgroundColor ?? const Color(0x00000fff),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    height: widget.icons!.length * buttonSize.height,
                    decoration: BoxDecoration(
                      color: widget.backgroundColor,
                      borderRadius: _borderRadius,
                    ),
                    child: Theme(
                      data: ThemeData(
                        iconTheme: IconThemeData(
                          color: widget.iconColor,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(widget.icons!.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              widget.onChange!(index);
                              closeMenu();
                            },
                            child: SizedBox(
                              width: buttonSize.width,
                              height: buttonSize.height,
                              child: widget.icons![index],
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ),
                // PopupMenuButton<int>(
                //   color: Colors.yellow,
                //   itemBuilder: (context) => [
                //     const PopupMenuItem(
                //         value: 1,
                //         child: Text(
                //           'Edit',
                //           style: TextStyle(color: Colors.black),
                //         )),
                //     const PopupMenuItem(
                //         value: 2,
                //         child: Text(
                //           'Delete',
                //           style: TextStyle(color: Colors.black),
                //         ))
                //   ],
                //   // icon: Icon(Icons.library_add),
                //   //   child: _flag
                //   //       ? const Icon(Icons.add)
                //   //       : const Icon(FontAwesomeIcons.close),
                //   icon: _flag
                //       ? const Icon(Icons.add)
                //       : const Icon(FontAwesomeIcons.close),
                //   // icon: const Icon(
                //   //   FontAwesomeIcons.ellipsis,
                //   //   color: Colors.white,
                //   // ),
                //   // offset: const Offset(0, -50),
                //   offset: Offset.zero,
                //   onCanceled: () {
                //     log('cancelled');
                //   },
                //   onSelected: (value) {
                //     log('value: $value');
                //   },
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
