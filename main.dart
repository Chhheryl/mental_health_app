import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mail',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Mail'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controllerSubject = TextEditingController();
  final controllerMessage = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Mail'),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              buildTextField(title: 'Subject', controller: controllerSubject),
              const SizedBox(height: 6),
              buildTextField(
                title: 'Message',
                controller: controllerMessage,
                maxLines: 10,
              ),
              const SizedBox(height: 50),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.save,
                  size: 30.0,
                  color: Colors.black,
                ),
                label: Text(
                  'Archive',
                  style: TextStyle(color: Colors.black),
                ), // <-- Text
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.send,
                  size: 30.0,
                  color: Colors.black,
                ),
                label: Text(
                  'Send',
                  style: TextStyle(color: Colors.black),
                ), // <-- Text
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.delete_forever_rounded,
                  size: 30.0,
                  color: Colors.black,
                ),
                label: Text(
                  'Blackhole',
                  style: TextStyle(color: Colors.black),
                ), // <-- Text
              ),
            ],
          ),
        ),
      );
  Widget buildTextField({
    required String title,
    required TextEditingController controller,
    int maxLines = 1,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          TextField(
            controller: controller,
            maxLines: maxLines,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ],
      );
}
