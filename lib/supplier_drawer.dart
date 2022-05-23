import 'package:flutter/material.dart';
import 'package:omobile/supplier_all_orders.dart';
import 'package:omobile/supplier_new_orders.dart';

class SupplierDrawer extends StatelessWidget {
  const SupplierDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Иван Иванов',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.settings),
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.white),
                      ),
                      child: const Text(
                        'ҚАЗ',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFFF9601))),
                      child: const Text('РУС',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            title: const Text('Новые заказы'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SupplierNewOrders()),
              );
            },
          ),
          ListTile(
            title: const Text('Заказы'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SupplierAllOrders()),
              );
            },
          ),
          ListTile(
            title: const Text('Торговые предложения'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Кошелек'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Профиль пользователя'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}