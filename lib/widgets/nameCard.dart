import 'package:flutter/material.dart';

class NameChangeCard extends StatelessWidget {
  const NameChangeCard({
    Key key,
    @required this.myName,
    @required TextEditingController textEditingController,
  })  : _textEditingController = textEditingController,
        super(key: key);

  final String myName;
  final TextEditingController _textEditingController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/man.jpg',
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            myName,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 25,
            ),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
                hintText: 'Enter your name',
              ),
            ),
          )
        ],
      ),
    );
  }
}
