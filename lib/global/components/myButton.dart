import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function click;
  final bool loading;
  final double fontSize;
  final Color color;
  final String fontFamily;
  final Color backgroundcolor;
  final double height;
  MyButton(this.text, this.click,
      {this.fontSize,
      this.loading,
      this.color,
      this.fontFamily,
      this.backgroundcolor,
      this.height});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.07,
      width: size.width * 0.75,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 5,
        color: Colors.purple,
        child: loading
            ? Center(
                child: CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xff009cde))))
            : Text(
                text,
                style: TextStyle(
                  color: color,
                  fontSize: fontSize,
                  fontFamily: fontFamily,
                ),
              ),
        onPressed: click,
      ),
    );
  }
}
