import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_lista_tareas/main.dart';

void main() {
  testWidgets('agrega una tarea y actualiza el contador', (tester) async {
    await tester.pumpWidget(const TareasApp());

    expect(find.text('1 pendientes de 1'), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'Estudiar Flutter');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pump();

    expect(find.text('2 pendientes de 2'), findsOneWidget);
    expect(find.text('Estudiar Flutter'), findsOneWidget);
  });
}
