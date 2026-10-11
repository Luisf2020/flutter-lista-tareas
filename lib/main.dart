import 'package:flutter/material.dart';

void main() => runApp(const TareasApp());

class TareasApp extends StatelessWidget {
  const TareasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de tareas',
      theme: ThemeData(colorSchemeSeed: const Color(0xFF0D9488), useMaterial3: true),
      home: const TareasPage(),
    );
  }
}

class Tarea {
  Tarea(this.titulo);
  final String titulo;
  bool hecha = false;
}

class TareasPage extends StatefulWidget {
  const TareasPage({super.key});

  @override
  State<TareasPage> createState() => _TareasPageState();
}

class _TareasPageState extends State<TareasPage> {
  final List<Tarea> _tareas = [Tarea('Repasar widgets')];
  final TextEditingController _control = TextEditingController();

  void _agregar() {
    final texto = _control.text.trim();
    if (texto.isEmpty) return;
    setState(() => _tareas.add(Tarea(texto)));
    _control.clear();
  }

  int get _pendientes => _tareas.where((t) => !t.hecha).length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de tareas')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('$_pendientes pendientes de ${_tareas.length}'),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    controller: _control,
                    decoration: const InputDecoration(hintText: 'Nueva tarea'),
                    onSubmitted: (_) => _agregar(),
                  ),
                ),
              ),
              IconButton(onPressed: _agregar, icon: const Icon(Icons.add)),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _tareas.length,
              itemBuilder: (context, i) {
                final t = _tareas[i];
                return CheckboxListTile(
                  value: t.hecha,
                  title: Text(t.titulo),
                  onChanged: (v) => setState(() => t.hecha = v ?? false),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
