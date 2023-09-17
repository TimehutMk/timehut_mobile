import 'package:dio/dio.dart';
import 'package:timehut_mobile/routers/app_router.dart';
import 'package:timehut_mobile/state/user_provider.dart';

class AppRegistry {
  final AppRouter appRouter;
  final Dio dio;
  final UserProvider userProvider;

  AppRegistry._(this.appRouter, this.dio, this.userProvider);

  static AppRegistry? _appRegistry;

  static AppRegistry get i => _appRegistry!;

  static Future<void> createNewAndRegister() async {
    final appRouter = AppRouter();
    final dio = Dio(BaseOptions(
      baseUrl: 'https://healthy-grass-ggixasnm6v.ploi.site/api/v1',
      contentType: 'application/json',
    ));
    final userProvider = UserProvider();
    // Add an interceptor to set the token for every request
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {

        options.headers['Authorization'] = 'Bearer ${userProvider.token}';

        handler.next(options); 
      },
    ));

    _appRegistry = AppRegistry._(appRouter, dio, userProvider);
  }
}
