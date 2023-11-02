class Books {
  String name;
  String author;
  int? year;
  String about;
  String image;
  double rate;
  // bool isRead= false;

  Books({
    required this.name,
    required this.author,
    this.year,
    this.about = 'Nothing about this book',
    this.image = 'https://www.actbus.net/fleetwiki/images/8/84/Noimage.jpg',
    this.rate = 0,
  });
// bool toRead (){
// return !isRead; }
}
