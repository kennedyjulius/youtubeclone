import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerCustomPlayer extends StatefulWidget {
  final String videoId = '0sacQ4oo-P0';
  const YoutubePlayerCustomPlayer({super.key});

  @override
  State<YoutubePlayerCustomPlayer> createState() =>
      _YoutubePlayerCustomPlayerState();
}

class _YoutubePlayerCustomPlayerState extends State<YoutubePlayerCustomPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
        initialVideoId: widget.videoId,
        flags: YoutubePlayerFlags(autoPlay: false, mute: false))
      ..addListener(_onPlayerStateChange);
  }

  void _onPlayerStateChange() {
    if (_controller.value.playerState == PlayerState.playing) {
      // final currentTime = _controller.value.position.inSeconds;
      // final currentSubtitle = subtitle.firstWhere((subtitle) =>
      //     currentTime >= subtitle.start && currentTime <= subtitle.end);

      // //update the UI with the current subtitle

      // setState(() {
      //   subtitleText = currentSubtitle.text;
      
    }
  }

  //List for custom Subtitle and diplaying duration

  // List<Subtitle> subtitle = [
  //   Subtitle(start: 2, end: 10, text: "Animated Container Widget In Flutter"),
  //   Subtitle(start: 10, end: 200, text: "You can add your custom subtitle"),
  //   Subtitle(start: 2, end: 10, text: "Animated Container Widget In Flutter"),
  // ];

  String subtitleText = "";

  //disposing
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.red,
          progressColors: ProgressBarColors(
            playedColor: Colors.redAccent,
            handleColor: Colors.grey,
          ),
          
        ),
        // Align(
        //   alignment: Alignment.bottomLeft,
        //   child: Padding(
        //     padding: const EdgeInsets.only(left: 8, top: 190),
        //     child: Text(
        //       "The video playing is a Tutorial",
        //       style: TextStyle(fontSize: 17, color: Colors.white),
        //     ),
        //   ),
        // )
      ],
    ));
  }
}