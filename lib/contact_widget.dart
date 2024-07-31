import 'package:flutter/material.dart';
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
        body: ListView.builder(itemBuilder: (contact,index){
          return ListTile(title:Text(contacts[index].name), );
        },itemCount:contacts.length));
  }
}
