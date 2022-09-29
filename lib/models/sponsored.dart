// class LP {
//   final String Profileimage;
//   final String title;
//   final String subtitle;
//   final String Supply;
//   final String locked;
//   final String date;
//   LP(
//       {required this.Profileimage,
//       required this.title,
//       required this.subtitle,
//       required this.Supply,
//       required this.locked,
//       required this.date});
// }

// // List<LP> lp = <LP>[];
// List<LP> getLp() {
//   return <LP>[];
// }

class Sponsored {
  String image;
  String heading;
  String subheading;
  String trailing;
  Sponsored(
    this.image,
    this.heading,
    this.subheading,
    this.trailing,
  );
}

List<Sponsored> getSponsored() {
  return <Sponsored>[
    Sponsored(
        'https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/DPYBKVZG55EWFHIK2TVT3HTH7Y.png',
        'Presearch.org',
        'Lorem ipsum, dolor sit amet con se ctetur adipisicing elit.',
        'sponsered'),
    Sponsored(
        'https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/DPYBKVZG55EWFHIK2TVT3HTH7Y.png',
        'Presearch.org',
        'Lorem ipsum, dolor sit amet con se ctetur adipisicing elit.',
        'sponsered'),
  ];
}
