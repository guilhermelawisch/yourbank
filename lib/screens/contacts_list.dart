import 'package:flutter/material.dart';
import 'package:yourbank/screens/contacts_form.dart'; // url do contacts_form.dart

class ContactsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos')
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(
                'Alex',
                style: TextStyle(
                  fontSize: 24
                )
              ),
              subtitle: Text(
                '1000',
                style: TextStyle(
                  fontSize: 16
                )
              ),
            ),
          ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ContactsForm(),
            )
          ).then((newContact) => debugPrint(newContact.toString()));
        },
        child: Icon(Icons.add),
      )
    );
  }
}