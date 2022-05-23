import 'package:flutter/material.dart';
import 'package:omobile/supplier_order_list_model.dart';
import 'package:omobile/text_styles.dart';


class SupplierOrderListItem extends StatelessWidget {
  const SupplierOrderListItem({Key? key, required this.supplierOrderListItemModel})
      : super(key: key);

  final SupplierOrderListItemModel supplierOrderListItemModel;

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
                    value: supplierOrderListItemModel.id,
                  ),
                  BodySmallGrey(
                    value: supplierOrderListItemModel.time,
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
                          supplierOrderListItemModel.name,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          supplierOrderListItemModel.status,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.orange,
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        Text(
                          supplierOrderListItemModel.priceWithNds,
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
