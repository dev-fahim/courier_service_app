import 'package:courier_service/res/defaults.dart';
import 'package:fluent_ui/fluent_ui.dart';

class DefaultPage extends StatelessWidget {
  final Widget child;

  const DefaultPage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: defaultPagePadding,
            child: child,
          ),
        ),
      ),
    );
  }
}
