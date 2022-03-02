import 'package:flutter/material.dart';
import 'package:generator/Constants.dart';
import "dart:math";
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:modal_progress_hud/modal_progress_hud.dart';


import 'package:generator/result.dart';

//the lists
List<String> linklist = [];
List<String> tweethead = [];
List<String> videolist = [];
//
dynamic data;

String api = 'be9bfa3a30e42e1bb546ce0d573cc17fa90aa';
String shrinkfinal;
String shortfinal;
String cutt;

class enter extends StatefulWidget {
  @override
  _enterState createState() => _enterState();
}

class _enterState extends State<enter> {
  final TextEditingController tweet = new TextEditingController();
  final TextEditingController link = new TextEditingController();
  final TextEditingController video = new TextEditingController();

  bool complete = false;
  bool spinner = false;


  @override
  Widget build(BuildContext context) {
    String shrinkhereapi = '1d48e2c5af24dcf813c58304d854ce59dbf562f3';
    String shorthereapi = '4h7XIAiU?s';

    void getshrothere() async {

      http.Response response = await http.get(
          'http://ouo.io/api/${shorthereapi}=${link.text}');
      data = response.body;
      var decode = jsonDecode(data);
      shortfinal = decode["shortenedUrl"];
    }

    void getshrinkhere() async {
      http.Response response = await http.get(
          'https://shrinkhere.xyz/api?api=${shrinkhereapi}&url=${shortfinal}');
      data = response.body;
      var decode = jsonDecode(data);
      shrinkfinal = decode["shortenedUrl"];
      if (shrinkfinal != null && shrinkfinal != '') {
        linklist.add(shrinkfinal);
        link.clear();
        setState(() {
          spinner=false;
        });


      }
      else{
        setState(() {
          spinner=false;
        });
      }
    }

    void globalget() async {

      getshrothere();

      getshrinkhere();

      if (tweethead.length >= min &&
          linklist.length >= min &&
          videolist.length >= min) {
        buttonColor = Colors.green;
      }

      complete = false;

      if (linklist.length > min) {
        linkColor = Colors.green;
      }
      setState(() {
      });
    }

    void gettweethead() {
      if (tweethead.length >= min &&
          linklist.length >= min &&
          videolist.length >= min) {
        buttonColor = Colors.green;
      }

      complete = false;

      if (tweet.text != null && tweet.text != '') {
        tweethead.add(tweet.text);
        print(tweethead);
        tweet.clear();


      }

      if (tweethead.length >= min) {
        tweetColor = Colors.green;
      }
    }

    void getvideo (){


      if (video.text != null && video.text != '') {
        videolist.add(video.text);
        video.clear();


      }

      if (tweethead.length >= min &&
          linklist.length >= min &&
          videolist.length >= min) {
        buttonColor = Colors.green;
      }
      if (videolist.length >= min) {
        videoColor = Colors.green;
      }

    }
    return SafeArea(
      child: Scaffold(
        body: ModalProgressHUD(
          inAsyncCall: spinner,
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    Input(
                      check: tweetColor,
                      number: tweethead.length,
                      controller: tweet,
                      hint: 'Enter tweet description',
                      press: () {
                        setState(() {
                          gettweethead();
                        });
                      },
                    ),
                    SizedBox(height: 20,),

                    Input(
                      check: linkColor,
                      number: linklist.length,
                      controller: link,
                      hint: 'Enter your link',
                      press: () {
                        setState(() {
                          spinner=true;
                          globalget();

                        });
                      },
                    ),
                    SizedBox(height: 20,),
                    Input(
                      check: videoColor,
                      controller: video,
                      hint: 'Enter your video',
                      number: videolist.length,
                      press: () {
                        setState(() {
                          getvideo();
                        });
                      },
                    ),
                    SizedBox(height: 20,),

                    Visibility(
                        visible: complete,
                        child: Text(
                          'Please complete yout tweets',
                          style: TextStyle(color: Colors.red),
                        )),
                    Container(
                      decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(5)),
                      width: double.infinity,
                      child: FlatButton(
                          onPressed: () {
                            if (tweethead.length >= min && linklist.length >= min) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => result(
                                            tweethead: tweethead,
                                            listlink: linklist,
                                            videolist: videolist,
                                          )));
                            } else {
                              setState(() {
                                complete = true;
                              });
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Generate',
                              style: textstyle,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FlatButton(
                      color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            spinner=true;
                            globalget();

                            getvideo();
                            gettweethead();

                          });
                        },
                        child: Text('Add'))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
