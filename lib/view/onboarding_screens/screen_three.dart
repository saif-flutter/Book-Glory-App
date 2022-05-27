import 'package:book/widgets/my_color.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 100),
        child: Column(
          children: [
            const Expanded(
              child: Text(
                'Sell or Recycle Your Old \n Books With Us',
                textAlign: TextAlign.center,
                style: TextStyle(color: MyColor.textColor, fontSize: 30),
              ),
            ),
            const Expanded(
              child: Text(
                "If you're looking to downsize, sell or recycle old books,\n the Book Grocer can help.",
                textAlign: TextAlign.center,
                style: TextStyle(color: MyColor.textColor, fontSize: 14),
              ),
            ),
            Expanded(flex: 2, child: Image.asset('assets/images/screen3.png')),
            Expanded(
                child: Container(
                  // color: Colors.green,
                )),
          ],
        ),
      ),
    );
  }
}
