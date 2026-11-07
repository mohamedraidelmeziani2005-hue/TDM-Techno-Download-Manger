import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:techno_download_manager/main.dart';

void main() {
  testWidgets('starts in Arabic with right-to-left direction', (tester) async {
    await tester.pumpWidget(const TechnoDownloadManagerApp());

    expect(find.text('Techno Download Manger'), findsOneWidget);
    expect(find.text('الواجهة التأسيسية للمشروع'), findsOneWidget);
    expect(find.text('English'), findsOneWidget);
    expect(
      tester
          .widget<Directionality>(find.byType(Directionality).first)
          .textDirection,
      TextDirection.rtl,
    );
  });

  testWidgets('switches to English and back to Arabic', (tester) async {
    await tester.pumpWidget(const TechnoDownloadManagerApp());

    await tester.tap(find.text('English'));
    await tester.pumpAndSettle();

    expect(find.text('Techno Download Manger'), findsOneWidget);
    expect(find.text('Project foundation'), findsOneWidget);
    expect(find.text('العربية'), findsOneWidget);
    expect(
      tester
          .widget<Directionality>(find.byType(Directionality).first)
          .textDirection,
      TextDirection.ltr,
    );

    await tester.tap(find.text('العربية'));
    await tester.pumpAndSettle();

    expect(find.text('Techno Download Manger'), findsOneWidget);
    expect(find.text('الواجهة التأسيسية للمشروع'), findsOneWidget);
    expect(
      tester
          .widget<Directionality>(find.byType(Directionality).first)
          .textDirection,
      TextDirection.rtl,
    );
  });
}
