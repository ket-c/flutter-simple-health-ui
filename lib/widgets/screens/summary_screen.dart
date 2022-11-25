import 'package:flutter/material.dart';
import 'package:health_assistant_app/widgets/components/theme_card.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SummaryScreenContent(),
    );
  }
}

class SummaryScreenContent extends StatefulWidget {
  const SummaryScreenContent({Key? key}) : super(key: key);

  @override
  _SummaryScreenContentState createState() => _SummaryScreenContentState();
}

class _SummaryScreenContentState extends State<SummaryScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height *1,
          width: MediaQuery.of(context).size.width *1,
          decoration: const BoxDecoration(
            color: Color(0xffeeeeee)
          ),
          child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.height *1,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'HRV',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.info,
                        size: 15,
                        color: Colors.black45,
                      ),
                      Text(
                        'Hold you fingers on camera',
                        style: TextStyle(color: Colors.black45),
                      ),
                      Icon(
                        Icons.fingerprint,
                        size: 50,
                        color: Colors.black45,
                      )
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children:[ 
                      const Padding(
                     padding:  EdgeInsets.only(top:40),
                     child:  SizedBox(
                       width: 300,
                       height: 300,
                       child:  RotationTransition(
                         turns:  AlwaysStoppedAnimation(235 / 360),
                         child: CircularProgressIndicator(
                          value: 0.7,
                          strokeWidth: 35,
                          valueColor: AlwaysStoppedAnimation(Colors.pinkAccent),
                          backgroundColor: Colors.white,
        
                          
                                       ),
                       ),
                     ),
                   ),
                      Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
        
                          Icon(
                            Icons.favorite,
                            color: Colors.pinkAccent,
                            size: 50,
                          ),
                          Text(
                            '68',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 120),
                          ),
                          Themecard(
                            cardHeight: 18,
                            cardWidth: 35,
                            cardColor: Colors.pinkAccent,
                            cardRadius: 8,
                            cardChild: Center(
                              child: Text(
                                'BPM',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                   
                    ]
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 50),
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'min ',
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          '68',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ), Expanded(child: SizedBox.shrink(),),
                        Text(
                          'avg ',
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          '25',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ), Expanded(child: SizedBox.shrink(),),
                        Text(
                          'ovg ',
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          '99',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height:60 ,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Color(0xffeeeeee),
                      borderRadius:  BorderRadius.only(bottomLeft:Radius.circular(30) , bottomRight: Radius.circular(30))
                      ),
                      child: Text('ww'),),
                  )
                 
                ],
              ),
            ),
        ));
  }
}
