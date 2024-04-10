
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repair_shop/core/core.dart';
import 'package:repair_shop/main_screen/domain/bloc/shop_bloc.dart';

class ProductsTable extends StatelessWidget {
  const ProductsTable({super.key});

  List<DataColumn> get tableColumns => <DataColumn>[
    const DataColumn(label: Text(Strings.productText)),
    const DataColumn(label: Text(Strings.quantityText)),
    const DataColumn(label: Text(Strings.unitaryPriceText)),
    const DataColumn(label: Text(Strings.totalText)),
    const DataColumn(label: Text('')),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopBloc, ShopState>(
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: tableColumns,
            rows: state.addedProducts.map(
                  (product) {
                final textCellsContent = [
                  product.name,
                  product.quantity.toString(),
                  product.price.toString(),
                  (product.quantity * product.price).toString(),
                ];
                return DataRow(
                  cells: [
                    ...textCellsContent.map(
                          (text) => DataCell(Text(text)),
                    ),
                    DataCell(
                      IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: AppColors.primary,
                        ),
                        onPressed: () {
                          context.read<ShopBloc>().add(
                            ShopEvent.removeProduct(product: product),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ).toList(),
          ),
        );
      },
    );
  }
}
