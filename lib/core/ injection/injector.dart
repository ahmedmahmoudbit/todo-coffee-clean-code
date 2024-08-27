
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:unicode/features/home/data/data_sources/home_data_source.dart';
import 'package:unicode/features/home/data/models/coffee_model_entity.dart';
import '../../features/home/data/data_sources/hive_coffee_data_source.dart';
import '../../features/home/data/repositories/home_repository.dart';
import '../../features/home/domain/repositories/repo.dart';
import '../../features/home/presentation/manager/home_cubit.dart';
import '../../firebase_options.dart';

final di = GetIt.instance;

class Injector {
  static void init() async {
    /// Bloc
    di.registerFactory(() => HomeCubit(repository: di()));

    /// Repository.
    di.registerLazySingleton<HomeRepositoryBase>(() => HomeRepository(firebaseDataSource: di<HomeDS>(),hiveDataSource: di<HiveCoffeeDataSource>()));

    /// Data Sources.
    di.registerLazySingleton<HomeDS>(() => HomeDS());
    di.registerLazySingleton<HiveCoffeeDataSource>(() => HiveCoffeeDataSource());

    /// Remote Request Manager.
    // injector.registerLazySingleton<RemoteHelper>(() => DioImplementation());
    // تهيئة Hive
    // final appDocumentDir = await getApplicationDocumentsDirectory();
    // Hive.init(appDocumentDir.path);
    //
    // // تسجيل الـ Adapter الخاص بـ Hive
    // Hive.registerAdapter(CoffeeModelEntityAdapter());
    //
    // // فتح صندوق Hive
    // await Hive.openBox<CoffeeModelEntity>('coffeeBox');
    //
    // final firebase = await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
    // di.registerLazySingleton(() => firebase);

  }
}