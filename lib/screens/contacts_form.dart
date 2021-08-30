import 'package:flutter/material.dart';
// import 'package:'; // url do models/contacts.dart

class ContactForm extends StatefulWidget {

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo contato'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nome Completo',
              ),
              style: TextStyle(
                fontSize: 24
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: TextField(
                controller: _accountNumberController,
                decoration: InputDecoration(
                  labelText: 'Número da Conta',
                ),
                style: TextStyle(
                  fontSize: 24
                ),
                keyboardType: TextInputType.number
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: SizeBox(
                width: double.maxFinite,
                child: RaisedButton(
                  child: Text('Criar'),
                  onPressed: () {
                    final String name = _nameController.text;
                    final int? accountNumber = int.tryParse(_accountNumberController.text);
                    final Contact newContact = Contact(name, accountNumber);
                    Navigator.pop(context, newContact);
                  }
                ),
              ),
            ),
          ]
        );
      );
    );
  }
}