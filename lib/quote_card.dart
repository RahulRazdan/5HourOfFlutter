import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listofdata/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  const QuoteCard({
    Key? key,
    required this.quote,
    required this.delete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(quote.text, style: TextStyle( fontSize: 18.0,color: Colors.grey[600])),
              const SizedBox(height: 6.0),
              Text(quote.author, style: TextStyle( fontSize: 14.0,color: Colors.grey[900])),
              const SizedBox(height: 6.0),
              IconButton(onPressed: (){ delete(); }, icon: const Icon(CupertinoIcons.delete_solid),iconSize: 20.0)
            ],
          ),
        )
    );
  }
}
