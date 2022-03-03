import 'package:flutter/material.dart';

class CheckboxInput extends StatefulWidget {
  const CheckboxInput({ Key? key }) : super(key: key);

  @override
  _CheckboxInputState createState() => _CheckboxInputState();
}

class _CheckboxInputState extends State<CheckboxInput> {
  bool checkbox1 = false;
  bool checkbox2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CheckboxListTile(
            title: Text('Checkbox 1'),
            value: checkbox1, 
            onChanged: (bool? value) {
              setState(() {
                if (value != null) {
                  checkbox1 = value;
                }            
                // or checkbox1 = value!;
              });
            print('The checkbox value is $value');
          },
          ),
          CheckboxListTile(
                  title: Text('Checkbox 2'),
                  value: checkbox2, 
                  onChanged: (bool? value) {
                    setState(() {
                      if (value != null) {
                        checkbox2 = value;
                      }            
                      // or checkbox1 = value!;
                    });
                  print('The checkbox value is $value');
                },
          ),
        ],
      ),
    );
  }
}