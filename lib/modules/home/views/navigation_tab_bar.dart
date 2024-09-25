import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/constant/app_images.dart';
import 'package:e_learning_app/modules/home/views/books_page.dart';
import 'package:e_learning_app/modules/home/views/home_page.dart';
import 'package:e_learning_app/modules/home/views/search_page.dart';
import 'package:e_learning_app/modules/home/views/menu_page.dart';
import 'package:e_learning_app/modules/home/views/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';

class NavigationTabBar extends StatefulWidget {
  const NavigationTabBar({super.key});

  @override
  State<NavigationTabBar> createState() => _NavigationTabBarState();
}

class _NavigationTabBarState extends State<NavigationTabBar> {
  int currentTab = 0;
  final List<Widget> screen = [
    const HomePage(),
    const BooksPage(),
    const SearchPage(),
    const MenuPage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color(0xffE4F1F8),
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        
        elevation: 0,
        backgroundColor:Colors.blue ,
        onPressed: () {},
        child: const Icon(Icons.add,color: AppColorLight.primaryColor,size: 23,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * .1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //1
                  CustomMaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const HomePage();
                        currentTab = 0;
                      });
                    },
                    icon: Icons.home,
                    currentTabindex: currentTab == 0, 
                    text: 'Home',
                    image: Assets.imagesHomeIcon,
                  ),

                  //2
                  CustomMaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const BooksPage();
                        currentTab = 1;
                      });
                    },
                    icon: Icons.menu_book,
                    currentTabindex: currentTab == 1, 
                    text: 'Books',
                    image: Assets.imagesBooksIcon,
                  ),
                ],
              ),

              //Right Tab Bar Icons 
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //3
                  CustomMaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const SearchPage();
                        currentTab = 3;
                      });
                    },
                    icon: Icons.search,
                    currentTabindex: currentTab == 3, 
                    text: 'Search',
                    image: Assets.imagesSearchIcon,
                  ),

                  //2
                  CustomMaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const MenuPage();
                        currentTab = 4;
                      });
                    },
                    icon: Icons.menu,
                    currentTabindex: currentTab == 4, 
                    text: 'Menu',
                    image: Assets.imagesMenuIcon,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
