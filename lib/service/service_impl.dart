import 'package:dio/dio.dart';

import 'service.dart';

class DioServiceImpl implements DioService {
  @override
  Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl: "https://api.spaceflightnewsapi.net",
        headers: {
          'content-type': 'application/json; charset=utf-8 '
        },
      ),
    );
  }
}