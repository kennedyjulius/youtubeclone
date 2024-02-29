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
        flags: YoutubePlayerFlags(autoPlay: true, mute: false))
      ..addListener(_onPlayerStateChange);
  }

  void _onPlayerStateChange() {
    if (_controller.value.playerState == PlayerState.playing) {
      print("The Video is playing");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [YoutubePlayer(controller: _controller)],
      ),
    );
  }
}
