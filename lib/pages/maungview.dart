import 'package:flutter/material.dart';



class MaungViewPage extends StatefulWidget {
  const MaungViewPage({super.key});

  @override
  State<MaungViewPage> createState() => _MaungViewPageState();
}

class _MaungViewPageState extends State<MaungViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:const Text("မောင်းကြည့်နည်း",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15
        ),),
        centerTitle: false,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                bottom: 5,
                right: 10
              ),
              child: const Text("IBET789 မောင်းတွက်နည်း..",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("Team A.... 1.86"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("Team B.... 1.96"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("Team C.... 1.90"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("Team D.... 2.36"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("ရှေ့က အသင်း၊ နောက်က လျော်ဆ"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("လေးသင်းမောင်းကို 100 ထိုးတယ်ဆိုပါတော့ 100 x (1.86 x 1.96 x 1.90 x 2.36) - 100 = 1535"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("လေးသင်းလုံးအပြည့်နိုင်ရင် ထိုးငွေ ၊ အဆ - ထိုးငွေ"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("တစ်ဝက်နိုင် တစ်ပွဲပါရင်"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("လေးသင်းမှာ ကျန်တာအပြည့်နိုင် A ပဲ +50 ဆိုရင်"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("အဆထဲက တစ်ဝက်ပဲနိုင်တယ်ဆိုတော့ 1 နုတ် ၊ ရတာကို 2 နဲ့စား ပြီးရင် 1 နဲ့ ပေါင်း ([(1.86-1) / 2+1] x 1.96 x 1.90 x 2,36) x 100 - 100"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("1.43 ရမယ်..."),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("= 1156.80"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("တစ်ဝက်ရှုံး တစ်ပွဲပါရင်"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("သုံးသင်းမောင် A,B.C မှာ A က တစ်ဝက်ရှုံးဆိုရင်"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("အပြည့်ရတဲ့ နှစ်သင်း အရင်မြှောက်၊ ပြီးရင် ထိုးငွေ ၁၀၀ အစား ၂ အဖြေနဲ့ ပြန်မြှောက်"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("(1.96 x 1.90) x (100/2) - 100 = 86.20"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("တစ်ဝက်ရှုံးရင် ရှုံးတဲ့ပွဲကို ပယ်တဲ့အပြင် ထိုးကြေးထဲက တစ်ဝက်နုတ်တဲ့ ပါ….တစ်ဝက်ရှုံးပွဲ ထည့်တွက်စရာမလို သဘော"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("တစ်ဝက်ရှုံး နှစ်ပွဲပါရင်"),
            ),Container(
              margin: const EdgeInsets.only(
                  left: 10,
                  bottom: 5,
                  right: 10
              ),
              child: const Text("A,B,C သုံးသင်းမှာ A နဲ့ B ကတစ်ဝက်ရှုံးရင် ထိုးငွေကို ၂ နဲ့စား၊ နိုင်တာကို ၂ နဲ့မြှောက်၊ ပြီးရင် ၁ဝဝ ထဲကနုတ် (100/2)/2 x 1.90) - 100 = -52.50 ပြန်ရမယ်"),
            ),
          ],
        ),
      ),
    );
  }
}
