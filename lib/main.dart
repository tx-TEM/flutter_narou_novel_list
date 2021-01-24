import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final counterProvider = StateProvider((ref) => 0);

void main() {
  runApp(ProviderScope(child: NovelListApp()));
}

class NovelListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(home: RootPage());
}

class RootPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final int count = useProvider(counterProvider).state;
    var floatingActionButton2 = FloatingActionButton(
      tooltip: 'Increment',
      child: Icon(Icons.add),
      onPressed: () {
        context.read(counterProvider).state++;
      },
    );
    return Scaffold(
      body: Center(child: Text('$count')),
      floatingActionButton: floatingActionButton2,
    );
  }
}
