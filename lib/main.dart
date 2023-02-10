import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/value_controller.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final textControllerEC = TextEditingController();

  final valueController = ValueController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<ValueController>(
              init: valueController,
              initState: (_) {},
              builder: (ctrl) {
                return Text('Valor definido: ${ctrl.definidedValue}');
              },
            ),
            TextField(
              controller: textControllerEC,
            ),
            const SizedBox(
              height: 10,
            ),
            GetBuilder<ValueController>(
                init: valueController,
                builder: (control) {
                  return control.isLoading
                      ? const CircularProgressIndicator()
                      : ElevatedButton(
                          onPressed: () {
                            String value = textControllerEC.text;
                            valueController.setValue(value);
                          },
                          child: const Text('Confirmar'),
                        );
                })
          ],
        ),
      ),
    );
  }
}
