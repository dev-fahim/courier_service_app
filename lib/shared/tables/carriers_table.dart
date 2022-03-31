import 'package:courier_service/models/internals/carrier_table_model.dart';
import 'package:courier_service/res/strings.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class CarriersTable extends StatelessWidget {
  final List<CarrierTableModel> items;
  const CarriersTable({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowColor:
          MaterialStateProperty.all(FluentTheme.of(context).cardColor),
      columns: [
        DataColumn(
          label: _tableHeaderText(context, carriersTableRowHeaderId),
        ),
        DataColumn(
          label: _tableHeaderText(context, carriersTableRowHeaderName),
        ),
        DataColumn(
          label: _tableHeaderText(context, carriersTableRowHeaderCode),
        ),
        DataColumn(
          label: _tableHeaderText(context, carriersTableRowHeaderRegNumber),
        ),
        DataColumn(
          label: _tableHeaderText(context, textBlank),
          numeric: true,
        ),
      ],
      rows: _buildTableFromData(context),
    );
  }

  Widget _tableHeaderText(BuildContext context, String header) {
    return Text(
      header,
      style: FluentTheme.of(context)
          .typography
          .bodyLarge
          ?.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Widget _tableText(BuildContext context, String header) {
    return Text(
      header,
    );
  }

  List<DataRow> _buildTableFromData(BuildContext context) {
    List<DataRow> rows = [];
    for (CarrierTableModel item in items) {
      rows.add(
        DataRow(
          cells: [
            DataCell(
              _tableText(context, item.id.toString()),
              showEditIcon: true,
              placeholder: true,
            ),
            DataCell(
              _tableText(context, item.name),
            ),
            DataCell(
              _tableText(context, item.code),
            ),
            DataCell(
              _tableText(context, item.regNumber),
            ),
            DataCell(
              FilledButton(
                child: const Icon(FluentIcons.arrow_up_right),
                onPressed: () {},
              ),
            ),
          ],
        ),
      );
    }
    return rows;
  }
}
