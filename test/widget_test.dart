import 'package:flutter_test/flutter_test.dart';
import 'package:techno_download_manager/main.dart';

void main() {
  testWidgets('shows the project starter screen', (tester) async {
    await tester.pumpWidget(const TechnoDownloadManagerApp());

    expect(find.text('Techno Download Manger'), findsOneWidget);
    expect(find.text('Project foundation'), findsOneWidget);
  });
}
