import 'package:flutter/material.dart';
import 'package:timehut_mobile/widgets/base_scaffold.dart';
import 'package:timehut_mobile/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Expanded(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                "Корисничко име",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey[400]!),
              ),
              child: Container(
                width: 280,
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16, bottom: 10),
              child: Text(
                "Лозинка",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey[400]!),
              ),
              child: Container(
                width: 280,
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              buttonText: "НАЈАВИ СЕ",
              textColor: Colors.white,
              backgroundColor: const Color.fromRGBO(58, 204, 225, 1),
              function: () => Navigator.pushNamed(context, "employee.menu"),
            ),
          ],
        ),
      ),
    );
  }
}
