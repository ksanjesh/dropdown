import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String value = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dropdown"),
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButton<String>(
              items: const [
                DropdownMenuItem<String>(
                  value: "App",
                  child: Center(child: Text("App")),
                ),
                DropdownMenuItem<String>(
                  value: "Web",
                  child: Center(child: Text("web")),
                ),DropdownMenuItem<String>(
                  value: "Desktop",
                  child: Center(child: Text("Desktop")),
                )
              ],
              onChanged: (e) {
                setState(() {


                  value = e.toString();
                  print("$value line no 36");
                });
              },
              hint: Text("select your field"),
            ),
            Text("$value",style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
