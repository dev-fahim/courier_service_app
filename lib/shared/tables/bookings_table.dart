import 'package:courier_service/models/internals/booking_table_model.dart';
import 'package:courier_service/res/strings.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class BookingsTable extends StatelessWidget {
  final List<BookingTableModel> items;
  const BookingsTable({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowColor:
          MaterialStateProperty.all(FluentTheme.of(context).cardColor),
      columns: [
        DataColumn(
          label: _tableHeaderText(context, bookingsTableRowHeaderId),
        ),
        DataColumn(
          label: _tableHeaderText(context, bookingsTableRowHeaderCode),
        ),
        DataColumn(
          label: _tableHeaderText(context, bookingsTableRowHeaderDestination),
        ),
        DataColumn(
          label: _tableHeaderText(context, bookingsTableRowHeaderCustomerName),
        ),
        DataColumn(
          label: _tableHeaderText(
              context, bookingsTableRowHeaderCustomerContactNumber),
        ),
        DataColumn(
          label: _tableHeaderText(context, bookingsTableRowHeaderRecipientName),
        ),
        DataColumn(
          label: _tableHeaderText(
              context, bookingsTableRowHeaderRecipientContactNumber),
        ),
        DataColumn(
          label: _tableHeaderText(
              context, bookingsTableRowHeaderParcelDescription),
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
    for (BookingTableModel item in items) {
      rows.add(
        DataRow(
          cells: [
            DataCell(
              _tableText(context, item.id.toString()),
              showEditIcon: true,
              placeholder: true,
            ),
            DataCell(
              _tableText(context, item.code),
            ),
            DataCell(
              _tableText(context, item.destination),
            ),
            DataCell(
              _tableText(context, item.customerName),
            ),
            DataCell(
              _tableText(context, item.customerContactNumber),
            ),
            DataCell(
              _tableText(context, item.recipientName),
            ),
            DataCell(
              _tableText(context, item.recipientContactNumber),
            ),
            DataCell(
              _tableText(context, item.parcelDescription),
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
