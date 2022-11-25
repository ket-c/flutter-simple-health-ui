import 'package:flutter/material.dart';
import 'widgets/components/theme_button.dart';
import 'widgets/components/theme_card.dart';
import 'widgets/components/theme_card_summary.dart';
import 'widgets/screens/summary_screen.dart';

void main() {
  runApp(const HealthAssistant());
}

class HealthAssistant extends StatelessWidget {
  const HealthAssistant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg_screen.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: ThemeButton(
                    btnBorderColor: Colors.black,
                    btnColor: Colors.white,
                    btnChild: Icon(
                      Icons.arrow_back,
                      color: Colors.pinkAccent,
                    ),
                    btnRadius: 50,
                  ),
                ),
                Expanded(child: SizedBox.shrink()),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: ThemeButton(
                    btnBorderColor: Colors.black,
                    btnColor: Colors.white,
                    btnChild: Icon(
                      Icons.refresh_sharp,
                      color: Colors.pinkAccent,
                    ),
                    btnRadius: 50,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Wrap(
                direction: Axis.vertical,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 15, right: 20),
                    child: const Themecard(
                        cardColor: Colors.pinkAccent,
                        cardHeight: 90,
                        cardWidth: 170,
                        cardRadius: 20,
                        cardChild: ThemeCardSummary(
                            title: '68',
                            subTitle: 'Hear Rate BPM',
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ))),
                  ),
                  Container(
                      padding: const EdgeInsets.only(top: 15, right: 20),
                      child: const Themecard(
                        cardColor: Colors.black,
                        cardHeight: 90,
                        cardWidth: 170,
                        cardRadius: 20,
                        cardChild: ThemeCardSummary(
                          icon: Icon(
                            Icons.alarm,
                            color: Colors.red,
                          ),
                          title: '120/80',
                          subTitle: 'Blood Presure mmHg',
                        ),
                      )),
                  Container(
                    padding: const EdgeInsets.only(top: 15, right: 20),
                    child: const Themecard(
                      cardColor: Colors.white,
                      cardHeight: 90,
                      cardWidth: 170,
                      cardRadius: 20,
                      cardChild: ThemeCardSummary(
                        icon: Icon(
                          Icons.thermostat,
                          color: Colors.black,
                        ),
                        title: '36.7',
                        subTitle: 'Body Temp C',
                        titleColor: Colors.black,
                        subColor: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ThemeButton(
                    buttonAction: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SummaryScreen())),
                    btnColor: Colors.pinkAccent,
                    btnHeight: 50,
                    btnWidth: MediaQuery.of(context).size.width * 0.9,
                    btnRadius: 15,
                    btnChild: const Text(
                      'Get Exercises',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
