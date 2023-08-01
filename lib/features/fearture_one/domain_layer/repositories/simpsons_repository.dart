
import 'package:real_state_app/core/resources/data_state.dart';
import 'package:real_state_app/features/fearture_one/domain_layer/entities/simpsons_entity.dart';

abstract class SimpsonsRepository {
Future<DataState<SimpsonsEntity>>fetchSimpsonsData();
}