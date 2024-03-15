import 'dart:convert';

import 'package:annotations_library/annotations_library.dart';

part 'order.g.dart';

@jsonGen
class Order {
  String name;
  String id;
  List<String> names;
  double amount;
  Order({
    required this.name,
    required this.id,
    required this.names,
    required this.amount,
  });
}
