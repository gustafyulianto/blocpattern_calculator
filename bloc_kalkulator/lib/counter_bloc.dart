import 'dart:async';
import 'package:bloc_kalkulator/counter_provider.dart';

class CounterBloc {
  final counterController =
      StreamController(); // membuat sebuah stream controller
  final Counterprovider provider =
      Counterprovider(); //membuat sebuah counter provider

  Stream get getCOunt => counterController.stream;

  void updateCount() {
    provider.increasecount();
    counterController.sink
        .add(provider.count); //menambahkan provider ke dalam counterControlle
  }

  void dispose() {
    counterController
        .close(); // menutup counterController ketika tidak digunakan
  }
}

final bloc =
    CounterBloc(); // menjadikan class CounterBloc sebagai sebuah object agar bisa di gunakan pada class lain
