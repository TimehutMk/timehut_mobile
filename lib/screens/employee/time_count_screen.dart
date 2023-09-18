import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:provider/provider.dart';
import 'package:timehut_mobile/app_registry.dart';
import 'package:timehut_mobile/state/user_provider.dart';
import 'package:timehut_mobile/widgets/app_base_scaffold.dart';
import 'package:timehut_mobile/widgets/custom_button.dart';

@RoutePage()
class TimeCountScreen extends StatefulWidget {
  const TimeCountScreen({Key? key}) : super(key: key);

  @override
  State<TimeCountScreen> createState() => _TimeCountScreenState();
}

Location location = Location();
bool _serviceEnabled = false;
PermissionStatus? _permissionGranted;
LocationData? _locationData;

Future<dynamic> getLocation() async {
  _serviceEnabled = await location.serviceEnabled();
  if (!_serviceEnabled) _serviceEnabled = await location.requestService();
  _permissionGranted = await location.requestPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    _permissionGranted = await location.requestPermission();
  }
  _locationData = await location.getLocation();
}

class _TimeCountScreenState extends State<TimeCountScreen> {
  final shiftProvider = AppRegistry.i.shiftProvider;
  final dio = AppRegistry.i.dio;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    getLocation();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  Future<void> startShift() async {
    try {
      final res = await dio.post('/shifts/start');
      if (res.statusCode != 201) return;
      shiftProvider.setStartAt(DateTime.now());
      setState(() {});
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Се случи грешка!',
          ),
        ),
      );
    }
  }

  String formatDate(DateTime? dateTime) {
    if (dateTime == null) return '';
    return '${dateTime.hour}:${dateTime.minute}';
  }

  String formatTimeDifference(DateTime? dateTime) {
    if (dateTime == null) return '';
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    // Calculate hours, minutes, and seconds from the difference
    final hours = difference.inHours.remainder(24);
    final minutes = difference.inMinutes.remainder(60);
    final seconds = difference.inSeconds.remainder(60);

    // Format the result as "hh:mm:ss"
    final formattedTime =
        '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';

    return formattedTime;
  }

  @override
  Widget build(BuildContext context) {
    return AppBaseScaffold(
      child: Expanded(
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            _buildText(
              "Добредојдовте",
              FontWeight.normal,
              16,
            ),
            const SizedBox(height: 8.0),
            _buildText(
              context.watch<UserProvider>().user?.name ?? '',
              FontWeight.bold,
              22,
            ),
            _buildDivider(),
            shiftProvider.startAt == null
                ? _buildText(
                    "Притиснете подолу за да започнете со вашето работно време:",
                    FontWeight.bold,
                    20.0,
                  )
                : Column(
                    children: [
                      _buildText(
                        "Вашето работно време започна во: ${formatDate(shiftProvider.startAt)}",
                        FontWeight.bold,
                        20.0,
                      ),
                      const SizedBox(height: 8.0),
                      _buildText(
                        formatTimeDifference(shiftProvider.startAt),
                        FontWeight.bold,
                        50.0,
                      ),
                    ],
                  ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                shiftProvider.startAt == null
                    ? CustomButton(
                        icon: const Icon(Icons.play_circle),
                        iconSize: 28,
                        backgroundColor: const Color.fromRGBO(58, 204, 225, 1),
                        textColor: Colors.white,
                        size: const Size(80, 60),
                        function: startShift,
                      )
                    : Row(
                        children: [
                          // CustomButton(
                          //   icon: const Icon(Icons.pause),
                          //   iconSize: 28,
                          //   backgroundColor: const Color.fromRGBO(58, 204, 225, 1),
                          //   textColor: Colors.white,
                          //   size: const Size(80, 60),
                          //   function: () {
                          //     // Handle pause button tap
                          //   },
                          // ),
                          const SizedBox(width: 16.0),
                          CustomButton(
                            icon: const Icon(Icons.stop),
                            iconSize: 28,
                            backgroundColor: const Color.fromRGBO(58, 204, 225, 1),
                            textColor: Colors.white,
                            size: const Size(80, 60),
                            function: () {
                              // Handle stop button tap
                            },
                          ),
                        ],
                      )
              ],
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

  Widget _buildDivider() {
    return Container(
      height: 0.5,
      color: Colors.black,
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
    );
  }
}
