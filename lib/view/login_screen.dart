import 'package:book/controller/cubit/navigation_cubit/navigation_cubit.dart';
import 'package:book/view/navigation_bar/search_screen.dart';
import 'package:book/view/navigation_bar/shoping_cart_screen.dart';
import 'package:book/view/navigation_bar/whislist_screen.dart';
import 'package:book/widgets/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'navigation_bar/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  PageController controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children:  [
          const HomeScreen(),
          SearchScreen(),
          const WishListScreen(),
          const ShoppingCartScreen(),
        ],
      ),
      bottomNavigationBar: BlocBuilder<NavigationCubit, int>(
        builder: (context, state) {
          return Container(
            height: 60,
            color: MyColor.textColor,
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    controller.jumpToPage(0);
                    context.read<NavigationCubit>().getIndex(index: 0);
                  },
                  child: Column(
                    children:  [
                      Expanded(
                          child: Text(
                        'home',
                        style: TextStyle(

                            color: state == 0 ? Colors.white: Colors.white12),
                      )),
                      Expanded(
                          child: Text(
                        'Home',
                        style: TextStyle(  color: state == 0 ? Colors.white: Colors.white12),
                      )),
                    ],
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                  controller.jumpToPage(1);
                    context.read<NavigationCubit>().getIndex(index: 1);
                    
                  },
                  child: Column(
                    children:  [
                      Expanded(
                          child: Icon(
                        Icons.search,
                              color: state == 1 ? Colors.white: Colors.white12),),
                      Expanded(
                          child: Text(
                        'Search',
                        style: TextStyle(  color: state == 1 ? Colors.white: Colors.white12),
                      )),
                    ],
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    controller.jumpToPage(2);
                    context.read<NavigationCubit>().getIndex(index: 2);
                  },
                  child: Column(
                    children:  [
                      Expanded(
                          child: Icon(
                        Icons.list,
                              color: state == 2 ? Colors.white: Colors.white12),),
                      Expanded(
                          child: Text(
                        'Wishlist',
                        style: TextStyle(  color: state == 2 ? Colors.white: Colors.white12),
                      )),
                    ],
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    controller.jumpToPage(3);
                    context.read<NavigationCubit>().getIndex(index: 3);
                  },
                  child: Column(
                    children:  [
                      Expanded(
                          child: Text(
                        'shopping-cart',
                        style: TextStyle(  color: state == 3? Colors.white: Colors.white12),
                      )),
                      Expanded(
                          child: Text(
                        'Cart',
                        style: TextStyle(  color: state == 3 ? Colors.white: Colors.white12),
                      )),
                    ],
                  ),
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}
