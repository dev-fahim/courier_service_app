import 'package:courier_service/fake_data/terminals.dart';
import 'package:courier_service/res/strings.dart';
import 'package:courier_service/shared/default_page.dart';
import 'package:courier_service/shared/default_page_header.dart';
import 'package:courier_service/shared/tables/terminals_table.dart';
import 'package:fluent_ui/fluent_ui.dart';

class TerminalsTableView extends StatelessWidget {
  const TerminalsTableView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: DefaultPageHeader(
        headerText: terminalsTablePageHeader,
        actions: [
          FilledButton(
            child: const Text(terminalsBtnAdd),
            onPressed: () {},
          )
        ],
      ),
      content: DefaultPage(
        child: TerminalsTable(items: terminals),
      ),
    );
  }
}
