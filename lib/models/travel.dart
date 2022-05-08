class Travel {
  final String title;
  final String image;
  final String location;

  Travel({
    required this.title,
    required this.image,
    required this.location,
  });

  static List<Travel> getTravelBlogs() {
    return [
      Travel(
        title: 'Bora Bora',
        image: 'assets/images/top1.jpg',
        location: 'French',
      ),
      Travel(
        title: 'Colosseum',
        image: 'assets/images/top2.jpg',
        location: 'Rome',
      ),
      Travel(
        title: 'The City of Lights',
        image: 'assets/images/top3.jpg',
        location: 'Paris',
      ),
      Travel(
        title: 'Machu Picchu',
        image: 'assets/images/top4.jpg',
        location: 'Peru',
      ),
    ];
  }

  static List<Travel> getMostPopularBlogs() {
    return [
      Travel(
        title: 'The heritage',
        image: 'assets/images/bottom1.jpg',
        location: 'England',
      ),
      Travel(
        title: 'Barrier Reef',
        image: 'assets/images/bottom2.jpg',
        location: 'Australia',
      ),
      Travel(
        title: 'Tropical Haven',
        image: 'assets/images/bottom3.jpg',
        location: 'Maldives',
      ),
      Travel(
        title: 'The City of Minerals',
        image: 'assets/images/bottom4.jpg',
        location: 'Turkey',
      ),
    ];
  }
}
