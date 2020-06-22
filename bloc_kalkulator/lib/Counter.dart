import 'package:flutter/material.dart';
import 'package:bloc_kalkulator/counter_bloc.dart';
import 'package:bloc_kalkulator/counter_provider.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.getCOunt,
      // menghitung jumlah bloc,
      initialData: Counterprovider().count, //menghitung jumlah counter provider
      builder: (context, snapshot) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You Have pushed the button this many times',
            ),
            Text('${snapshot.data}',
                style: Theme.of(context)
                    .textTheme
                    .display1) // Menampilkan data counter
          ],
        ),
      ),
    );
  }
}
