import 'package:eenfeenee_tv_front_end/navigators/app_navigator/app_navigator.dart';
import 'package:get_it/get_it.dart';

final ServiceLocator locator = ServiceLocator._();

/// Convenience wrapper around GetIt.
class ServiceLocator<T> {
  ServiceLocator._();

  final GetIt _getIt = GetIt.instance;

  T call<T extends Object>() => _getIt<T>();

  Future<void> registerDependencies() async {
    //Navigators Start
    _getIt.registerSingleton(AppNavigator());
    //Navigator end

    /* //For session management
    _getIt.registerSingleton(User());

    //Repositories begin
    _getIt.registerSingleton(PokemonRepository());
    //Repositories end*/
  }
}
