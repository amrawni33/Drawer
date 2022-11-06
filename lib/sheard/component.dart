import 'package:flutter/material.dart';

Widget defaultTFF({
  required String? label,
  required TextEditingController controller,
  bool isPassword=false,
})=>Padding(
  padding: const EdgeInsets.all(8.0),
  child:   TextFormField(
    keyboardType: TextInputType.emailAddress,
    cursorColor: Colors.green,
    controller: controller,
    obscureText: isPassword,
    decoration: InputDecoration(
        labelText: label??'Email',
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              width: 3.0,color: Colors.green,
            )
        )
    ),
  ),
);
///*****************************************************************************

Widget defaultMB({
  required String label,
  double width = double.infinity,
  Function()? onPressed,
})=>Container(
  width: width,
  decoration: BoxDecoration(
    color: Colors.green,
    borderRadius: BorderRadius.circular(6.0),
  ),
  child: MaterialButton(
    onPressed: onPressed,
    child: Text(
      label.toUpperCase(),
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);
///*****************************************************************************
Widget sign({
  required String? label,
  Color iconColor = Colors.blue,
  required IconData? icon,
})=>Padding(
  padding: const EdgeInsets.all(10.0),
  child: Container(
    width: 300.0,
    height: 60.0,
    child: OutlinedButton.icon( // <-- OutlinedButton
      onPressed: () {},
      icon: Icon(
        icon,
        size: 24.0,
        color: iconColor,
      ),
      label: Text('$label',style: TextStyle(color: Colors.black),),
    ),
  ),
);
///*****************************************************************************
Widget buildItem()=>Column(
  children: const [
    CircleAvatar(
      radius: 30.0,
      backgroundImage: NetworkImage(
          'https://s.alicdn.com/@sc04/kf/Hd06f02e959e347c393369b882bcf2d2cr.jpg_280x280.jpg'),
    ),
    Text(
      'Men',
      maxLines: 2,
      style: TextStyle(
        fontSize: 12.0,
      ),
    ),
  ],
);