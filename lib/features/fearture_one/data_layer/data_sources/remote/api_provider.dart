import 'package:dio/dio.dart';

import '../../../../../core/utils/constants.dart';

class ApiProvider {
  final Dio _dio = Dio();
  var baseUrl = Constants.baseUrl;

  /// User api
  Future< Response<dynamic>> callSimpsonsData() async {
    try {
      var response = await _dio.get(baseUrl,
          queryParameters: {'q': 'simpsons characters',
            'format': 'json'});

      // print('This is from Api ${response.data}');
      return response.data;
    } catch (e) {
      print('Error fetching Simpsons data: $e');
      throw e; // Re-throw the exception to handle it in the calling code.
    }
  }
}
