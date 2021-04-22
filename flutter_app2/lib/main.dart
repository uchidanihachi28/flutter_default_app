import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyAppState());

class MyAppState extends State<MyApp> {
  var _value = '';

  Future _select() async{
    TimeOfDay selected = await showTimePicker(context: context, initialTime: TimeOfDay.now());
  if (selected != null) {
    setState(() => _value = selected.toString());
    }
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('showTimePicker')),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
        child: Column(
          children: <Widget>[
            Text(_value),
            RaisedButton
              (onPressed: _select, child: const Text('開く'),
            )
          ],
        ),
      ),
    ),
    );
  }
}

