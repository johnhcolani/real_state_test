import 'package:real_state_app/core/usecase/use_case.dart';
import 'package:real_state_app/features/fearture_one/domain_layer/repositories/simpsons_repository.dart';

import '../../../../core/resources/data_state.dart';
import '../entities/simpsons_entity.dart';

class GetSimpsonsUseCase extends UseCase<DataState<SimpsonsEntity>, String >{
  final SimpsonsRepository simpsonsRepository;

  GetSimpsonsUseCase(this.simpsonsRepository);

  @override
  Future<DataState<SimpsonsEntity>>call( param){
    return simpsonsRepository.fetchSimpsonsData();
  }
}