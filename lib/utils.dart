import 'package:flutter/material.dart';

// แสดง Dialog ยืนยันการลบ
Future<void> showDeleteConfirmationDialog(BuildContext context, VoidCallback onDelete) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Confirm Deletion'),
        content: Text('Are you sure you want to delete this item?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // ปิด Dialog
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // ปิด Dialog
              onDelete(); // เรียกใช้ฟังก์ชันที่ส่งมา
            },
            child: Text('Delete'),
          ),
        ],
      );
    },
  );
}
