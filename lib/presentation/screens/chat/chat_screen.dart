import 'package:flutter/material.dart';
class ChatScreen extends StatelessWidget{
  const ChatScreen ({super.key});
 Widget build(BuildContext context){
return Scaffold(
  appBar: AppBar(
   leading: const Padding(
    padding:EdgeInsets.all(5),
    child: CircleAvatar( 
      backgroundImage: NetworkImage(
        'https://i.pinimg.com/originals/85/dc/f8/85dcf8b9633c419f6794618d8d6bba52.jpg',
        
      ),
    ),
   ),
title: const Text('nube voladora'),
centerTitle: false,
),
// 
body: const ChatView(),
);
}
}


class ChatView extends StatelessWidget {
  const ChatView({super.key});
  @override
  
  Widget build(BuildContext context) {
    return SafeArea(child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(children: [
      Expanded(child: Container(
        color:  Colors.red,
      )),
    const Text('hola pa'),
    const Text('que tal'),

    ],
    ),
    )
    )
  ;
  }
}