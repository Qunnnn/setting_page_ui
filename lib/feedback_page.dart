import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  late dynamic kcolorButton;
  bool check1 = false;
  bool check2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.0),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 7.0),
                  Icon(Icons.arrow_back_ios_new),
                  Spacer(),
                  Container(
                    child: Text('Feedback',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w800,
                        )),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 15.0, 2.0, 0.0),
            child: Text(
              'Do you have a suggestion or found a bug? We would like to hear your feedback to improve our application.',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 15.0, 2.0, 0.0),
            child: Text(
              'Feedback.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            margin: EdgeInsets.all(18.0),
            padding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 100.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 0.1,
                  )
                ]),
            child: TextField(
                onChanged: (text) {
                  setState(() {
                    check1 = true;
                  });
                },
                textAlign: TextAlign.start,
                textInputAction: TextInputAction.newline,
                keyboardType: TextInputType.multiline,
                maxLines: 2,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your feedback here!')),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 15.0, 2.0, 0.0),
            child: Text(
              'Email.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            margin: EdgeInsets.all(18.0),
            padding: EdgeInsets.only(left: 10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 0.1,
                  )
                ]),
            child: TextField(
                onChanged: (text) {
                  setState(() {
                    check2 = true;
                  });
                },
                textAlign: TextAlign.start,
                textInputAction: TextInputAction.newline,
                keyboardType: TextInputType.multiline,
                maxLines: 1,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter Email')),
          ),
          SizedBox(height: 180.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: (check1 && check2) == false
                        ? Colors.grey
                        : Colors.purple,
                    fixedSize: const Size(350, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
                child: Text(
                  'Submit Feedback',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  null;
                },
              ),
            ],
          ),
        ],
      )),
    );
  }
}
