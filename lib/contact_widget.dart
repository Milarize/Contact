import 'package:flutter/material.dart';
import 'package:my_contact/add_contact_widget.dart';
import 'package:my_contact/contact.dart';
import 'package:my_contact/edit_contact_widget%20copy.dart';


class ContactWidget extends StatefulWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  _ContactWidgetState createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  List<Contact> contacts = [
    Contact(id: 1, name: 'Test1', phone: '0258741258', email: 'Test1@gmail.com'),
    Contact(id: 2, name: 'Test2', phone: '0258741258', email: 'Test2@gmail.com'),
    Contact(id: 3, name: 'Test3', phone: '0258741258', email: 'Test3@gmail.com'),
    Contact(id: 4, name: 'Test4', phone: '0258741258', email: 'Test4@gmail.com')
  ];

  void addContact(Contact contact) {
    setState(() {
      contacts.add(contact);
    });
  }

  void editContact(Contact contact) {
    setState(() {
      int index = contacts.indexWhere((c) => c.id == contact.id);
      if (index != -1) {
        contacts[index] = contact;
      }
    });
  }

  void _navigateToEditContact(Contact contact) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return EditContactWidget(
        contact: contact,
        editContact: editContact,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Contacts'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(contacts[index].name[0]),
            ),
            title: Text(contacts[index].name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(contacts[index].phone),
                Text(contacts[index].email),
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                _navigateToEditContact(contacts[index]);
              },
            ),
            onTap: () {
              _navigateToEditContact(contacts[index]);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return AddContactWidget(addContact: addContact);
            },
          ));
        },
      ),
    );
  }
}
