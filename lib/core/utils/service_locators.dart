import 'package:commerce_app/features/auth/BLOC/auth_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../features/auth/repo/auth_repo.dart';
import '../networking/dio_helper.dart';

GetIt sl=GetIt.instance;

void setup(){
  Helper dio = Helper();
  sl.registerSingleton(dio);
  sl.registerLazySingleton<Authrepo>(() => Authrepo(sl()));
}
