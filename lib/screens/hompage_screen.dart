import 'package:awesome_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var myName = 'You Name ?';
  // TextEditingController _textEditingController = TextEditingController();

  var url = 'https://jsonplaceholder.typicode.com/photos';
  var data;

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  Future<void> fetchData() async {
    var res = await http.get(url);
    setState(() {
      data = jsonDecode(res.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Awesome App'),
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]['title']),
                  subtitle: Text('ID: ${data[index]['id']}'),
                  leading: Image.network(data[index]['url']),
                );
              },
              itemCount: data.length,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // myName = _textEditingController.value.text;
          });
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
