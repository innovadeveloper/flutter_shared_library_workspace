import 'package:rxdart/subjects.dart';
import 'package:simple_app/src/models/product.dart';
import 'package:simple_app/src/states/counter_state.dart';


class CounterBloc {
  final _counterSubject = BehaviorSubject<CounterState>.seeded(CounterState.initial());
  Stream<CounterState> get counterStream => _counterSubject.stream;

  void incrementCounter() {
    _counterSubject.add(CounterState.loading());

    Future.delayed(Duration(seconds: 1), () {
      final Product product = Product.phone(id: "xyz", name: "iphone");
      _counterSubject.add(CounterState.data(product));
    });
  }

  void dispose() {
    _counterSubject.close();
  }
}