import 'package:courier_service/views/bookings_table_view.dart';
import 'package:courier_service/views/carriers_table_view.dart';
import 'package:courier_service/views/authentication_view.dart';
import 'package:courier_service/views/customers_table_view.dart';
import 'package:courier_service/views/terminals_table_view.dart';
import 'package:courier_service/views/users_table_view.dart';
import 'package:fluent_ui/fluent_ui.dart';

import 'package:courier_service/res/strings.dart';

class RootNavigationView extends StatefulWidget {
  const RootNavigationView({Key? key}) : super(key: key);

  @override
  State<RootNavigationView> createState() => _RootNavigationViewState();
}

class _RootNavigationViewState extends State<RootNavigationView> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: NavigationAppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Align(
            alignment: AlignmentDirectional.center,
            child: Text(
              appName,
              style: FluentTheme.of(context).typography.title,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      pane: NavigationPane(
        header: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: const [
              CircleAvatar(),
              SizedBox(
                width: 10,
              ),
              Text(defaultUsername),
            ],
          ),
        ),
        size: const NavigationPaneSize(openMaxWidth: 300),
        displayMode: PaneDisplayMode.top,
        onChanged: (i) {
          setState(() {
            index = i;
          });
        },
        items: [
          PaneItemSeparator(),
          PaneItem(
            icon: const Icon(FluentIcons.user_window),
            title: const Text(navPaneUsers),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.view_dashboard),
            title: const Text(navPaneTerminals),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.delivery_truck),
            title: const Text(navPaneCarriers),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.account_management),
            title: const Text(navPaneCustomers),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.stack),
            title: const Text(navPaneBookings),
          ),
        ],
        footerItems: [
          PaneItem(
            icon: const Icon(FluentIcons.sign_out),
            title: const Text(navPaneLogout),
          ),
        ],
      ),
      content: NavigationBody(
        transitionBuilder: (child, animation) =>
            DrillInPageTransition(child: child, animation: animation),
        index: index,
        children: const [
          UsersTableView(),
          TerminalsTableView(),
          CarriersTableView(),
          CustomersTableView(),
          BookingsTableView(),
          AuthenticationView(),
        ],
      ),
    );
  }
}
