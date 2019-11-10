class Event {
  String imageUrl;
  String city;
  String country;
  String description;

  Event({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
  });
}

List<Event> events = [
  Event(
      imageUrl: 'assets/images/0.jpg',
      city: 'Pune',
      country: 'India',
      description: 'Very good event.'),
  Event(
      imageUrl: 'assets/images/1.jpg',
      city: 'Delhi',
      country: 'India',
      description: 'Very good event.'),
  Event(
      imageUrl: 'assets/images/2.jpg',
      city: 'Hyderabad',
      country: 'India',
      description: 'Very good event.'),
  Event(
      imageUrl: 'assets/images/3.jpg',
      city: 'Bangalore',
      country: 'India',
      description: 'Very good event.'),
];
