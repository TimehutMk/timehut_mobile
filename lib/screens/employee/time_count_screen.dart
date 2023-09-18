import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:provider/provider.dart';
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
  @override
  void initState() {
    super.initState();
    getLocation();
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
            _buildText(
              "Вашето работно време започна во: 08:05",
              FontWeight.bold,
              20.0,
            ),
            const SizedBox(height: 8.0),
            _buildText(
              "02:23:46",
              FontWeight.bold,
              50.0,
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  icon: const Icon(Icons.pause),
                  iconSize: 28,
                  backgroundColor: const Color.fromRGBO(58, 204, 225, 1),
                  textColor: Colors.white,
                  size: const Size(80, 60),
                  function: () {
                    // Handle pause button tap
                  },
                ),
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
