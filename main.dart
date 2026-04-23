import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: IDCard(), debugShowCheckedModeBanner: false);
  }
}

class IDCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Digital ID Card"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Card(
          elevation: 5,
          margin: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/image.jpeg'),
                ),
                SizedBox(height: 10),
                Text(
                  "Shotabdi Paul Oishi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("Batch: 63, Department of CSE"),
                Divider(height: 30),

                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("ID: 0182410012101037"),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email: pauloishi2020@email.com"),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone: 01805428363"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
