
import 'package:audio_app_example/widgets/seekbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:just_audio/just_audio.dart';
import '../models/song_models.dart';
import '../models/playlist_model.dart';
import 'package:rxdart/rxdart.dart' as rxdart;

import '../widgets/widgets.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({Key? key}) : super(key: key);
  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
      AudioPlayer audioPlayer = AudioPlayer();
    Song song = Get.arguments ?? Song.songs[0];

  @override
    void initState(){
      super.initState();

      audioPlayer.setAudioSource(
      ConcatenatingAudioSource(children: [
          AudioSource.uri(
            Uri.parse('asset:///${song.url}'),
        ),
        ],
      ), 
      );
    }

@override 
void dispose(){
  audioPlayer.dispose();
  super.dispose();
}

  Stream<SeekBarData> get _seekBarDataStream =>
      rxdart.Rx.combineLatest2<Duration, Duration?, SeekBarData>(
          audioPlayer.positionStream, 
          audioPlayer.durationStream, (
        Duration position,
        Duration? duration,
      ) {
        return SeekBarData(
          position,
          duration ?? Duration.zero,
        );
      });
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
      elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            //song.coverUrl,
            'assets/images/avion2.jpg',
            fit: BoxFit.cover,
          ),
          const _BackgrounfFilter(),
          _MusicPlayer(
            song: song,
            seekBarDataStream: _seekBarDataStream, 
            audioPlayer: audioPlayer),
        ],
      )
      );
    }
  }

class _MusicPlayer extends StatelessWidget {
  const _MusicPlayer({
    super.key,
    required this.song,
    required Stream<SeekBarData> seekBarDataStream,
    required this.audioPlayer,
  }) : _seekBarDataStream = seekBarDataStream;

  final Song song;
  final Stream<SeekBarData> _seekBarDataStream;
  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            song.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            song.description,
            maxLines: 2,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.white),
          ),
          const SizedBox(height: 30),
          StreamBuilder<SeekBarData>(
            stream: _seekBarDataStream,
            builder: 
            (context, snapshot){
              final positionData = snapshot.data;
              return SeekBar(
                position: positionData?.position ?? Duration.zero, 
                duration: positionData?.duration ?? Duration.zero,
                onChangeEnd: audioPlayer.seek,
                );
            },
          ),
          Playerbuttons(audioPlayer: audioPlayer),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 35,
                onPressed: () {},
                icon: const Icon(
                  Icons.flag_outlined,
                  color: Colors.white,
                ),
              ),
              
              IconButton(
                iconSize: 35,
                onPressed: () {},
                icon: const Icon(
                  Icons.comment_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                iconSize: 35,
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ),
              IconButton(
                iconSize: 35,
                onPressed: () {},
                icon: const Icon(
                  Icons.speed,
                  color: Colors.white,
                ),
              ),
              IconButton(
                iconSize: 35,
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),


      ],
      ),
    );
  }
}



class _BackgrounfFilter extends StatelessWidget {
  const _BackgrounfFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect){
         return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.white,
      Colors.white.withOpacity(0.5),
      Colors.white.withOpacity(0.0),
    ],
    stops: const [0.0, 0.4, 0.6]
        ).createShader(rect);

      } ,
      blendMode: BlendMode.dstOut,
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
              Colors.orangeAccent,
              Colors.orange,
    ],
        ),
      ),
    ),
  );
  }
}
