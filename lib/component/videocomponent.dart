import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flick_video_player/flick_video_player.dart';



class VideoComponent extends StatefulWidget {
  final bool play;
  final String asset;
  final double width;
  final double height;
  const VideoComponent({super.key,required this.play,required this.asset,required this.width,required this.height});

  @override
  State<VideoComponent> createState() => _VideoComponentState();
}

class _VideoComponentState extends State<VideoComponent> {


  late VideoPlayerController controller ;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = VideoPlayerController.asset(widget.asset)..initialize().then((value) {

      setState(() {

      });

      controller.setLooping(true);
      controller.play();
    });
  }


  @override
  Widget build(BuildContext context) {

    if(widget.play == true){
      controller.play();
    }else{
      controller.pause();
    }
    
    return AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          // child: FlickVideoPlayer(flickManager: flickManager),
      child: VideoPlayer(controller),
        );
  }
}