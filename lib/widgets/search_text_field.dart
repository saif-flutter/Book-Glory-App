import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../view/navigation_bar/filter_screen.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335.sp,
      height: 56.sp,
      child: TextField(

        decoration: InputDecoration(
          hintText: 'Search Books, Authors, or ISBN',
          hintStyle: TextStyle(
            fontFamily: 'SF Pro Text',
            fontSize: 14.sp,
            color: Colors.grey[900]?.withOpacity(0.5),
            letterSpacing: 0.224,
          ),
          prefixIcon: const Icon(Icons.search),
          suffixIcon:  IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const FilterScreen();
            }));
          }, icon: const Icon(Icons.list)),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.transparent
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(
                color: Colors.transparent
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder:OutlineInputBorder(
            borderSide: const BorderSide(
                color: Colors.transparent
            ),
            borderRadius: BorderRadius.circular(20),
          ),


          filled: true,
          fillColor: Colors.grey[200],
          
        ),
      ),
    );
  }
}
