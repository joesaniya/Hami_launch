import 'package:flutter/material.dart';

class NotificationsModel{
  String image;
  String heading;
  String subheading;
  String trailing;
  NotificationsModel(
    this.image,this.heading,this.subheading,this.trailing,
  );
}

List<NotificationsModel> notifications = <NotificationsModel>[
 NotificationsModel
    (
      'https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/DPYBKVZG55EWFHIK2TVT3HTH7Y.png', 
      'Presearch.orgdd', 
      'Lorem ipsum, dolor sit amet con se ctetur adipisicing elit.', 
      'sponsered'
    ),
    NotificationsModel
    (
      'https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/DPYBKVZG55EWFHIK2TVT3HTH7Y.png', 
      'Presearch.org', 
      'Lorem ipsum, dolor sit amet con se ctetur adipisicing elit.', 
      'sponsered'
    ),
];



// class Notifications{
//   String image;
//   String heading;
//   String subheading;
//   String trailing;
//   Notifications(
//     this.image,this.heading,this.subheading,this.trailing,
//   );
// }

// List<Notifications> getNotifications()
// {
//   return<Notifications>
//   [
//     Notifications
//     (
//       'https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/DPYBKVZG55EWFHIK2TVT3HTH7Y.png', 
//       'Presearch.org', 
//       'Lorem ipsum, dolor sit amet con se ctetur adipisicing elit.', 
//       'sponsered'
//     ),
//     Notifications
//     (
//       'https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/DPYBKVZG55EWFHIK2TVT3HTH7Y.png', 
//       'Presearch.org', 
//       'Lorem ipsum, dolor sit amet con se ctetur adipisicing elit.', 
//       'sponsered'
//     ),
//   ];
// }