import 'package:get_it/get_it.dart';
import 'package:real_state_app/features/fearture_one/data_layer/data_sources/remote/api_provider.dart';
import 'package:real_state_app/features/fearture_one/data_layer/repositories/simpsons_repositoryImpl.dart';
import 'package:real_state_app/features/fearture_one/domain_layer/repositories/simpsons_repository.dart';
import 'package:real_state_app/features/fearture_one/domain_layer/usecases/get_sympsons_usecase.dart';
import 'package:real_state_app/features/fearture_one/presentation_layer/blocs/simpsons_bloc.dart';

GetIt locator = GetIt.instance;

setup() {
  locator.registerSingleton<ApiProvider>(ApiProvider());
// repository
  locator
      .registerSingleton<SimpsonsRepository>(SimpsonsRepositoryImpl(locator()));
  // use cases
  locator.registerSingleton<GetSimpsonsUseCase>(GetSimpsonsUseCase(locator()));

  // bloc
  locator.registerSingleton<SimpsonsBloc>(SimpsonsBloc(locator()));
}
