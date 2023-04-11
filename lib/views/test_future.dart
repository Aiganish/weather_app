import 'package:flutter/material.dart';

class TestFuture extends StatefulWidget {
  const TestFuture({Key? key}) : super(key: key);

  @override
  _TestFutureState createState() => _TestFutureState();
}

class _TestFutureState extends State<TestFuture> {
  String text = 'Textti alip kell';
  String? textAsync;
  @override
  void initState() {
    getText();
    super.initState();
  }

  Future<void> getText() async {
    await Future.delayed(Duration(seconds: 3), () {
      return textAsync = 'Texr Async kele jatat';
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAsync ?? 'Emi kelet',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            Text(
              'Salam',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
