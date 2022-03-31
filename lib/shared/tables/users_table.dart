import 'package:courier_service/models/internals/user_table_model.dart';
import 'package:courier_service/res/strings.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class UsersTable extends StatelessWidget {
  final List<UserTableModel> items;
  const UsersTable({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowColor:
          MaterialStateProperty.all(FluentTheme.of(context).cardColor),
      columns: [
        DataColumn(
          label: _tableHeaderText(context, usersTableRowHeaderUserId),
        ),
        DataColumn(
          label: _tableHeaderText(context, usersTableRowHeaderUsername),
        ),
        DataColumn(
          label: _tableHeaderText(context, usersTableRowHeaderName),
        ),
        DataColumn(
          label: _tableHeaderText(context, usersTableRowHeaderCurrentTerminal),
        ),
        DataColumn(
          label: _tableHeaderText(context, usersTableRowHeaderContactNumber),
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
    for (UserTableModel item in items) {
      rows.add(
        DataRow(
          cells: [
            DataCell(
              _tableText(context, item.userId.toString()),
              showEditIcon: true,
              placeholder: true,
            ),
            DataCell(
              _tableText(context, item.username),
            ),
            DataCell(
              _tableText(context, item.name),
            ),
            DataCell(
              _tableText(context, item.currentTerminal),
            ),
            DataCell(
              _tableText(context, item.contactNumber),
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
