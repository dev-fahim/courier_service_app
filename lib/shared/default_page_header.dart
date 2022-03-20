import 'package:courier_service/res/defaults.dart';
import 'package:fluent_ui/fluent_ui.dart';

class DefaultPageHeader extends StatelessWidget {
  final String headerText;
  final List<Widget> actions;
  const DefaultPageHeader({
    Key? key,
    required this.headerText,
    this.actions = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPageHeaderPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            headerText,
            style: FluentTheme.of(context).typography.titleLarge,
          ),
          ...actions
        ],
      ),
    );
  }
}
