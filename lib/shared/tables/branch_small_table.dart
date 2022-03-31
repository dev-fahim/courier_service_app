import 'package:flutter/material.dart';

import '../../models/api_models/branch_api_model.dart';

class BranchSmallTable extends StatelessWidget {
  final List<BranchListData> branchList;
  final void Function(int index) onTap;
  final int selectedRowSub;

  const BranchSmallTable({
    Key? key,
    required this.branchList,
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
          DataColumn(label: Text("DISTRICT")),
          DataColumn(label: Text("SUB DISTRICT")),
          DataColumn(label: Text("ADDRESS")),
        ],
        rows: () {
          List<DataRow> rows = [];
          for (BranchListData data in branchList) {
            rows.add(
              DataRow(
                onSelectChanged: (selected) {
                  if (selected == true) {
                    onTap(data.sub ?? -1);
                  }
                },
                selected: selectedRowSub == data.sub,
                cells: [
                  DataCell(Text(data.name.toString())),
                  DataCell(Text(data.addressDistrict.toString())),
                  DataCell(Text(data.addressSubDistrict.toString())),
                  DataCell(Text(data.addressLineOne.toString() +
                      ", " +
                      data.addressLineTwo.toString())),
                ],
              ),
            );
          }
          return rows;
        }(),
      ),
    );
  }
}
