import 'package:flutter/material.dart';
import 'package:yes_no_chat/presentation/screens/chat/shared/message_field_box.dart';
import 'package:yes_no_chat/widgets/her_message_bubble.dart';
import 'package:yes_no_chat/widgets/my_message_bubble.dart';
class ChatScreen extends StatelessWidget{
  const ChatScreen ({super.key});
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
              padding:EdgeInsets.all(5),
                child: CircleAvatar( 
                  backgroundImage: NetworkImage(
                  'https://i.pinimg.com/originals/85/dc/f8/85dcf8b9633c419f6794618d8d6bba52.jpg',)),
                    ),
              title: const Text('nube voladora'),
              centerTitle: false,
                  ),
                body: const _ChatView(),
);
}
}


class _ChatView extends StatelessWidget {
  const _ChatView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 101,
                itemBuilder: ((context,index){
                return (index % 2 == 0)
                ? const HerMessageBubble()
                : const MyMessageBubble();
              })
              ) 
            ),
            const MesageFieldBox()
          
          ],
        ),
        )
        );
  }
}