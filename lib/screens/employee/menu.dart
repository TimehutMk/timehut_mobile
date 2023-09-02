import 'package:flutter/material.dart';
import 'package:timehut_mobile/widgets/base_scaffold.dart';
import 'package:timehut_mobile/widgets/custom_button.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Expanded(
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            _buildText("Добредојдовте", FontWeight.normal, 16),
            const SizedBox(height: 8.0),
            _buildText("ИМЕ И ПРЕЗИМЕ", FontWeight.bold, 22),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: CustomButton(
                buttonText: "НАЈАВА НА РАБОТА",
                textColor: Colors.white,
                backgroundColor: const Color.fromRGBO(58, 204, 225, 1),
                function: () => {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: CustomButton(
                buttonText: "РАБОТА ОД ДОМА",
                textColor: Colors.white,
                backgroundColor: const Color.fromRGBO(58, 204, 225, 1),
                function: () => {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: CustomButton(
                buttonText: "МОИ СМЕНИ",
                textColor: Colors.white,
                backgroundColor: const Color.fromRGBO(58, 204, 225, 1),
                function: () => Navigator.pushNamed(context, 'employee.shifts'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildText(String text, FontWeight fontWeight, double fontSize) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
      textAlign: TextAlign.center,
    );
  }
}
