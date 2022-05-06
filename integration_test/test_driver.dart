import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:test_application1/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('end-to-end test', () {
    testWidgets('tap on the floating action button, verify counter',
            (WidgetTester tester) async {
          app.main();

          const int SECONT = 1;
          await tester.pumpAndSettle();

          expect(find.text('1'), findsOneWidget);

          final Finder fabIncrement = find.byKey(Key('incre'));
          final Finder fabLess      = find.byTooltip('Less');
          final Finder fabRestart   = find.byTooltip('Restart');


          await tester.tap(fabIncrement);
          await tester.pump(Duration(seconds: SECONT));
          await tester.tap(fabIncrement);
          await tester.pump(Duration(seconds: SECONT));
          await tester.tap(fabIncrement);
          await tester.pump(Duration(seconds: SECONT));
          await tester.pumpAndSettle(Duration(seconds: SECONT));
          expect(find.text('4'), findsOneWidget);

          await tester.tap(fabLess);
          await tester.pump(Duration(seconds: SECONT));
          await tester.tap(fabLess);
          await tester.pump(Duration(seconds: SECONT));
          expect(find.text('2'), findsOneWidget);

          await tester.tap(fabRestart);
          await tester.pump(Duration(seconds: SECONT));
          expect(find.text('0'), findsOneWidget);

        });
  });
}