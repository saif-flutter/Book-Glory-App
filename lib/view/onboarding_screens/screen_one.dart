import 'package:book/widgets/my_color.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 100),
        child: Column(
          children: [
            const Expanded(
              child: Text(
                'Discount \n Secondhand Books',
                textAlign: TextAlign.center,
                style: TextStyle(color: MyColor.textColor, fontSize: 30),
              ),
            ),
            const Expanded(
              child: Text(
                'Used and near new secondhand books at great prices.',
                textAlign: TextAlign.center,
                style: TextStyle(color: MyColor.textColor, fontSize: 14),
              ),
            ),
            Expanded(flex: 2, child: Image.asset('assets/images/screen1.png')),
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
