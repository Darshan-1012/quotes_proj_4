import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
    Quote(text: 'You are a big guy', author: 'yy'),
    Quote(text: 'Harambe dont touch the kid ', author: 'pewep'),
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
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete : () {
            setState(() {
              quotes.remove(quote);
            });
          }
          )).toList()
      ),
    );
  }
}
