import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'root_page/root_page.dart';

void main() {
  runApp(ProviderScope(child: NovelListApp()));
}

class NovelListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(home: RootPage());
}
