import 'package:courier_service/fake_data/customers.dart';
import 'package:courier_service/res/strings.dart';
import 'package:courier_service/shared/default_page.dart';
import 'package:courier_service/shared/default_page_header.dart';
import 'package:courier_service/shared/tables/customers_table.dart';
import 'package:fluent_ui/fluent_ui.dart';

class CustomersTableView extends StatelessWidget {
  const CustomersTableView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: DefaultPageHeader(
        headerText: customersTablePageHeader,
        actions: [
          FilledButton(
            child: const Text(customersBtnAdd),
            onPressed: () {},
          )
        ],
      ),
      content: DefaultPage(
        child: CustomersTable(items: customers),
      ),
    );
  }
}
