import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text('Dr. Smith'),
            subtitle: Text('How can I help you today?'),
            trailing: Text('10:30 AM'),
            onTap: () {
              // Open chat with Dr. Smith
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text('Dr. Johnson'),
            subtitle: Text('Are you feeling better?'),
            trailing: Text('Yesterday'),
            onTap: () {
              // Open chat with Dr. Johnson
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text('Dr. Lee'),
            subtitle: Text('Let me know if you have any questions.'),
            trailing: Text('2 days ago'),
            onTap: () {
              // Open chat with Dr. Lee
            },
          ),
        ],
      ),
    );
  }
}
