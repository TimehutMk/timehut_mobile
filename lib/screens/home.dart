import 'package:flutter/material.dart';
import 'package:timehut_mobile/widgets/base_scaffold.dart';
import 'package:timehut_mobile/widgets/custom_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Expanded(
        child: Column(
          children: [
            _addWelcomeText("Добредојдовте на платформата за", 20),
            _addWelcomeText("ЕВИДЕНЦИЈА НА РАБОТНО ВРЕМЕ", 10),
            _addWelcomeText(
              "Доколку сеуште не сте регистрирани потребно е да извршите регистрација.",
              10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: CustomButton(
                buttonText: "РЕГИСТРИРАЈ СЕ",
                textColor: const Color.fromRGBO(128, 128, 128, 1),
                backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
                function: () => Navigator.pushNamed(context, 'auth.register'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: CustomButton(
                buttonText: "НАЈАВИ СЕ",
                textColor: Colors.white,
                backgroundColor: const Color.fromRGBO(58, 204, 225, 1),
                function: () => Navigator.pushNamed(context, 'employee.menu'),
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
