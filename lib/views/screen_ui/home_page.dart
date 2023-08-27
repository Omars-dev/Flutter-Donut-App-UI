import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/utils/my_tab.dart';
import 'food.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<Widget> myTabs = const [
    MyTab(
      iconPath: 'assets/icons/donut.png',
    ),
    MyTab(
      iconPath: 'assets/icons/burger.png',
    ),
    MyTab(
      iconPath: 'assets/icons/pancakes.png',
    ),
    MyTab(
      iconPath: 'assets/icons/pizza.png',
    ),
    MyTab(
      iconPath: 'assets/icons/smoothie.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
              child: Row(
                children: const [
                  Text(
                    'I want to ',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            //TODO: Tab Bar
            TabBar(tabs: myTabs),

            //TODO: Tab Bar View
            Expanded(
                child: TabBarView(
              children: [
                BurgerTab(),

                DonutTab(),

                PanckesTab(),

                PizzaTab(),
                
                SmoothieTab()
              ],
            ))
          ],
        ),
      ),
    );
  }
}
