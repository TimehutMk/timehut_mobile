import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:timehut_mobile/app_registry.dart';
import 'package:timehut_mobile/models/requests/login_request.dart';
import 'package:timehut_mobile/models/user.dart';
import 'package:timehut_mobile/routers/app_router.gr.dart';
import 'package:timehut_mobile/widgets/auth_base_scaffold.dart';
import 'package:timehut_mobile/widgets/custom_button.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final dio = AppRegistry.i.dio;

  Future<void> submit() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    try {
      final res = await dio.post<Map<String, Object>>('/auth/login',
          data: LoginRequest(
            email: _emailController.text,
            password: _passwordController.text,
            deviceName: await getDeviceName(),
          ).toJson());
      final data = res.data;
      if (data == null) return;
      final user = User.fromJson(data);
      AutoRouter.of(context).replaceAll([const MenuRoute()]);
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Се случи грешка!',
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AuthBaseScaffold(
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            Column(
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
                    child: TextFormField(
                      controller: _emailController,
                      validator: (value) =>
                          value == null || value == '' ? 'Полето е задолжително' : null,
                      decoration: const InputDecoration(
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
                    child: TextFormField(
                      controller: _passwordController,
                      validator: (value) =>
                          value == null || value == '' ? 'Полето е задолжително' : null,
                      obscureText: true,
                      decoration: const InputDecoration(
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
                  function: submit,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<String> getDeviceName() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      return androidInfo.model;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      return iosInfo.name;
    }
    return 'Unknown Device';
  }
}
