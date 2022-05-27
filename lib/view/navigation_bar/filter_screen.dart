import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    flex: 4,
                    child: SizedBox(
                      width: 335.sp,
                      height: 32.sp,
                      child: Text(
                        'Filter',
                        style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 24.sp,
                          color: const Color(0xFF212621),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    //TODO: onTap Cancel
                                     },
                  child: SizedBox(
                    width: 58.sp,
                    height: 17.sp,
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 16.sp,
                        color: Colors.grey[900],
                        letterSpacing: 0.256,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ))
              ],
            )),
            Expanded(
                flex: 5,
                child: ListView(
                  children: [
                    SizedBox(
                      width: 317.sp,
                      height: 18.sp,
                      child: Text(
                        'Sort by\n',
                        style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 10.0,
                          color: Colors.grey[900]?.withOpacity(0.25),
                          letterSpacing: 0.25,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                         Expanded(child: Container(
                            alignment: Alignment.topLeft,
                            child: const Radio(value: null, groupValue: null, onChanged: null))),
                        Expanded(
                            flex: 8,
                            child: SizedBox(
                          width: 317.sp,
                          height: 18.sp,
                          child: Text(
                            'Featured Titles\n',
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 15.sp,
                              color: Colors.grey[900],
                              letterSpacing: 0.375,

                            ),
                          ),
                        ))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(
                            alignment: Alignment.topLeft,
                            child: const Radio(value: null, groupValue: null, onChanged: null))),
                        Expanded(
                            flex: 8,
                            child: SizedBox(
                              width: 317.sp,
                              height: 18.sp,
                              child: Text(
                                'Price: Low to High\n',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 15.sp,
                                  color: Colors.grey[900],
                                  letterSpacing: 0.375,

                                ),
                              ),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(
                            alignment: Alignment.topLeft,
                            child: const Radio(value: null, groupValue: null, onChanged: null))),
                        Expanded(
                            flex: 8,
                            child: SizedBox(
                              width: 317.sp,
                              height: 18.sp,
                              child: Text(
                                'Price: High to Low\n',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 15.sp,
                                  color: Colors.grey[900],
                                  letterSpacing: 0.375,

                                ),
                              ),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(
                            alignment: Alignment.topLeft,
                            child: const Radio(value: null, groupValue: null, onChanged: null))),
                        Expanded(
                            flex: 8,
                            child: SizedBox(
                              width: 317.sp,
                              height: 18.sp,
                              child: Text(
                                'Publication Date\n',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 15.sp,
                                  color: Colors.grey[900],
                                  letterSpacing: 0.375,

                                ),
                              ),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(
                            alignment: Alignment.topLeft,
                            child: const Radio(value: null, groupValue: null, onChanged: null))),
                        Expanded(
                            flex: 8,
                            child: SizedBox(
                              width: 317.sp,
                              height: 18.sp,
                              child: Text(
                                'A - Z\n',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 15.sp,
                                  color: Colors.grey[900],
                                  letterSpacing: 0.375,

                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 317.sp,
                      height: 18.sp,
                      child: Text(
                        'Genre\n',
                        style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 10.0,
                          color: Colors.grey[900]?.withOpacity(0.25),
                          letterSpacing: 0.25,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(
                            alignment: Alignment.topLeft,
                            child: const Radio(value: null, groupValue: null, onChanged: null))),
                        Expanded(
                            flex: 8,
                            child: SizedBox(
                              width: 317.sp,
                              height: 18.sp,
                              child: Text(
                                'Biography\n',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 15.sp,
                                  color: Colors.grey[900],
                                  letterSpacing: 0.375,

                                ),
                              ),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(
                            alignment: Alignment.topLeft,
                            child: const Radio(value: null, groupValue: null, onChanged: null))),
                        Expanded(
                            flex: 8,
                            child: SizedBox(
                              width: 317.sp,
                              height: 18.sp,
                              child: Text(
                                'Business & Economics\n',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 15.sp,
                                  color: Colors.grey[900],
                                  letterSpacing: 0.375,

                                ),
                              ),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(
                            alignment: Alignment.topLeft,
                            child: const Radio(value: null, groupValue: null, onChanged: null))),
                        Expanded(
                            flex: 8,
                            child: SizedBox(
                              width: 317.sp,
                              height: 18.sp,
                              child: Text(
                                'Children\n',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 15.sp,
                                  color: Colors.grey[900],
                                  letterSpacing: 0.375,

                                ),
                              ),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(
                            alignment: Alignment.topLeft,
                            child: const Radio(value: null, groupValue: null, onChanged: null))),
                        Expanded(
                            flex: 8,
                            child: SizedBox(
                              width: 317.sp,
                              height: 18.sp,
                              child: Text(
                                'Cookery\n',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 15.sp,
                                  color: Colors.grey[900],
                                  letterSpacing: 0.375,

                                ),
                              ),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(
                            alignment: Alignment.topLeft,
                            child: const Radio(value: null, groupValue: null, onChanged: null))),
                        Expanded(
                            flex: 8,
                            child: SizedBox(
                              width: 317.sp,
                              height: 18.sp,
                              child: Text(
                                'Fiction\n',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 15.sp,
                                  color: Colors.grey[900],
                                  letterSpacing: 0.375,

                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 317.sp,
                      height: 18.sp,
                      child: Text(
                        'Average Customer Review\n',
                        style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 10.0,
                          color: Colors.grey[900]?.withOpacity(0.25),
                          letterSpacing: 0.25,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(
                            alignment: Alignment.topLeft,
                            child: const Radio(value: null, groupValue: null, onChanged: null))),
                        Expanded(
                            flex: 8,
                            child: SizedBox(
                              width: 317.sp,
                              height: 18.sp,
                              child: Container(
                                alignment: Alignment.centerLeft,

                                  child: Image.asset('assets/bookpng/group_23.png',height:10.sp,  )),

                              ),
                            ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(
                            alignment: Alignment.topLeft,
                            child: const Radio(value: null, groupValue: null, onChanged: null))),
                        Expanded(
                          flex: 8,
                          child: SizedBox(
                            width: 317.sp,
                            height: 18.sp,
                            child: Container(
                                alignment: Alignment.centerLeft,

                                child: Image.asset('assets/bookpng/group_23.png',height:10.sp,  )),

                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(
                            alignment: Alignment.topLeft,
                            child: const Radio(value: null, groupValue: null, onChanged: null))),
                        Expanded(
                          flex: 8,
                          child: SizedBox(
                            width: 317.sp,
                            height: 18.sp,
                            child: Container(
                                alignment: Alignment.centerLeft,

                                child: Image.asset('assets/bookpng/group_23.png',height:10.sp,  )),

                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(
                            alignment: Alignment.topLeft,
                            child: const Radio(value: null, groupValue: null, onChanged: null))),
                        Expanded(
                          flex: 8,
                          child: SizedBox(
                            width: 317.sp,
                            height: 18.sp,
                            child: Container(
                                alignment: Alignment.centerLeft,

                                child: Image.asset('assets/bookpng/group_23.png',height:10.sp,  )),

                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Container(
                            alignment: Alignment.topLeft,
                            child: const Radio(value: null, groupValue: null, onChanged: null))),
                        Expanded(
                          flex: 8,
                          child: SizedBox(
                            width: 317.sp,
                            height: 18.sp,
                            child: Container(
                                alignment: Alignment.centerLeft,

                                child: Image.asset('assets/bookpng/group_23.png',height:10.sp,  )),

                          ),
                        ),
                      ],
                    ),




                  ],
                ))
          ],
        ),
      ),
    );
  }
}
