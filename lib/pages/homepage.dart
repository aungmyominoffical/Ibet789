import 'package:flutter/material.dart';
import 'package:ibet786/component/videocomponent.dart';
import 'package:ibet786/pages/howplay.dart';
import 'package:ibet786/pages/maungview.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool mediaPlaying  = true;


  void openFacebook() async {
    /* numeric value ကို https://lookup-id.com/ မှာ ရှာပါ */
    String fbProtocolUrl = "fb://profile/100043119698634";
    try {
      bool launched = await launch(fbProtocolUrl, forceSafariVC: false);
      print("launching..." + fbProtocolUrl);
      if (!launched) {
        print("can't launch");
        await launch(fbProtocolUrl, forceSafariVC: false);
      }
    } catch (e) {
      print("can't launch exp " + e.toString());
      await launch(fbProtocolUrl, forceSafariVC: false);
    }
  }

  void phoneCall({required String phone}) async {
    // Use `Uri` to ensure that `phoneNumber` is properly URL-encoded.
    // Just using 'tel:$phoneNumber' would create invalid URLs in some cases,
    // such as spaces in the input, which would cause `launch` to fail on some
    // platforms.
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: "${phone}",
    );
    await launch(launchUri.toString());
  }

  void openUrl({required String url})async{
    String fbProtocolUrl = url;
    try {
      bool launched = await launch(fbProtocolUrl, forceSafariVC: false);
      print("launching..." + fbProtocolUrl);
      if (!launched) {
        print("can't launch");
        await launch(fbProtocolUrl, forceSafariVC: false);
      }
    } catch (e) {
      print("can't launch exp " + e.toString());
      await launch(fbProtocolUrl, forceSafariVC: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: Platform.isAndroid ? AssetImage("assets/logos/ibetandroid.png") : AssetImage("assets/logos/ibetios.png"),
          fit: BoxFit.cover,
          ),
        ),
        title: Platform.isAndroid ? Text("Ibet789 - Myanmar",style: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.bold
        ),) : Text("789 - Maung",style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold
        ),),
        centerTitle: false,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration:const BoxDecoration(
                  color: Colors.black
                ),
              ),
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.bottomCenter,
                child: Container(
                height: 300,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                 border: Border.all(
                  color: Colors.black,
                  width: 2
                 )
                ),
                child: VideoComponent(
                  asset: "assets/video/ibetvideo.mp4",
                  play: mediaPlaying,
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                ),
              ),
              )
            ],
          ),
          Container(
           margin: const EdgeInsets.only(
              top:5,
              left: 15,
              right: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 2
              )
            ),
            child:  Column(
              children: [
                const Text("အွန်လိုင်း အကောင့်ဖွင့်ကစားလိုပါက ဆက်သွယ်ရန်",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                ),),
                 ListTile(
                   onTap: (){
                     openUrl(url: "https://invite.viber.com/?g2=AQBDF1ckyNmKMFDLbhOSKFk0LDiMt85HhQgTU0q1lzLlDtJlHAubXN5DpZWMy7Wq");
                   },
                  leading: const CircleAvatar(
                    child: Image(
                      image: AssetImage("assets/logos/viber.png"),
                    ),
                  ),
                  title: const Text("Viber ဖြင့်ဆက်သွယ်ရန်",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                 ListTile(
                  onTap: (){
                    openUrl(url: "https://t.me/hhz555Mix");
                  },
                  leading: const CircleAvatar(
                    child: Image(
                      image: AssetImage("assets/logos/telegram.png"),
                    ),
                  ),
                  title: const Text("Telegram ဖြင့်ဆက်သွယ်ရန်",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                ListTile(
                  onTap: (){
                    openFacebook();
                  },
                  leading: const CircleAvatar(
                    child: Image(
                      image: AssetImage("assets/logos/messenger.png"),
                    ),
                  ),
                  title: const Text("Messenger ဖြင့်ဆက်သွယ်ရန်",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                 ListTile(
                   onTap: (){
                     phoneCall(phone: "09444362015");
                   },
                  leading: const CircleAvatar(
                    child: Image(
                      image: AssetImage("assets/logos/phone.png"),
                    ),
                  ),
                  title: const Text("Phone ဖြင့်ဆက်သွယ်ရန်",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                  ListTile(
                    onTap: (){
                      phoneCall(phone: "09964538705");

                    },
                  leading: const CircleAvatar(
                    child: Image(
                      image: AssetImage("assets/logos/phone.png"),
                    ),
                  ),
                  title: const Text("Phone ဖြင့်ဆက်သွယ်ရန်",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top:5,
              left: 15,
              right: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 2
              )
            ),
            child: Column(
              children: [
                ListTile(
                  onTap: ()async{
                    setState(() {
                      mediaPlaying = false;
                    });
                    await Navigator.push(context, MaterialPageRoute(builder: (context) => const HowPlayPage()));
                    setState(() {
                      mediaPlaying = true;
                    });
                  },
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child:  Image(
                      width: 40,
                      height: 40,
                      image: Platform.isAndroid ? AssetImage("assets/logos/ibetandroid.png") : AssetImage("assets/logos/ibetios.png"),
                    ),
                  ),
                  title:const  Text("ဘော်ဒီမောင်းကစားနည်း",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                ListTile(
                  onTap: ()async{
                    setState(() {
                      mediaPlaying = false;
                    });
                    await Navigator.push(context, MaterialPageRoute(builder: (context) => const MaungViewPage()));
                    setState(() {
                      mediaPlaying = true;
                    });
                  },
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child:  Image(
                      width: 40,
                      height: 40,
                      image: Platform.isAndroid ? AssetImage("assets/logos/ibetandroid.png") : AssetImage("assets/logos/ibetios.png"),
                    ),
                  ),
                  title:const Text("မောင်းကြည့်နည်း",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}