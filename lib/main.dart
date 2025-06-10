import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(
    MaterialApp(
      home: QuoteList(),
    )
  );
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'I am a kinda scientist myself', author: 'sww'),
    Quote(text: 'You are a big guy', author: 'rd'),
    Quote(text: 'Harambe dont touch the kid ', author: 'pewep'),
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 60),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey[900]
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList()
      ),
    );
  }
}
