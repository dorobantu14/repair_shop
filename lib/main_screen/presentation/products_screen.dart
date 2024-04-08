import 'package:flutter/material.dart';
import 'package:repair_shop/core/core.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final tableColumns = <DataColumn>[
    DataColumn(label: Text(Strings.productText)),
    DataColumn(label: Text(Strings.quantityText)),
    DataColumn(label: Text(Strings.unitaryPriceText)),
    DataColumn(label: Text(Strings.totalText)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Strings.task1Text),
        // table
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: tableColumns,
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('Product 1')),
                  DataCell(Text('1')),
                  DataCell(Text('100')),
                  DataCell(Text('100')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Product 2')),
                  DataCell(Text('2')),
                  DataCell(Text('50')),
                  DataCell(Text('100')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Product 3')),
                  DataCell(Text('1')),
                  DataCell(Text('200')),
                  DataCell(Text('200')),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
