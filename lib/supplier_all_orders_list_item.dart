import 'package:flutter/material.dart';
import 'package:omobile/supplier_all_orders_item_model.dart';
import 'package:omobile/text_styles.dart';


class SupplierAllOrderListItem extends StatelessWidget {
  const SupplierAllOrderListItem({Key? key, required this.supplierAllOrderListItemModel})
      : super(key: key);

  final SupplierAllOrderListItemModel supplierAllOrderListItemModel;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BodySmallGrey(
                    value: supplierAllOrderListItemModel.id,
                  ),
                  BodySmallGrey(
                    value: supplierAllOrderListItemModel.time,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          supplierAllOrderListItemModel.name,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          supplierAllOrderListItemModel.status,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.orange,
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        Text(
                          supplierAllOrderListItemModel.priceWithNds,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),
                  ),
                  const Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
