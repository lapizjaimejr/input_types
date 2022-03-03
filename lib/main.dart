import 'package:flutter/material.dart';
import 'package:input_types/checkbox_input.dart';
import 'package:input_types/dropdown_input.dart';
import 'package:input_types/emails_input.dart';
import 'package:input_types/radio_input.dart';
import 'package:input_types/slider_input.dart';
import 'package:input_types/switch_input.dart';
import 'package:input_types/text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'title'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              //TextInput(),
              //CheckboxInput(),
              //RadioInput(),
              //SwitchInput(),
              //SliderInput(),
              //DropdownInput(),
              EmailsInput(),
            ],
          ),
        ),
    );
  }
}
