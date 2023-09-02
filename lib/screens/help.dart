import 'package:flutter/material.dart';
import 'package:timehut_mobile/widgets/base_scaffold.dart';
import 'package:timehut_mobile/widgets/footer.dart';
import 'package:timehut_mobile/widgets/logo.dart';
import 'package:timehut_mobile/widgets/custom_button.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          children: [
            const Logo(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Помош", // Title
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 14),
                    const Text(
                      "Доколку имате проблем со користењето на апликацијата Ве молиме најпрво направете ги следните чекори:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 14),
                    _buildOrderedList(),
                    const SizedBox(height: 14),
                    const Text(
                      "Доколку ги проверивте овие чекори и сеуште имате проблем со користењето на апликацијата Ве молиме контактирајте не со притискање на копчето подолу. Со притискање на копчето Вие се согласувате апликацијата да генерира лог документ кој ќе биде испратен во нашиот центар за подршка со што ќе можеме да го идентификуваме и отстраниме проблемот.",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                        bottom: 40,
                      ),
                      child: CustomButton(
                        buttonText: "ПОДРШКА",
                        textColor: Colors.white,
                        backgroundColor: const Color.fromRGBO(58, 204, 225, 1),
                        function: () => {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderedList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildListItem("1. Проверка на интернет конекција",
            "Апликацијата нема потреба од постојана врска со интернет но пожелно е истата да ја има заради ажурирање на податоците и следење во реално време. Проверете дали имате пристап до интернет."),
        _buildListItem("2. Проверка на подесувањата",
            "Проверете дали имате овозможено следните пермисии Location, Storage, Device Info, WIFI & Data Conectivity, Permanent Notification."),
        _buildListItem("3. Најава",
            "Дали можете успешно да се најавите и да иницирате НАЈАВА НА РАБОТА"),
      ],
    );
  }

  Widget _buildListItem(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: '\n$content',
            ),
          ],
        ),
      ),
    );
  }
}
