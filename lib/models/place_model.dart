class Place {
  final String imageUrl;
  final String city;
  final String country;
  final int properties;

  Place(
      {required this.imageUrl,
      required this.city,
      required this.country,
      required this.properties});
}

final places = [
  Place(
    imageUrl: 'assets/amsterdam.png',
    city: 'Amsterdam',
    country: 'Netherlands',
    properties: 203,
  ),
  Place(
    imageUrl: 'assets/bangkok.png',
    city: 'Bangkok',
    country: 'Thailand',
    properties: 586,
  ),
  Place(
    imageUrl: 'assets/london.png',
    city: 'London',
    country: 'England',
    properties: 427,
  ),
  Place(
    imageUrl: 'assets/rome.png',
    city: 'Rome',
    country: 'Italy',
    properties: 891,
  ),
  Place(
    imageUrl: 'assets/sydney.png',
    city: 'Sydney',
    country: 'Australia',
    properties: 162,
  ),
  Place(
    imageUrl: 'assets/tokyo.png',
    city: 'Tokyo',
    country: 'Japan',
    properties: 372,
  ),
];
