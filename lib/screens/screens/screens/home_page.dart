import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  final String userName;
  final String phone;

  const HomePage({required this.userName, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whats App'),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: Text(userName),
            subtitle: Text(phone),
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ChatTile(index: index);
              },
            ),
          )
        ],
      ),
    );
  }
}