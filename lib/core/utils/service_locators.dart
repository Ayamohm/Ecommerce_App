import 'package:commerce_app/core/utils/storage_helper.dart';
import 'package:commerce_app/features/auth/BLOC/auth_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../features/auth/repo/auth_repo.dart';
import '../networking/dio_helper.dart';

GetIt sl=GetIt.instance;

void setup(){
  Helper dio = Helper();

  sl.registerSingleton<Helper>(dio);
  sl.registerLazySingleton(() => Authrepo(sl<Helper>()));
  
  sl.registerLazySingleton(() => StorageHelper());


}
