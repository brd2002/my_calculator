import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int result = 0;
  int first_number = 0;
  int second_number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("My calculator"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (val) {
                first_number = int.parse(val);
                setState(() {});
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter number 1",
              ),
            ),
            TextField(
              onChanged: (val) {
                second_number = int.parse(val);
                setState(() {});
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter number 2",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      result = first_number + second_number;
                      setState(() {});
                    },
                    child: Icon(Icons.add)),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      result = first_number - second_number;
                      setState(() {});
                    },
                    child: Icon(Icons.remove)),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      result = first_number * second_number;
                      setState(() {});
                    },
                    child: Icon(CupertinoIcons.multiply)),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      double ans = first_number / second_number;
                      result =  ans.toInt();
                      setState(() {
                        
                      });
                    },
                    child: Icon(CupertinoIcons.divide))
              ],
            ),
            Text("The output is $result" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
