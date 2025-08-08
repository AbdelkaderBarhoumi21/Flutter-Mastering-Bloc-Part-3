import 'package:bloc_mastering/bloc/counter_bloc.dart';
import 'package:bloc_mastering/bloc/counter_event.dart';
import 'package:bloc_mastering/bloc/counter_state.dart';
import 'package:bloc_mastering/widget/custom_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Note App")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonCounter(
                onPressed: () {
                  context.read<CounterBloc>().add(IncrementEvent());
                },
                icons: Icons.add,
              ),
              //it not the best methods watch 
              //because its like state it rebuild all the page not the part that we refresh 
              TextCounter(counter: context.watch<CounterBloc>().state.counter),
              // BlocBuilder<CounterBloc, CounterState>(
              //   builder: (context, state) {
              //     return TextCounter(counter: state.counter);
              //   },
              // ),
              ButtonCounter(
                onPressed: () {
                  context.read<CounterBloc>().add(DecrementEvent());
                },
                icons: Icons.remove,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
