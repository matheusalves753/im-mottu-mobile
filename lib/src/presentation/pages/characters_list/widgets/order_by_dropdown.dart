import 'package:flutter/material.dart';
import 'package:im_mottu_mobile/src/domain/entities/order_by.dart';

class OrderByDropdown extends StatelessWidget {
  final OrderBy? currentOrderBy;
  final Function(OrderBy) onOrderByChanged;

  const OrderByDropdown({
    required this.currentOrderBy,
    required this.onOrderByChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButton<OrderBy>(
        value: currentOrderBy,
        hint: const Text('Order by'),
        onChanged: (OrderBy? newValue) {
          if (newValue != null) {
            onOrderByChanged(newValue);
          }
        },
        items: OrderBy.values.map((OrderBy orderBy) {
          return DropdownMenuItem<OrderBy>(
            value: orderBy,
            child: Text(orderBy.name),
          );
        }).toList(),
      ),
    );
  }
}
