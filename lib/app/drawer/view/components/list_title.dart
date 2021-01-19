import 'package:flutter/material.dart';

class ListOpcoes extends StatelessWidget {
  final String textTitle;
  final String textsubtitle;
  //final Widget icon;
  final Widget leading;

  ListOpcoes(this.textTitle, this.textsubtitle, this.leading);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        textTitle,
        style: TextStyle(fontSize: 12),
      ),
      subtitle: Text(
        textsubtitle,
        style: TextStyle(fontSize: 10.5),
      ),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        print("Item 1");
        Navigator.pop(context);
      },
    );
  }
}
