import 'package:flutter/material.dart';

class AddContactWidget extends StatefulWidget {
  const AddContactWidget({ Key? key }) : super(key: key);

  @override
  _AddContactWidgetState createState() => _AddContactWidgetState();
}

class _AddContactWidgetState extends State<AddContactWidget> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController nameController;
  @override
  void initState(){
    super.initState();
    nameController =TextEditingController();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text('Add New Contact'),),body:Form(key: _formKey,
      child:ListView(
        padding:EdgeInsets.all(16),
        children: [
          TextFormField(
            controller :nameController,
            decoration: InputDecoration(
              labelText:'Name',border:OutlineInputBorder()), 
              validator: (value){
        if(value==null||value.isEmpty){
          return 'Please enter name';
        }
        return null;
      },)],))
      
    );
  }
}