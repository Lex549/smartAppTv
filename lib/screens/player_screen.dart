import 'package:flutter/material.dart';

class _PlayerScreen extends StatefulWidget {
  const _PlayerScreen({super.key});

  @override
  State<_PlayerScreen> createState() => __PlayerScreenState();
}

class __PlayerScreenState extends State<_PlayerScreen> {
  late YoutubePlayerController _controller;
  late TextEditingController _idController;
  late TextEditingController _seekController;
  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  bool _isPlayerReady = false;
  late String _videoId;



@override
void initState(){
super.initState();
_videoId = YoutubePlayer.convertUrlToId(widget.url).toString();
_controller = YoutubePlayerController(
initialVideoId: _videoId,
flags: const YoutubePlayerFlags(
  mute: false,
  autoPlay: true,
  disableDragSeek: false,
  loop: false,
  isLive: false,
  forceHD: false,
  enableCaption: true ) ); 
   ..addListener(listener); 
  }

  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}