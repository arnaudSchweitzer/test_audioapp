import '../models/playlist_model.dart';

class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: 'The Story of Aviation - Théo WEBER',
      description: 'The word "aviation" appeared for the first time in 1863 under the pen \n  of Guillaume de La Landelle in his book...',
      url: 'assets/music/glass.mp3',
      coverUrl: 'assets/images/glass.jpg',
    ),
    Song(
      title: 'Illusions',
      description: 'Illusions',
      url: 'assets/music/illusions.mp3',
      coverUrl: 'assets/images/illusions.jpg',
    ),
    Song(
      title: 'Pray',
      description: 'Pray',
      url: 'assets/music/pray.mp3',
      coverUrl: 'assets/images/pray.jpg',
    )
  ];
}