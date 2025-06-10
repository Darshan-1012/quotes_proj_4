import 'package:flutter/material.dart';

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

  List<String> quotes = [
    'The only way to do great work is to love what you do.',
    'Success is not final, failure is not fatal: it is the courage to continue that counts.',
    'The future belongs to those who believe in the beauty of their dreams.'
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
        children: quotes.map((quote) => Text(quote)).toList()
      ),
    );
  }
}
