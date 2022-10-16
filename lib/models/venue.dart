class Venue {
  late String country;
  late String city;
  late String stadium;
  late String image;

  Venue({
    required this.country,
    required this.city,
    required this.stadium,
    required this.image,
  });

  // JSON to Dart Object

  factory Venue.fromJSON(Map<String, dynamic> map) {
    return Venue(
      country: map['country'],
      city: map['city'],
      stadium: map['stadium'],
      image: map['image'],
    );
  }
}
