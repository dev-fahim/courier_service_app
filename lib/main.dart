import 'package:courier_service/res/strings.dart';
import 'package:fluent_ui/fluent_ui.dart';

import 'views/root_navigation_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const CourierServiceSystem());
}

class CourierServiceSystem extends StatelessWidget {
  const CourierServiceSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        typography: Typography.standard(
          brightness: Brightness.dark,
        ),
        visualDensity: VisualDensity.standard,
        focusTheme: FocusThemeData(
          glowFactor: is10footScreen() ? 2.0 : 0.0,
        ),
      ),
      title: appName,
      routes: {
        '/': (_) => const RootNavigationView()
      },
      initialRoute: '/',
      builder: (context, child) {
        return Directionality(textDirection: TextDirection.ltr, child: child!);
      },
    );
  }
}
