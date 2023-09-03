import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:timehut_mobile/widgets/auth_base_scaffold.dart';

@RoutePage()
class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBaseScaffold(
      child: Expanded(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 16.0),
              _buildText("ОПИС", FontWeight.bold),
              const SizedBox(height: 16.0),
              _buildText(
                "Оваа апликација Ви овозможуваНајава и Одјава на Вашето работно место без потреба од дополнителни уреди, картички, беџови...\n\n"
                "Дополнително апликацијата Ви овозможува да го тракирате и пријавите вашето време потрошено за работа и доколку не сте на работното место, например во случај на Работа од Дома, службен излез од работното место и слично.\n\n"
                "Исто така напредните функционалности на апликацијата овозможуваат да имате детален преглед и во реално време да ги следите времето поминато на работа, заработена плата, бонуси, награди...",
                FontWeight.normal,
              ),
              _buildDivider(),
              _buildText("УСЛОВИ ЗА КОРИСТЕЊЕ", FontWeight.bold),
              const SizedBox(height: 16.0),
              _buildText(
                "За да ја користите апликацијата потребно е Вашиот Работодавач да ве регистрира на нашата платформа како негов вработен.\n\n",
                FontWeight.normal,
              ),
              _buildText(
                "По успешна регистрација ќе можете да се најавувате и одјавувате преку Вашиот телефон или Веб пребарувач на вашиот компјутер/лаптоп/таблет.\n\n"
                "Апликацијата ги користи сензорите од уредот за да може да функционира правилно и прецизно, потребно е да направите одредени подесувања на вашиот телефон. Имено потребно е да се овозможи пристап до сензорот за локација, WiFi и Data мрежа, како и пристап до меморијата на уредот (за да може апликацијата за ги зачува извештаите кои се генерираат при користењето).\n\n",
                FontWeight.normal,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildText(String text, FontWeight fontWeight) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 0.5,
      color: Colors.black,
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
    );
  }
}
