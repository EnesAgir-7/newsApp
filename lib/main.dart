import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'News'),
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
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
        return Card(
          child: Column(
            children: [
              Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/BBC_News_2019.svg/800px-BBC_News_2019.svg.png'),
              ListTile(
                leading: Icon(Icons.arrow_drop_down_circle),
                title: Text('News Header'),
                subtitle: Text('author'),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('description description description  description description description  description description description description description'),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  FlatButton(onPressed: (){}, child: Text('go news')),
                ],
              )
            ],
          ),
        );
      }))
    );
  }
}
