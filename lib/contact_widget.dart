import 'package:flutter/material.dart';
import 'package:my_contact/add_contact_widget.dart';
import 'package:my_contact/contact.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  _ContactWidgetState createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  List<Contact> contacts = [
    Contact(id: 1, name: 'Test', phone: '0258741258', email: 'Test@gmail.com'),
    Contact(id: 2, name: 'Test', phone: '0258741258', email: 'Test@gmail.com'),
    Contact(id: 3, name: 'Test', phone: '0258741258', email: 'Test@gmail.com'),
    Contact(id: 4, name: 'Test', phone: '0258741258', email: 'Test@gmail.com')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Contact'),
      ),
      body: ListView.builder(
          itemBuilder: (contact, index) {
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
                ));
          },
          itemCount: contacts.length),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return AddContactWidget();
              },
            ));
          }),
    );
  }
}
