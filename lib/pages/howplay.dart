import 'package:flutter/material.dart';
import 'package:ibet786/component/videocomponent.dart';



class HowPlayPage extends StatefulWidget {
  const HowPlayPage({super.key});

  @override
  State<HowPlayPage> createState() => _HowPlayPageState();
}

class _HowPlayPageState extends State<HowPlayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:const Text("ဘော်ဒီမောင်းကစားနည်း",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15
        ),),
        centerTitle: false,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
        ),
      ),
      body: VideoComponent(
        asset: "assets/video/howplayibet.mp4",
        play: true,
        width: MediaQuery.of(context).size.width,
        height: 100,
      ),
    );
  }
}
