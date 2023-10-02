import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController inputController = new TextEditingController();
  String _text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Input"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: inputController,
              decoration: InputDecoration(
                hintText: "Enter the Name",
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed:() {
                  setState(() {
                    _text = inputController.text;
                  });
                },
                child:
                Text("Show" , style: TextStyle(fontSize:20),)
            ),
            SizedBox(
              height: 8,
            ),
            Text('$_text', style:  TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _text = "";
                  });
                },
                child: Text("Delete" , style: TextStyle(fontSize: 20),)
            ),
          ],
        ),
      ),
    );
  }
}
