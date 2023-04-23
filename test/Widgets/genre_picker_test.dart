import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_mixer/models/genre_model.dart';
import 'package:movie_mixer/presentation/room_preferences_screen/widgets/genre_picker.dart';

void main() {
  group('GenrePicker Widget', () {
    // ignore: unused_local_variable
    late List<GenreModel> mockGenres;
    late Function(List<GenreModel>) mockOnGenresChanged;

    setUp(() {
      // Set up mock data and functions
      mockGenres = [
        GenreModel(dbId: 1, name: 'Action'),
        GenreModel(dbId: 2, name: 'Comedy'),
        GenreModel(dbId: 3, name: 'Drama'),
      ];
      mockOnGenresChanged = (genres) {};
    });

    testWidgets('renders properly', (WidgetTester tester) async {
      // Build the widget and test that it renders without errors
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GenrePicker(onGenresChanged: mockOnGenresChanged),
          ),
        ),
      );

      // Verify that the preferred genres label is displayed
      expect(find.text('Preferred genres'), findsOneWidget);
    });

    testWidgets('opens genre modal on add button tap',
        (WidgetTester tester) async {
      // Build the widget and tap the add button
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GenrePicker(onGenresChanged: mockOnGenresChanged),
          ),
        ),
      );
      await tester.tap(find.byIcon(Icons.add_circle_outline_rounded));
      await tester.pumpAndSettle();

      // Verify that the genre modal dialog is displayed
      expect(find.text('Select Genres'), findsOneWidget);
    });

    testWidgets('selects genres in modal and updates selected genres list',
        (WidgetTester tester) async {
      // Build the widget and select genres in the modal
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GenrePicker(onGenresChanged: mockOnGenresChanged),
          ),
        ),
      );
      await tester.tap(find.byIcon(Icons.add_circle_outline_rounded));
      await tester.pumpAndSettle();
      await tester.tap(find.byType(CheckboxListTile).first);
      await tester.tap(find.text('OK'));
      await tester.pumpAndSettle();

      // Verify that the selected genres list is updated
      expect(find.byType(GestureDetector), findsOneWidget);
    });
  });
}
