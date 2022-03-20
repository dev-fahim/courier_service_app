import 'package:courier_service/res/defaults.dart';
import 'package:courier_service/res/strings.dart';
import 'package:fluent_ui/fluent_ui.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      content: Center(
        child: SizedBox(
          width: defaultAuthenticationCardWidth,
          height: defaultAuthenticationCardHeight,
          child: Card(
            padding: defaultCardPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(authenticationFormHeader, style: FluentTheme.of(context).typography.title,),
                TextFormBox(
                  autofocus: true,
                  placeholder: authenticationFormInputTitleUsername,
                ),
                TextFormBox(
                  placeholder: authenticationFormInputTitlePassword,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: FilledButton(child: const Text(authenticatrionFormBtnLogin), onPressed: () {}),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
