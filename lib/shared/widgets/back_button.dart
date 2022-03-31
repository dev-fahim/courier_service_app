import 'package:fluent_ui/fluent_ui.dart';

import '../../res/strings.dart';

class BackButton extends StatelessWidget {
  const BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      child: const Text(backButtonName),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
