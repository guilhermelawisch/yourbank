import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'package:yourbank/models/contacts.dart';

Future<Database> createDatabase() {
  return getDatabasePath().then((dbPath) => {
    final String path = join(dbPath, 'yourbank.db');
    openDatabase(path, onCreate: (db, version) => {
      db.execute('CREATE TABLE contacts ('
      'id INTEGER PRIMARY KEY,'
      'name TEXT,'
      'account_number INTEGER)');
    }, version: 1);
  });
}

Future<int> save((Contact contact) {
  createDatabase().then((db) {
    final Map<String, dynamic> contactMap = Map();
    contactMap['name'] = contact.name;
    contactMap['account_number'] = contact.accountNumber;
    return db.insert('contacts', contactMap);
  });
}); 

Future<List<Contact>> findAll(() {
  return createDatabase().then((db) {
    return db.query('contacts').then((maps) {
      final List<Contact> contacts = List();  // if not working, use []
      for (Map<String, dynamic> map in maps) {
        final Contact contact = Contact(
          map['id'],
          map['name'],
          map['account_number'],
        );
        contacts.add(contact);
      }
      return contacts;
    });
  });
});