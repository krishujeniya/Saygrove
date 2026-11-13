import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:saygrove/Models/Echo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Echo stores feed post data', () {
    final createdAt = DateTime.utc(2025, 1, 2, 3, 4, 5);
    final echo = Echo(
      id: 'echo-1',
      authorId: 'user-1',
      text: 'Hello from Saygrove',
      image: 'https://example.com/echo.jpg',
      timestamp: Timestamp.fromDate(createdAt),
      likes: 3,
    );

    expect(echo.id, 'echo-1');
    expect(echo.authorId, 'user-1');
    expect(echo.text, 'Hello from Saygrove');
    expect(echo.image, 'https://example.com/echo.jpg');
    expect(echo.timestamp.toDate().toUtc(), createdAt);
    expect(echo.likes, 3);
  });
}
