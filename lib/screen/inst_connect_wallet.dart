import 'package:flutter/material.dart';
import 'package:hami_launch/theme/appcolor.dart';
import 'package:hami_launch/widgets/appbar_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ConnectWallet extends StatefulWidget {
  const ConnectWallet({Key? key}) : super(key: key);

  @override
  State<ConnectWallet> createState() => _ConnectWalletState();
}

class _ConnectWalletState extends State<ConnectWallet> {
  YoutubePlayerController? _controller;
  @override
  void initState()
  {
    super.initState();

    _controller=YoutubePlayerController
    (
      initialVideoId: '5qmxrn9ITfs',
      flags: YoutubePlayerFlags
      (
        autoPlay: false,
        mute: true,
        isLive: false
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder
    (
      player: YoutubePlayer
      (
        controller: _controller!,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.deepPurple,
        progressColors: ProgressBarColors
        (
          playedColor: Appcolor.darkviolte,
          handleColor: Appcolor.darkgreen
        ),
      ), 
      builder: (context,player)
      {
        return Scaffold
        (
          appBar:MyAppBar(title: 'How To Connect Wallet',),
          // body: player,
          body: SingleChildScrollView
          (
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column
              (
                children: 
                [
                  Container
                  (
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration
                    (
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all
                      (
                        width: 2,
                        color: Colors.deepPurple
                      )
                    ),
                    child: ClipRRect
                    (
                      borderRadius: BorderRadius.circular(30),
                      child: player
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
    
  }
}