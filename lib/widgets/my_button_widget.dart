import 'package:book/widgets/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatefulWidget {
  final String text;
  final VoidCallback callback;

  const MyButton({Key? key,required this.text,required this.callback,}) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.callback,
      child: Container(
        height: 56.h,
        width: 335.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            color: MyColor.textColor,
            boxShadow: [
              BoxShadow(
                color: MyColor.textColor.withOpacity(0.55),
                offset: const Offset(0, 15.0),
                blurRadius: 30.r,
              ),
            ]),
        child: Center(
            child: Text(widget.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.sp,
              ),
            )),
      ),
    );

  }
}
