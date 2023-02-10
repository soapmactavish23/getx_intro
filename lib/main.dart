import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textControllerEC = TextEditingController();

  String definidedValue = "";

  @override
  Widget build(BuildContext context) {
    print('Construiu');

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Valor definido: $definidedValue'),
            TextField(
              controller: textControllerEC,
            ),
            ElevatedButton(
              onPressed: () {
                String value = textControllerEC.text;
                setState(() {
                  definidedValue = value;
                });
              },
              child: const Text('Confirmar'),
            )
          ],
        ),
      ),
    );
  }
}
