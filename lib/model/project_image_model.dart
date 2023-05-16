class ProjectImageModel {
  final String url;
  final String image;
  ProjectImageModel({required this.image, required this.url});
}

List imageList = [
  ProjectImageModel(
      image: 'assets/images/proj/video_app.png',
      url:
          'https://github.com/MSatyam-Mishra/Video-App-With-Phone-Sign-in/tree/master'),
  ProjectImageModel(
      image: 'assets/images/proj/green.png',
      url:
          'https://github.com/MSatyam-Mishra/Green-Environment-Site-Home-Flutter'),
  ProjectImageModel(
      image: 'assets/images/proj/swiggy.png',
      url: 'https://github.com/MSatyam-Mishra/Swiggy-Home-Clone-Flutter'),
  ProjectImageModel(
      image: 'assets/images/proj/notes.png',
      url: 'https://github.com/MSatyam-Mishra/Note-App-Flutter'),
];
