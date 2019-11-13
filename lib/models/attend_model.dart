class Attend {
  String name;
  DateTime date;
  String imageUrl;
  String city;
  String country;
  String description;

  Attend({
    this.name,
    this.date,
    this.imageUrl,
    this.city,
    this.country,
    this.description,
  });
}

List<Attend> attends = [
  Attend(
      name: 'Event 1',
      imageUrl: 'assets/images/1.jpg',
      city: 'Pune',
      country: 'India',
      description: 'This is a good event.'),
  Attend(
      name: 'Event 3',
      imageUrl: 'assets/images/3.jpg',
      city: 'Bangalore',
      country: 'India',
      description: 'This is a good event.'),
  Attend(
      name: 'Event 5',
      imageUrl: 'assets/images/5.jpg',
      city: 'Delhi',
      country: 'India',
      description: 'This is a good event.'),
  Attend(
      name: 'Event 6',
      imageUrl: 'assets/images/6.jpg',
      city: 'Chennai',
      country: 'India',
      description: 'This is a good event.'),
];
