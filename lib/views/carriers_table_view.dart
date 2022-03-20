import 'package:courier_service/fake_data/carriers.dart';
import 'package:courier_service/res/strings.dart';
import 'package:courier_service/shared/default_page.dart';
import 'package:courier_service/shared/default_page_header.dart';
import 'package:courier_service/shared/tables/carriers_table.dart';
import 'package:fluent_ui/fluent_ui.dart';

class CarriersTableView extends StatelessWidget {
  const CarriersTableView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: DefaultPageHeader(
        headerText: carriersTablePageHeader,
        actions: [
          FilledButton(
            child: const Text(carriersBtnAdd),
            onPressed: () {},
          )
        ],
      ),
      content: DefaultPage(
        child: CarriersTable(items: carriers),
      ),
    );
  }
}
