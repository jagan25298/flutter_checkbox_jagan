import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({super.key});

  @override
  State<CheckBoxScreen> createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  List<bool>isChecked = [false,false,false,false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check box demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 250),
        child: Column(
          children: [
            Text('1. If none of the private/protected/public is specified for a member, that member',style: TextStyle(fontSize: 20),),
            SizedBox(height: 20,),
            Expanded(
              child: ListView(
                children: [
                  CheckboxListTile(
                  title: Text('Is accessible by the class and its subclasses'),
                    value: isChecked[0],
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked[0] = value?? false;
                    });
                  },),
                  CheckboxListTile(
                    title: Text('Is accessible publicly'),
                    value: isChecked[2],
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked[2] = value?? false;
                      });
                    },),
                  CheckboxListTile(
                    title: Text('Is only accessible from within the class'),
                    value: isChecked[3],
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked[3] = value?? false;
                      });
                    },),
                  CheckboxListTile(
                    title: Text('Is only accessible by other classes of the same package'),
                    value: isChecked[1],
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked[1] = value?? false;
                      });
                    },),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
