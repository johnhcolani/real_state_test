import 'package:dio/dio.dart';
import 'package:real_state_app/core/resources/data_state.dart';
import 'package:real_state_app/features/fearture_one/data_layer/data_sources/remote/api_provider.dart';
import 'package:real_state_app/features/fearture_one/data_layer/models/SimpsonsModel.dart';
import 'package:real_state_app/features/fearture_one/domain_layer/entities/simpsons_entity.dart';
import 'package:real_state_app/features/fearture_one/domain_layer/repositories/simpsons_repository.dart';

class SimpsonsRepositoryImpl extends SimpsonsRepository {
  ApiProvider apiProvider;

  SimpsonsRepositoryImpl(this.apiProvider);

  @override
  Future<DataState<SimpsonsEntity>> fetchSimpsonsData() async {
    try {
      Response response =
          await apiProvider.callSimpsonsData();
      if (response.statusCode == 200) {
        SimpsonsEntity simpsonsEntity = SimpsonsModel.fromJson(response.data);
        return DataSuccess(simpsonsEntity);
      } else {
        return DataFailed('Something went wrong, try again ... ');
      }
    } catch (e) {
      return DataFailed('Please check your connection ...');
    }
  }
}
