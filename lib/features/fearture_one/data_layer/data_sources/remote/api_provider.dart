import 'package:dio/dio.dart';

import '../../../../../core/utils/constants.dart';

class ApiProvider {
  var baseUrl = Constants.baseUrl;

  /// User api
  Future<Response<dynamic>> callSimpsonsData() async {
    try {
      var dio = Dio();
      var response = await dio.request(
        'http://api.duckduckgo.com/?q=simpsons+characters&format=json',
        options: Options(
          method: 'GET',
        ),
      );
      print('This is from Api ${response.data}');
      return response.data;
    } catch (e) {
      print('Error fetching Simpsons data: $e');
      throw e; // Re-throw the exception to handle it in the calling code.
    }
  }
}
