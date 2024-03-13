import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
 final String message;
  final String? imageUrl;
 
  const HerMessageBubble({super.key, required this.message,this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(color: colors.primary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
          child:  Text("hi",
          style: TextStyle(color: Colors.amber),)),
        ),
        const SizedBox(
          height: 5,
          ),
          const _ImageBubble(),
          const SizedBox(
            height: 20,
          )
      ],
    );
  }
}
@override
class _ImageBubble extends StatelessWidget{
  const _ImageBubble({super.key});
  
    Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return ClipRRect(
      child: Image.network(
        width: size.width*0.7,
        height: size.height*0.2,
        fit: BoxFit.cover,
        "https://yesno.wtf/assets/yes/14-b57c6dc03aa15a4b18f53eb50d6197ee.gif",
        loadingBuilder: (context, child, loadingProgress) 
        => (loadingProgress == null)?
        child:
        Container(
          width: size.width*0.7,
          height: size.height*0.2,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5
          ),
          child: const Center(
            child: Text(
              "Cargando Imagen... 8)",
            ),
          ),
        )
      ),
    );
  }
}