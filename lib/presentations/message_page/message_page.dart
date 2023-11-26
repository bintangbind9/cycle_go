import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.messenger),
          title: Text('Message: ${index + 1}'),
          trailing: const Icon(Icons.arrow_forward_ios),
        );
      },
    );
  }
}
