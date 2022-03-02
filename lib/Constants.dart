import 'package:flutter/material.dart';
import "dart:math";
import 'package:generator/result.dart';
import 'package:generator/enter.dart';
import 'package:generator/enter.dart';

int min = 10;

const textstyle = TextStyle(fontSize: 15);
Color tweetColor = Colors.grey;
Color linkColor = Colors.grey;
Color buttonColor = Colors.grey;
Color videoColor = Colors.grey;
List<String> intro = [
  'فيلم حصري',
  'ناااار لا يفوتكم',
  'فيلم دمااار شااامل',
  'اهداء خاااص',
  'فيلم روووعة',
  'لمحبي النيك الجميل',
  'حصري عندنا فقططط',
  'فيلم لا يفوت',
  'لمحبي افلام السكس الفاااجرة',
  'فيلم ناااري',
  '',
  '',
  '',
  'فيلم خرااافي',
  'محااارم يجنن',
  'سكس مترجم',
  'جديد برازر',
  'حصررررري',
  'فيلم خاااص جدااا',
  '',
];

List<String> hash = [
  '',
  '',
  '#fuck',
  '#نييك',

  '#سكس',
  '#نييك',
  '#جنس',
  '#Sex',
  '#سحاق',
  '#شيميل',
  '#سادي',
  '#سكس',
  '#سكس',
  '#سكس',
  '',
  '',
  '',
  '#جماعي',
  '#شيميل',
  '#جماعي',


];

List<String> emoij = [
  '♨♨',
  '🔥',
  '🔥🔥',
  '',
  '',
  '🔥🔥',
  '🔞♨',
  '🔞🔥',
  '',
  '',
  '🔞🔞',
  '💖😍',
  '😍😍',
  '💖',
  '💓',
  '😍',
  '😈',
  '👙',
  '🩱',
  '😉',
];

List<String> end = [
  'نيييك عنييييف',
  'دمر كسها فاااجر',
  'لمحبي السادية والعنف',
  'نيك رومانسي ع الهاادي',
  'فشخ كس دمااار',
  'فااااجر',
  'نيك ساادي',
  'كسها روووعة',
  'كس وردي يجنننن',
  'عنييييييف',
  'فيلم من الاخر',
  'للرجال فقططط',
  'ممنوع لاصحاب سرعة القذف',
  'فشخها خلفي وامامي',
  'اهاتها مووولعة',
  'فيلم ناااار',
  'نيك من اللي زبك يحبه',
  'نيك من الاخرررر',
  'مكوتها ملكية',
  'طيزها تهبللل',
];

bool copy1 = true;
bool copy2 = true;
bool copy3 = true;
bool copy4 = true;
bool copy5 = true;
bool copy6 = true;
bool copy7 = true;
bool copy8 = true;
bool copy9 = true;
bool copy10 = true;

//input
class Input extends StatelessWidget {
  final TextEditingController controller;
  Function press;
  String hint;
  int number = 0;
  Color check;
  Function submit;

  Input(
      {this.press,
      this.controller,
      this.hint,
      this.number,
      this.check,
      this.submit});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(children: [Container(
          width: 270,
          child: TextField(
            onSubmitted: (_) {
              submit;
            },
            controller: controller,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: press,
                  icon: Icon(Icons.add),
                ),
                hintText: hint,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
            style: textstyle,
          ),
        ),
          SizedBox(width: 20,),
          Container(
            height: 50,
              width: 50,
              color: check,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text('${number.toString()}')),
              )),],),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

//Tweet
class Tweet extends StatelessWidget {
  Function tap;
  String text;
  Tweet({this.tap, this.text, this.visibilty});
  bool visibilty = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Visibility(
            visible: visibilty,
            child: GestureDetector(
              onTap: tap,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.right,
                    ),
                  )),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
