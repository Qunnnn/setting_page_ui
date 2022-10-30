import 'package:flutter/material.dart';
import 'build.dart';
import 'rating_view.dart';
import 'feedback_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  double rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: 5.0),
              Container(
                child: Text('Setting',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w800,
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              buildOption(
                icon: 'images/upgrade.png',
                label: 'Upgrade Premium plan',
                Width: 90.0,
                onFress: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Cancel Premium Plan',
                          textAlign: TextAlign.center),
                      content: Text(
                        'Your Premium data will not be accessed once you confirm. Are you sure to cancel?',
                        textAlign: TextAlign.center,
                      ),
                      actions: [
                        Row(
                          children: [
                            Spacer(),
                            Container(
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      side:
                                          MaterialStateProperty.all(BorderSide(
                                        color: Colors.deepPurple,
                                      ))),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Discard',
                                    style: TextStyle(
                                      color: Colors.deepPurple,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Container(
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.deepPurple),
                                  ),
                                  onPressed: null,
                                  child: Text(
                                    'Confirm',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )),
                            ),
                            Spacer(),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 18.0),
              buildOption(
                icon: 'images/feedback.png',
                label: 'Feedback',
                Width: 210.0,
                onFress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FeedbackPage()));
                },
              ),
              SizedBox(height: 18.0),
              buildOption(
                icon: 'images/review.png',
                label: 'Review Us',
                Width: 205.0,
                onFress: () {
                  ratingDialog(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ratingDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (Context) => Dialog(
            child: RatingView(),
          ));
}
