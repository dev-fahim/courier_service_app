import 'package:courier_service/fake_data/bookings.dart';
import 'package:courier_service/res/strings.dart';
import 'package:courier_service/shared/default_page.dart';
import 'package:courier_service/shared/default_page_header.dart';
import 'package:courier_service/shared/tables/bookings_table.dart';
import 'package:courier_service/views/booking_add_view.dart';
import 'package:fluent_ui/fluent_ui.dart';

class BookingsTableView extends StatelessWidget {
  const BookingsTableView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: DefaultPageHeader(
        headerText: bookingsTablePageHeader,
        actions: [
          FilledButton(
            child: const Text(bookingsBtnAdd),
            onPressed: () {
              Navigator.pushNamed(context, BookingCreate.routeName);
            },
          )
        ],
      ),
      content: DefaultPage(
        child: BookingsTable(items: bookings),
      ),
    );
  }
}
