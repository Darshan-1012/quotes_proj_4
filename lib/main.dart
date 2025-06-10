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
    Quote(text: 'my alaoa', author: 'sww'),
    Quote(text: 'my ddd', author: 'rd'),
    Quote(text: 'my pppp', author: 'pewep'),
  ];
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
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList()
      ),
    );
  }
}
