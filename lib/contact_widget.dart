import 'package:flutter/material.dart';
import 'package:my_contact/about_me.dart';
import 'package:my_contact/add_contact_widget.dart';
import 'package:my_contact/contact.dart';
import 'package:my_contact/edit_contact_widget.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  _ContactWidgetState createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  List<Contact> contacts = [
    Contact(id: 1, name: 'Wade Wilson', phone: '0258741258', email: 'Deadpool@gmail.com'),
    Contact(id: 2, name: 'James Howlett Hudson', phone: '0258741258', email: 'wolverine@gmail.com'),
    Contact(id: 3, name: 'Logan', phone: '0258741258', email: 'Logan@gmail.com'),
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

  void deleteContact(Contact contact) {
    setState(() {
      contacts.removeWhere((c) => c.id == contact.id);
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

  void _showDeleteConfirmationDialog(Contact contact) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Deletion'),
          content: Text('Are you sure you want to delete this contact?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                deleteContact(contact);
                Navigator.of(context).pop(); 
              },
              child: Text('Delete', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Contacts'),
        backgroundColor: Colors.blueAccent,
        elevation: 4.0,
      ),
      body: contacts.isEmpty
        ? Center(child: Text('No contacts available'))
        : ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                elevation: 4.0,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    child: Text(contacts[index].name[0], style: TextStyle(color: Colors.white)),
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
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      _showDeleteConfirmationDialog(contacts[index]);
                    },
                  ),
                  onTap: () {
                    _navigateToEditContact(contacts[index]);
                  },
                ),
              );
            },
          ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AddContactWidget(addContact: addContact);
                  },
                ));
              },
              backgroundColor: Colors.blueAccent,
            ),
          ),
          Positioned(
            bottom: 80,
            right: 16,
            child: FloatingActionButton(
              child: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutMe()),
                );
              },
              backgroundColor: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
