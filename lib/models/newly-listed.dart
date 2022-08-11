class NewlyListedModel{
  String image;
  String heading;
  String subheading;
  String trailing;
  NewlyListedModel(
    this.image,this.heading,this.subheading,this.trailing,
  );
}

List<NewlyListedModel> getNewlyListedModel()
{
  return<NewlyListedModel>
  [
    NewlyListedModel
    (
      'https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/DPYBKVZG55EWFHIK2TVT3HTH7Y.png', 
      'Presearch.org', 
      'Lorem ipsum, dolor sit amet con se ctetur adipisicing elit.', 
      'sponsered'
    ),
    NewlyListedModel
    (
      'https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/DPYBKVZG55EWFHIK2TVT3HTH7Y.png', 
      'Presearch.org', 
      'Lorem ipsum, dolor sit amet con se ctetur adipisicing elit.', 
      'sponsered'
    ),
  ];
}