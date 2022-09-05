import 'package:flutter/material.dart';

class PartnersDetailScreen extends StatefulWidget {
  const PartnersDetailScreen({Key? key}) : super(key: key);

  @override
  State<PartnersDetailScreen> createState() => _PartnersDetailScreenState();
}

class _PartnersDetailScreenState extends State<PartnersDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  //1
  body: CustomScrollView(
    slivers: <Widget>[
      //2
      SliverAppBar(
        expandedHeight: 250.0,
        flexibleSpace: FlexibleSpaceBar(
          title: Text('Goa', textScaleFactor: 1),
          background: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.fill,
          ),
        ),
      ),
      //3
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (_, int index) {
            return ListTile(
              leading: Container(
                  padding: EdgeInsets.all(8),
                  width: 100,
                  child: Placeholder()),
              title: Text('Place ${index + 1}', textScaleFactor: 2),
            );
          },
          childCount: 20,
        ),
      ),
    ],
  ),
);
  }
}