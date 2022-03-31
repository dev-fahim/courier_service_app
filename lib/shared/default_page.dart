import 'package:courier_service/res/defaults.dart';
import 'package:fluent_ui/fluent_ui.dart';

class DefaultPage extends StatelessWidget {
  final Widget child;
  final bool hasHorizontalScroll;
  final bool hasVerticalScroll;

  const DefaultPage({Key? key, required this.child, this.hasHorizontalScroll = true, this.hasVerticalScroll = true,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: hasVerticalScroll ? SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: hasHorizontalScroll ? SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: defaultPagePadding,
            child: child,
          ),
        ) : Padding(
          padding: defaultPagePadding,
          child: child,
        ),
      ) : Padding(
        padding: defaultPagePadding,
        child: child,
      ),
    );
  }
}
