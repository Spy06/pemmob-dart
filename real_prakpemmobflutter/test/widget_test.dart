import 'package:flutter_test/flutter_test.dart';
import 'package:tokokita/main.dart';

void main() {
  testWidgets('Toko Kita smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our List Produk title exists.
    expect(find.text('List Produk'), findsOneWidget);
  });
}
