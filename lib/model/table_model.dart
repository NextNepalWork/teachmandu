import 'package:flutter/material.dart';

class TableModel {
  final String? columnName;
  final Widget? child;
  TableModel({
    this.child,
    this.columnName,
  });
}

final columnList = <TableModel>[
  TableModel(child: const Text("")),
  TableModel(
      child: const Text(
    "Sun",
    style: TextStyle(fontWeight: FontWeight.bold),
  )),
  TableModel(
      child: const Text(
    "Mon",
    style: TextStyle(fontWeight: FontWeight.bold),
  )),
  TableModel(
      child: const Text(
    "Tue",
    style: TextStyle(fontWeight: FontWeight.bold),
  )),
  TableModel(
      child: const Text(
    "Wed",
    style: TextStyle(fontWeight: FontWeight.bold),
  )),
  TableModel(
      child: const Text(
    "Thu",
    style: TextStyle(fontWeight: FontWeight.bold),
  )),
  TableModel(
      child: const Text(
    "Fri",
    style: TextStyle(fontWeight: FontWeight.bold),
  )),
  TableModel(
      child: const Text(
    "Sat",
    style: TextStyle(fontWeight: FontWeight.bold),
  )),
];
final rowList = <TableModel>[
  TableModel(child: const Text("Pre10AM")),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.check,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.orange,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.clear,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.red,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.check,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.orange,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.clear,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.red,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.check,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.orange,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.clear,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.red,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.check,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.orange,
  )),
];
final rowList1 = <TableModel>[
  TableModel(
      child: const Text(
    "10AM-5PM",
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.check,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.orange,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.clear,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.red,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.check,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.orange,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.clear,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.red,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.check,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.orange,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.clear,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.red,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.check,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.orange,
  )),
];
final rowList2 = <TableModel>[
  TableModel(child: const Text("After-5AM")),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.check,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.orange,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.clear,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.red,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.check,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.orange,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.clear,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.red,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.check,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.orange,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.clear,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.red,
  )),
  TableModel(
      child: const CircleAvatar(
    radius: 8,
    child: Icon(
      Icons.check,
      color: Colors.white,
      size: 10,
    ),
    backgroundColor: Colors.orange,
  )),
];
