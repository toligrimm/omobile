import 'package:flutter/material.dart';
import 'package:omobile/supplier_all_orders.dart';
import 'package:omobile/supplier_drawer.dart';
import 'package:omobile/supplier_new_orders.dart';


class SupplierOrderBottomNav extends StatefulWidget {
  const SupplierOrderBottomNav({Key? key}) : super(key: key);

  @override
  _SupplierOrderBottomNavState createState() => _SupplierOrderBottomNavState();
}

class _SupplierOrderBottomNavState extends State<SupplierOrderBottomNav> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      const BottomNavigationBarItem(
          icon: Icon(Icons.share_arrival_time_outlined),
          label: 'Новые заказы'
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.event_note_rounded),
        label: 'Все заказы',
      ),

          ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: const <Widget>[
        SupplierNewOrders(),
        SupplierAllOrders(),

      ],
    );
  }

  @override
  void initState() {
    super.initState();
      }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(
          index, duration: const Duration(milliseconds: 300),
          curve: Curves.ease);
      pageController.initialPage;
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Заказы'),
    ),
      drawer: const SupplierDrawer(),
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFFF9601),
        currentIndex: bottomSelectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
      ),
    );
  }
}

