import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_application1/bloc/counter_bloc.dart';
import 'package:test_application1/main.dart';
import 'package:test_application1/my_home.dart';

void main() {
  testWidgets('Encontrando widgets test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [BlocProvider<CounterBloc>(create: (_) => CounterBloc())],
        child: const MyApp(),
      ),
    );

    final homeWidget = tester.widget<MyHomePage>(find.byType(MyHomePage));
    expect(find.byWidget(homeWidget), findsOneWidget);

    final title = find.text('Demo automatizacion');
    expect(title, findsOneWidget);

    final counter = find.byKey(Key('counter'));
    expect(counter, findsOneWidget);

  });

  testWidgets('Aumentar contador', (WidgetTester tester) async {
    // Crear el Widget
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [BlocProvider<CounterBloc>(create: (_) => CounterBloc())],
        child: const MyApp(),
      ),
    );

    expect(find.text('1'), findsOneWidget);
    await tester.tap(find.byKey(Key('incre')));
    await tester.tap(find.byKey(Key('incre')));
    await tester.tap(find.byKey(Key('incre')));
    await tester.tap(find.byKey(Key('incre')));
    await tester.tap(find.byTooltip('Less'));
    await tester.pump();
    expect(find.text('4'), findsOneWidget);
  });

}
