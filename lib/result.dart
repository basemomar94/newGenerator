import 'package:flutter/material.dart';
import "dart:math";
import 'package:dart_random_choice/dart_random_choice.dart';
import 'package:flutter/services.dart';
import 'package:generator/Constants.dart';
import "dart:math";

import 'enter.dart';

Random random = new Random();

class result extends StatefulWidget {
  List tweethead;
  List listlink;
  List<String> videolist;
  result({this.tweethead, this.listlink, this.videolist});

  @override
  _resultState createState() => _resultState();
}

class _resultState extends State<result> {
  List tweethead;
  List listlink;
  List<String> videolist;
  String tweet1;

  get prefs => null;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<int> randomnumbersH = [];

    for (int i = 0; i < 100; i++) {
      int randomnumber = random.nextInt(9);
      randomnumbersH.add(randomnumber);
    }
    List<int> randomconst = [];

    for (int i = 0; i < 100; i++) {
      int randomnumber = random.nextInt(intro.length);
      randomconst.add(randomnumber);
    }
    String tweet1 =
        '${intro[randomconst[0]]} ${widget.tweethead[randomnumbersH[1]]} ${end[randomconst[31]]} ${emoij[randomconst[4]]}\n رابط الفيلم\n ${widget.listlink[0]}\n${hash[randomconst[3]]}\n${widget.videolist[0]}\n';
    String tweet2 =
        '${intro[randomconst[4]]} ${widget.tweethead[randomnumbersH[5]]} ${end[randomconst[32]]} ${emoij[randomconst[6]]}\n رابط الفيلم\n ${widget.listlink[1]}\n${hash[randomconst[8]]}\n${widget.videolist[1]}\n';
    String tweet3 =
        '${intro[randomconst[9]]} ${widget.tweethead[randomnumbersH[10]]} ${end[randomconst[33]]}  ${emoij[randomconst[11]]}\n رابط الفيلم\n ${widget.listlink[2]}\n${hash[randomconst[13]]}\n${widget.videolist[2]}\n';
    String tweet4 =
        '${intro[randomconst[14]]} ${widget.tweethead[randomnumbersH[15]]} ${end[randomconst[34]]} ${emoij[randomconst[16]]}\n رابط الفيلم\n ${widget.listlink[3]}\n${hash[randomconst[3]]}\n${widget.videolist[3]}\n';
    String tweet5 =
        '${intro[randomconst[18]]} ${widget.tweethead[randomnumbersH[19]]} ${end[randomconst[35]]} ${emoij[randomconst[20]]}\n رابط الفيلم\n ${widget.listlink[4]}\n${hash[randomconst[22]]}\n${widget.videolist[4]}\n';
    String tweet6 =
        '${intro[randomconst[23]]} ${widget.tweethead[randomnumbersH[24]]} ${end[randomconst[36]]}  ${emoij[randomconst[25]]}\n رابط الفيلم\n ${widget.listlink[5]}\n${hash[randomconst[27]]}\n${widget.videolist[5]}\n';
    String tweet7 =
        '${intro[randomconst[28]]} ${widget.tweethead[randomnumbersH[29]]} ${end[randomconst[37]]} ${emoij[randomconst[30]]}\n رابط الفيلم\n ${widget.listlink[6]}\n${hash[randomconst[32]]}\n${widget.videolist[6]}\n';
    String tweet8 =
        '${intro[randomconst[33]]} ${widget.tweethead[randomnumbersH[34]]} ${end[randomconst[38]]} ${emoij[randomconst[39]]}\n رابط الفيلم\n ${widget.listlink[7]}\n${hash[randomconst[41]]}\n${widget.videolist[7]}\n';
    String tweet9 =
        '${intro[randomconst[28]]} ${widget.tweethead[randomnumbersH[44]]} ${end[randomconst[42]]} ${emoij[randomconst[45]]}\n رابط الفيلم\n ${widget.listlink[8]}\n${hash[randomconst[48]]}\n${widget.videolist[8]}\n';
    String tweet10 =
        '${intro[randomconst[49]]} ${widget.tweethead[randomnumbersH[50]]} ${end[randomconst[51]]} ${emoij[randomconst[52]]}\n رابط الفيلم\n ${widget.listlink[9]}\n${hash[randomconst[55]]}\n${widget.videolist[9]}\n';

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          print(listlink);
                          Clipboard.setData(ClipboardData(
                              text:
                                  '${tweet1}\n${tweet2}\n${tweet3}\n${tweet4}\n${tweet5}\n${tweet6}\n${tweet7}\n${tweet8}\n${tweet9}\n${tweet10}'));
                        });
                      },
                      color: Colors.blue,
                      child: Text('Copy Tweets')),
                  Container(
                    width: 350,
                    child: Card(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Clipboard.setData(
                                  ClipboardData(text: '${tweet1}'));
                            });
                          },
                          child: Container(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              tweet1,
                              style: textstyle,
                              textAlign: TextAlign.right,
                            ),
                          ))),
                    ),
                  ),
                  Container(
                    width: 350,
                    child: Card(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Clipboard.setData(
                                  ClipboardData(text: '${tweet2}'));
                            });
                          },
                          child: Container(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              tweet2,
                              style: textstyle,
                              textAlign: TextAlign.right,
                            ),
                          ))),
                    ),
                  ),
                  Container(
                    width: 350,
                    child: Card(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Clipboard.setData(
                                  ClipboardData(text: '${tweet3}'));
                            });
                          },
                          child: Container(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              tweet3,
                              style: textstyle,
                              textAlign: TextAlign.right,
                            ),
                          ))),
                    ),
                  ),
                  Container(
                    width: 350,
                    child: Card(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Clipboard.setData(
                                  ClipboardData(text: '${tweet4}'));
                            });
                          },
                          child: Container(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              tweet4,
                              style: textstyle,
                              textAlign: TextAlign.right,
                            ),
                          ))),
                    ),
                  ),
                  Container(
                    width: 350,
                    child: Card(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Clipboard.setData(
                                  ClipboardData(text: '${tweet5}'));
                            });
                          },
                          child: Container(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              tweet5,
                              style: textstyle,
                              textAlign: TextAlign.right,
                            ),
                          ))),
                    ),
                  ),
                  Container(
                    width: 350,
                    child: Card(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Clipboard.setData(
                                  ClipboardData(text: '${tweet6}'));
                            });
                          },
                          child: Container(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              tweet6,
                              style: textstyle,
                              textAlign: TextAlign.right,
                            ),
                          ))),
                    ),
                  ),
                  Container(
                    width: 350,
                    child: Card(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Clipboard.setData(
                                  ClipboardData(text: '${tweet7}'));
                            });
                          },
                          child: Container(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              tweet7,
                              style: textstyle,
                              textAlign: TextAlign.right,
                            ),
                          ))),
                    ),
                  ),
                  Container(
                    width: 350,
                    child: Card(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Clipboard.setData(
                                  ClipboardData(text: '${tweet7}'));
                            });
                          },
                          child: Container(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              tweet7,
                              style: textstyle,
                              textAlign: TextAlign.right,
                            ),
                          ))),
                    ),
                  ),
                  Container(
                    width: 350,
                    child: Card(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Clipboard.setData(
                                  ClipboardData(text: '${tweet8}'));
                            });
                          },
                          child: Container(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              tweet8,
                              style: textstyle,
                              textAlign: TextAlign.right,
                            ),
                          ))),
                    ),
                  ),
                  Container(
                    width: 350,
                    child: Card(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Clipboard.setData(
                                  ClipboardData(text: '${tweet9}'));
                            });
                          },
                          child: Container(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              tweet9,
                              style: textstyle,
                              textAlign: TextAlign.right,
                            ),
                          ))),
                    ),
                  ),
                  Container(
                    width: 350,
                    child: Card(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Clipboard.setData(
                                  ClipboardData(text: '${tweet10}'));
                            });
                          },
                          child: Container(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              tweet10,
                              style: textstyle,
                              textAlign: TextAlign.right,
                            ),
                          ))),
                    ),
                  ),
                  FlatButton(
                      onPressed: (){print(randomnumbersH);},
                      child: Text('test')),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
