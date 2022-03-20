import 'package:courier_service/fake_data/users.dart';
import 'package:courier_service/res/defaults.dart';
import 'package:courier_service/res/strings.dart';
import 'package:courier_service/shared/default_page.dart';
import 'package:courier_service/shared/default_page_header.dart';
import 'package:courier_service/shared/tables/users_table.dart';
import 'package:fluent_ui/fluent_ui.dart';

class UsersTableView extends StatelessWidget {
  const UsersTableView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: DefaultPageHeader(
        headerText: usersTablePageHeader,
        actions: [
          FilledButton(
            child: const Text(usersBtnAdd),
            onPressed: () {},
          )
        ],
      ),
      content: DefaultPage(
        child: UsersTable(
          items: users,
        ),
      ),
    );
  }
}
