import 'package:hooks_riverpod/hooks_riverpod.dart';

final itemsProvider = StateNotifierProvider((ref) => CounterNotifierProvider());

class CounterNotifierModel {
  final int count;

  CounterNotifierModel({
    this.count,
  });
}

class CounterNotifierProvider extends StateNotifier<CounterNotifierModel> {
  CounterNotifierProvider() : super(CounterNotifierModel(count: 0));

  void incrementCounter() {
    state = CounterNotifierModel(count: state.count + 1);
  }
}
