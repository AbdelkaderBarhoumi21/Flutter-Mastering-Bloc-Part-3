import 'package:bloc_mastering/bloc/counter_bloc.dart';
import 'package:bloc_mastering/home.dart';
import 'package:bloc_mastering/bloc/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyblocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => CounterBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Course Bloc",
        home: HomePage(),
      ),
    );
  }
}
