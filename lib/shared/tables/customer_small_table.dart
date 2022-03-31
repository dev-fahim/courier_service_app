import 'package:courier_service/models/api_models/customers_list_in_api_model.dart';
import 'package:flutter/material.dart';

class CustomerSmallTable extends StatelessWidget {
  final List<CustomersListData> customerList;
  final void Function(int index) onTap;
  final int selectedRowSub;

  const CustomerSmallTable({
    Key? key,
    required this.customerList,
    required this.onTap,
    required this.selectedRowSub,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Material(
      child: DataTable(
        dataRowHeight: 25,
        headingRowHeight: 25,
        columns: const [
          DataColumn(label: Text("NAME")),
          DataColumn(label: Text("CONTACT")),
          DataColumn(label: Text("DISTRICT")),
          DataColumn(label: Text("ADDRESS")),
        ],
        rows: () {
          List<DataRow> rows = [];
          int i = 0;
          for (CustomersListData data in customerList) {
            rows.add(
              DataRow(
                onSelectChanged: (selected) {
                  if (selected == true) {
                    onTap(i - 1);
                  }
                },
                selected: selectedRowSub == data.sub,
                cells: [
                  DataCell(Text(data.name.toString())),
                  DataCell(Text(data.primaryContactNumber.toString())),
                  DataCell(Text(data.addressDistrict.toString())),
                  DataCell(Text(data.addressLineOne.toString() +
                      ", " +
                      data.addressLineTwo.toString())),
                ],
              ),
            );
            i++;
          }
          return rows;
        }(),
      ),
    );
  }
}
