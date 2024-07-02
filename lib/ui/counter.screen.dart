import 'package:counterapp/bloc/counter/counter_bloc.dart';
import 'package:counterapp/bloc/counter/counter_events.dart';
import 'package:counterapp/bloc/counter/counter_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
           return Text(state.countValue.toString(), style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),);
         }),

          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10)),
                  child: CupertinoButton(
                      child: const Text(
                        "Increment",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                        context.read<CounterBloc>().add(IncrementEvent());
                      })),
              const SizedBox(width: 20),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10)),
                  child: CupertinoButton(
                      child: const Text(
                        "Remove",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                        context.read<CounterBloc>().add(DecrementEvent());
                      })),
            ],
          )
        ],
      ),
    );
  }
}
