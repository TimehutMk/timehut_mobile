import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timehut_mobile/routers/app_router.gr.dart';
import 'package:timehut_mobile/state/user_state.dart';
import 'package:timehut_mobile/widgets/app_base_scaffold.dart';
import 'package:timehut_mobile/widgets/custom_button.dart';

@RoutePage()
class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBaseScaffold(
      child: Expanded(
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            _buildText("Добредојдовте", FontWeight.normal, 16),
            const SizedBox(height: 8.0),
            _buildText(context.watch<UserState>().name ?? '', FontWeight.bold, 22),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: CustomButton(
                buttonText: "НАЈАВА НА РАБОТА",
                textColor: Colors.white,
                backgroundColor: const Color.fromRGBO(58, 204, 225, 1),
                function: () => AutoRouter.of(context).push(const TimeCountRoute()),
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
                function: () => AutoRouter.of(context).push(const TimeCountRoute()),
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
                function: () => AutoRouter.of(context).push(
                  ShiftsRoute(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: CustomButton(
                buttonText: "ОДЈАВИ СЕ",
                textColor: Colors.white,
                backgroundColor: const Color.fromRGBO(58, 204, 225, 1),
                function: () => AutoRouter.of(context).push(
                  ShiftsRoute(),
                ),
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
