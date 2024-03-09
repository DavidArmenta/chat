import 'package:flutter/material.dart';
//typedef funcionOnPressed = 
class MesageFieldBox extends StatelessWidget {
  const MesageFieldBox({super.key});

  @override 
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final enfoque = FocusNode();


    final UnderlineInputBorder outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent
      ),
      borderRadius: BorderRadius.circular(10),
    );


      final decoration = InputDecoration(
      hintText: "Ingresa tu pregunta y termina con un -> ?",
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_rounded),
          onPressed: (){
            final textValue = textController.value.text;
            print("Impresion de Boton de Envio: $textValue");
            textController.clear();
          },)
      );




    return TextFormField(
      controller: textController,
      focusNode: enfoque,
      onFieldSubmitted: (value){
        print("Se ha mandado un valor: $value");
        textController.clear();
        enfoque.requestFocus();
      },
      onTapOutside:(event) {
        enfoque.unfocus();
      },
      decoration: setDecoration(
        inputBorder: OutlineInputBorder(), 
        onPressed: ()=> onPress(
          textController: textController
          )));
  
  }
  UnderlineInputBorder OutlineInputBorder() => UnderlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent
      ),
      borderRadius: BorderRadius.circular(10),
    );


    InputDecoration setDecoration(
      {required inputBorder, required void Function() onPressed })
      =>InputDecoration(
        enabledBorder: inputBorder,
        focusedBorder: inputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_rounded),
          onPressed: onPressed,
        )
      );

      void onPress({required TextEditingController textController}){
            final textValue = textController.value.text;
            print("Impresion de Boton de Envio: $textValue");
            textController.clear();
      }
}