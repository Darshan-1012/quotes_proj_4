import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final VoidCallback delete;
   QuoteCard({  required this.quote, required this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text ?? '',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 60),
            Text(
              quote.author ?? '',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey[900]
              ),
            ),
            SizedBox(height: 8,),
            TextButton.icon(
              onPressed: delete,
              label: Text('delete quote'),
              icon: Icon(Icons.delete),
              )
          ],
        ),
      ),
    );
  }
}
