import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messages{
  static AlertDialog showConfirmation(BuildContext context,String message,String messageTitle,
      {void Function()? onConfirm}){
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17)
      ),
      title: Text(messageTitle),
      
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(message),
          
         
        ],
      ),
      actions: [
       ElevatedButton(onPressed: (){
        Navigator.pop(context);
       }, child: Text("No")),
       ElevatedButton(onPressed: onConfirm, child: Text("Yes")),
     
        
      ],
    );
  }
}