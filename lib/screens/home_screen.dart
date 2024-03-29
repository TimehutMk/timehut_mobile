import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:timehut_mobile/routers/app_router.gr.dart';
import 'package:timehut_mobile/widgets/auth_base_scaffold.dart';
import 'package:timehut_mobile/widgets/custom_button.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBaseScaffold(
      child: Expanded(
        child: Column(
          children: [
            _addWelcomeText("Добредојдовте на платформата за", 20),
            _addWelcomeText("ЕВИДЕНЦИЈА НА РАБОТНО ВРЕМЕ", 10),
            _addWelcomeText(
              "Доколку сеуште не сте регистрирани потребно е да го известите вашиот работодавач.",
              10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: CustomButton(
                buttonText: "НАЈАВИ СЕ",
                textColor: Colors.white,
                backgroundColor: const Color.fromRGBO(58, 204, 225, 1),
                function: () => AutoRouter.of(context).push(const LoginRoute()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: CustomButton(
                buttonText: "ЗАБОРАВЕНА ЛОЗИНКА",
                textColor: const Color.fromRGBO(128, 128, 128, 1),
                backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
                function: () => {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _addWelcomeText(String text, double padding) {
    return Padding(
      padding: EdgeInsets.only(
        top: padding,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Color.fromRGBO(128, 128, 128, 1),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
