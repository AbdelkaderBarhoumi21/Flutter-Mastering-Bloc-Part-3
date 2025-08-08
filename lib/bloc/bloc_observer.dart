import 'package:flutter_bloc/flutter_bloc.dart';

class MyblocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    print("==================Bloc Create");
    print(bloc);
    print("==================Bloc Create");
    super.onCreate(bloc);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    print("==================Bloc");
    print("$bloc");
    print("==================Change");
    print("$change");
    print("==================Bloc");
    super.onChange(bloc, change);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    print("==================");
    print("$bloc");
    print("==================");
    print("$event");
    print("==================");
    super.onEvent(bloc, event);
  }

  void onTransition(Bloc bloc, Transition transition) {
    print("==================");
    print("$bloc");
    print("==================");
    print("$transition");
    print("==================");
    super.onTransition(bloc, transition);
  }

  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(bloc, error, stackTrace);
  }
}
