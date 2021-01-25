import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../model/root_page_provider.dart';

class RootPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(itemsProvider.state);
    final provider = useProvider(itemsProvider);

    var floatingActionButton2 = FloatingActionButton(
      tooltip: 'Increment',
      child: Icon(Icons.add),
      onPressed: () {
        provider.incrementCounter();
      },
    );
    return Scaffold(
      body: Center(child: Text(state.count.toString())),
      floatingActionButton: floatingActionButton2,
    );
  }
}
