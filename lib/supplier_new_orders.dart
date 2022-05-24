import 'package:flutter/material.dart';
import 'package:omobile/supplier_drawer.dart';
import 'package:omobile/supplier_new_order_list_model.dart';
import 'package:omobile/supplier_new_orders_list_item.dart';

class SupplierNewOrders extends StatefulWidget {
  const SupplierNewOrders({Key? key}) : super(key: key);

  @override
  State<SupplierNewOrders> createState() => _SupplierNewOrdersState();
}

class _SupplierNewOrdersState extends State<SupplierNewOrders> {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: ListView.separated(
          itemCount: 20,
          itemBuilder: (context,index) {
            return SupplierOrderListItem(
              supplierNewOrderListItemModel: SupplierNewOrderListItemModel(
                  "№ 123456",
                  "Бумага для офисной техники Svetocopy A4, 500 л.",
                  "На подтверждении у поставщика",
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




