import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Git Information',
                    
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Git URL: https://github.com/Milarize/Contact',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ContactWidget 3 ',
                    
                    ),
                    SizedBox(height: 8),
                    Text(
                      '1. addContact ใช้ใน AddContactWidget เพื่อเพิ่มข้อมูลการติดต่อใหม่เข้ามาในรายการ',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      '2. editContact ใช้ใน EditContactWidget เพื่อแก้ไขข้อมูลการติดต่อที่มีอยู่ในรายการ',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      '3. deleteContact ใช้ใน ContactWidget เพื่อลบข้อมูลการติดต่อออกจากรายการ',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'สิ่งที่อยากเรียนรู้เพิ่มคือ : Firebase on Flutter',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
