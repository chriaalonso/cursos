import 'package:bytebank/screens/contact_form.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacts')),
      body: ListView(
        children: const <Widget>[
          Card(
            child: ListTile(
              title: Text(
                'Alonso',
                style: TextStyle(fontSize: 24),
              ),
              subtitle: Text(
                '1000',
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ContactForm()))
              .then((newContact) => debugPrint(newContact.toString()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
