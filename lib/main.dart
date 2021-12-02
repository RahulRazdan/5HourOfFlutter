import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard()
  ));
}

class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
                radius: 50.0,
              )
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            const Text('NAME',style: TextStyle(
              color:Colors.grey,
              letterSpacing: 2.0
            )),
            const SizedBox(height: 10.0),
            Text('Billu',style: TextStyle(
                color:Colors.amberAccent[200],
                letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            )),
            const SizedBox(height: 30.0),
            Text('CURRENT NINJA LEVEL',style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0
            )),
            const SizedBox(height: 10.0),
            Text('10',style: TextStyle(
                color:Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
            )),
            const SizedBox(height: 30.0),
            Row(
              children: [
                const Icon(CupertinoIcons.mail_solid,color:Colors.grey),
                const  SizedBox(width: 10.0),
                Text('billumanmoji@mardunga.com', style: TextStyle(
                  color:Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}

