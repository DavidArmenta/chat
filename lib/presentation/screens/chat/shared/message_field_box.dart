import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MesageFieldBox extends StatelessWidget {
  const MesageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {    
    final colors= Theme.of(context).colorScheme;
    return TextFormField(
      decoration: const InputDecoration(
        enabledBorder:OutlineInputBorder(
          borderSide: BorderSide(color: colors.primary)),
        filled: true,
        suffixIcon: IconButton(
         icon: const  Icons(Icons.send_and_archive_outlined),
         onPressed: (){},
        
      ),
    );
  }
}