class Travel {
  final String title;
  final String image;
  final String location;
  final String date;
  final String writer;
  final String job;
  final String writerImage;

  Travel({
    required this.title,
    required this.image,
    required this.location,
    required this.date,
    required this.writer,
    required this.job,
    required this.writerImage,
  });

  static List<Travel> getTravelBlogs() {
    return [
      Travel(
        title: 'Bora Bora',
        image: 'assets/images/top1.jpg',
        location: 'French',
        date: '6 Aug 2019',
        writer: 'George Bernard Shaw',
        job: 'Telephone employee',
        writerImage: 'https://upload.wikimedia.org/wikipedia/en/thumb/3/30/Bernard-Shaw-ILN-1911-original.jpg/1200px-Bernard-Shaw-ILN-1911-original.jpg',
      ),
      Travel(
        title: 'Colosseum',
        image: 'assets/images/top2.jpg',
        location: 'Rome',
        date: '3 Jun 2020',
        writer: 'Frank O\'Hara',
        job: 'Museum clerk',
        writerImage: 'https://upload.wikimedia.org/wikipedia/commons/7/7f/Frank_O%27Hara_%28photo_portrait%29.jpg',
      ),
      Travel(
        title: 'The City of Lights',
        image: 'assets/images/top3.jpg',
        location: 'Paris',
        date: '12 Apr 2022',
        writer: 'Arthur Conan Doyle',
        job: 'Surgeon',
        writerImage: 'https://upload.wikimedia.org/wikipedia/commons/b/bb/Conan_doyle.jpg',
      ),
      Travel(
        title: 'Machu Picchu',
        image: 'assets/images/top4.jpg',
        location: 'Peru',
        date: '23 Oct 2021',
        writer: 'William Carlos Williams',
        job: 'Physician',
        writerImage: 'https://upload.wikimedia.org/wikipedia/commons/9/99/William_Carlos_Williams_passport_photograph_1921_%28cropped%29.jpg',
      ),
    ];
  }

  static List<Travel> getMostPopularBlogs() {
    return [
      Travel(
        title: 'The heritage',
        image: 'assets/images/bottom1.jpg',
        location: 'England',
        date: '2 Jan 2018',
        writer: 'Kurt Vonnegut',
        job: 'Car salesman',
        writerImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Kurt_Vonnegut_1972.jpg/640px-Kurt_Vonnegut_1972.jpg',
      ),
      Travel(
        title: 'Barrier Reef',
        image: 'assets/images/bottom2.jpg',
        location: 'Australia',
        date: '5 Feb 2020',
        writer: 'William S. Burroughs',
        job: 'Exterminator',
        writerImage: 'https://upload.wikimedia.org/wikipedia/commons/8/8a/Burroughs1983_cropped.jpg',
      ),
      Travel(
        title: 'Tropical Haven',
        image: 'assets/images/bottom3.jpg',
        location: 'Maldives',
        date: '10 Mar 2021',
        writer: 'Wallace Stevens',
        job: 'Insurance lawyer',
        writerImage: 'https://upload.wikimedia.org/wikipedia/commons/7/79/Wallace_Stevens%2C_1948.jpg',
      ),
      Travel(
        title: 'The City of Minerals',
        image: 'assets/images/bottom4.jpg',
        location: 'Turkey',
        date: '30 Dec 2020',
        writer: 'Margaret Atwood',
        job: 'Barista',
        writerImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Margaret_Atwood_2015.jpg/640px-Margaret_Atwood_2015.jpg',
      ),
    ];
  }
}
