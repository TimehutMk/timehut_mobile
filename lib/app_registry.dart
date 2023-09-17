import 'package:dio/dio.dart';
import 'package:timehut_mobile/routers/app_router.dart';

class AppRegistry {
  final AppRouter appRouter;
  final Dio dio;

  AppRegistry._(this.appRouter, this.dio);

  static AppRegistry? _appRegistry;

  static AppRegistry get i => _appRegistry!;

  static Future<void> createNewAndRegister() async {
    final appRouter = AppRouter();
    final dio = Dio(BaseOptions(
      baseUrl: 'http://127.0.0.1:8000/api/v1',
      contentType: 'application/json',
    ));

    _appRegistry = AppRegistry._( appRouter, dio);
  }
}
