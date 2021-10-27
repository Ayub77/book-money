import 'package:birinchi_loyixa_ishim/pages/asosiyoyna.dart';
import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);
  static final String id = "Intro";
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  late PageController pageController;
  int tartib = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose

    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                PageView(
                  controller: pageController,
                  onPageChanged: (int index) {
                    setState(() {
                      tartib = index;
                    });
                  },
                  children: [
                    oynalar(
                        "Daromadlaringizni",
                        "xisob kitobda adashib ketyapsizmi",
                        "assets/images/rasm.png"),
                    oynalar(
                        "Naqd pullaringizni",
                        "qanday boshqarishni bilmayapsizmi",
                        "assets/images/pul.png"),
                    oynalar(
                        "Kartlaringizdagi",
                        "pullarni ham hisob kitob qiling",
                        "assets/images/karta.png"),
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: buildIndicator(),
                  ),
                ),
                tartib == 2
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 15, right: 30),
                              child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Navigator.pop(context);
                                      Navigator.pushNamed(context, AsosiyOyna.id);
                                    });
                                  },
                                  child: Text("Skip",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))))
                        ],
                      )
                    : Container()
              ],
            )));
  }

  Widget oynalar(title1, title2, image) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              title1,
              style: TextStyle(
                  color: Colors.red, fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(title2,
                style: TextStyle(color: Colors.grey, fontSize: 20),
                textAlign: TextAlign.center),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(image),
              )),
            ),
          ],
        ),
      ),
    );
  }

  Widget indicator(bool isActive) {
    return AnimatedContainer(
      height: 6,
      width: isActive ? 25 : 6,
      margin: EdgeInsets.only(left: 2, right: 2, bottom: 20),
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: Colors.blue),
    );
  }

  List<Widget> buildIndicator() {
    List<Widget> indicators = [];

    for (int i = 0; i < 3; i++) {
      if (tartib == i) {
        indicators.add(indicator(true));
      } else {
        indicators.add(indicator(false));
      }
    }
    return indicators;
  }
}
