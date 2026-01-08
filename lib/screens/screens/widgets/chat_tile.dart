import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final int index;

  const ChatTile({required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.green,
        child: Icon(Icons.person, color: Colors.white),
      ),
      title: Text('مستخدم ${index + 1}'),
      subtitle: const Text('مرحبا 👋'),
      trailing: const Text('12:00'),
    );
  }
}