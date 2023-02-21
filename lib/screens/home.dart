import 'package:flutter/material.dart';
import 'package:timehut_mobile/widgets/base_scaffold.dart';
import 'package:timehut_mobile/widgets/custom_button.dart';
import 'package:timehut_mobile/widgets/footer.dart';
import 'package:timehut_mobile/widgets/logo.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: [
                const Logo(),
                _addWelcomeText("Добредојдовте на платформата за", 20),
                _addWelcomeText("ЕВИДЕНЦИЈА НА РАБОТНО ВРЕМЕ", 10),
                _addWelcomeText(
                  "Доколку сеуште не сте регистрирани потребно е да извршите регистрација.",
                  10,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 40,
                  ),
                  child: CustomButton(
                    buttonText: "РЕГИСТРИРАЈ СЕ",
                    textColor: Color.fromRGBO(128, 128, 128, 1),
                    backgroundColor: Color.fromRGBO(245, 244, 244, 1),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                  child: CustomButton(
                    buttonText: "НАЈАВИ СЕ",
                    textColor: Colors.white,
                    backgroundColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          const Footer(),
        ],
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
