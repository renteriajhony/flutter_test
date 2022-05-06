import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_application1/bloc/counter_bloc.dart';

import 'package:test_application1/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider<CounterBloc>(create: (_) => CounterBloc())
          ],
          child: const MyApp(),
        ),
    );

    final materialApp = tester.widget<MaterialApp>(find.byType(MaterialApp));
      expect(materialApp.theme, ThemeData.light());

  });
}
