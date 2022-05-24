import 'package:flutter/material.dart';
import 'package:omobile/supplier_all_orders_item_model.dart';
import 'package:omobile/supplier_all_orders_list_item.dart';



class SupplierAllOrders extends StatefulWidget {
  const SupplierAllOrders({Key? key}) : super(key: key);

  @override
  State<SupplierAllOrders> createState() => _SupplierAllOrdersState();
}

class _SupplierAllOrdersState extends State<SupplierAllOrders> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: ListView.separated(
          itemCount: 20,
          itemBuilder: (context, index) {
            return SupplierAllOrderListItem(
              supplierAllOrderListItemModel: SupplierAllOrderListItemModel(
                  "№ 123456",
                  "Бумага для офисной техники Svetocopy A4, 500 л.",
                  "Подтвержден",
                  "112 000 тг с НДС",
                  '23.02.2022 16:57:13'),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 0.5,
            );
          },
        ),
      ),
    );
  }

}


