class CurrentlyListedModel{
  String image;
  String heading;
  String subheading;
  String trailing;
  CurrentlyListedModel(
    this.image,this.heading,this.subheading,this.trailing,
  );
}

List<CurrentlyListedModel> getCurrentlyListedModel()
{
  return<CurrentlyListedModel>
  [
    CurrentlyListedModel
    (
      'https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/DPYBKVZG55EWFHIK2TVT3HTH7Y.png', 
      'Presearch.org', 
      'Lorem ipsum, dolor sit amet con se ctetur adipisicing elit.', 
      'sponsered'
    ),
    CurrentlyListedModel
    (
      'https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/DPYBKVZG55EWFHIK2TVT3HTH7Y.png', 
      'Presearch.org', 
      'Lorem ipsum, dolor sit amet con se ctetur adipisicing elit.', 
      'sponsered'
    ),
  ];
}