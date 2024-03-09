import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_chat/domain/entities/message.dart';
import 'package:yes_no_chat/presentation/providers/chat_provider.dart';
import 'package:yes_no_chat/presentation/shared/message_field_box.dart';
import 'package:yes_no_chat/presentation/widgets/her_message_bubble.dart';
import 'package:yes_no_chat/presentation/widgets/my_message_bubble.dart';
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
    final ChatProvider chatProvider = context.watch<ChatProvider>();
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: chatProvider.messageList.length,
                  itemBuilder: ((context, index) {
                    print(chatProvider.messageList[index].text);
                    return (chatProvider.messageList[index].fromWho ==
                            FromWho.hers)
                        ? const HerMessageBubble()
                        : MyMessageBubble(
                            message: chatProvider.messageList[index].text);
                  }))),
          const MesageFieldBox()
        ],
      ),
    ));
  }
}