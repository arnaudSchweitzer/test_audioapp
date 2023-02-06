import 'package:flutter/material.dart';

class PalyList extends StatelessWidget {
  const PalyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              
              

            ],
    ),
      ),
    );
  }
}

class PlaylistShow extends StatelessWidget {
  const PlaylistShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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