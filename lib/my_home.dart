import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application1/bloc/counter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo automatizacion'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador, prueba test y automatizacion flutter',
              key: Key('lbl_description'),
            ),
            Text(
              '${counterBloc.state.counter}',
              style: Theme.of(context).textTheme.headline4,
              key: const Key('counter'),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: FloatingActionButton(
              key: Key('incre'),
              onPressed: () => counterBloc.add(EventAdd()),
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ),
           Padding(
             padding: const EdgeInsets.all(3.0),
             child: FloatingActionButton(
               backgroundColor: Colors.green,
               onPressed: () => context.read<CounterBloc>().add(EventLess()),
               tooltip: 'Less',
               child: const Icon(Icons.remove),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(3.0),
             child: FloatingActionButton(
               backgroundColor: Colors.red,
               onPressed: () => context.read<CounterBloc>().add(EventReset()),
               tooltip: 'Restart',
               child: const Icon(Icons.clear),
             ),
           ),
        ],
      ),
    );
  }
}
