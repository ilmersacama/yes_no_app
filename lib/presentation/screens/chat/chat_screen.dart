import 'package:flutter/material.dart';
import 'package:yes_no_app/widgets/chat/her_messages_bubble.dart';
import 'package:yes_no_app/widgets/chat/my_messages_bubble.dart';
import 'package:yes_no_app/widgets/share/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://ps.w.org/simple-chat-button/assets/icon-256x256.png?rev=2593708'),
          ),
        ),
        title: const Text('Hola Amore!'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const HerMessagesBubble()
                    : const MyMessagesBubble();
              },
            )),
            // const Text('data')
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
