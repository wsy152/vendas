import 'package:flutter/material.dart';
import 'package:sales_telecom012021/global/components/custom_icon_button.dart';

class MyTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final Widget icon;
  final Widget prefix;
  final IconData iconData;
  final bool senha;
  final bool enabled;
  final TextEditingController ctrl;
  final FormFieldValidator<String> validar;
  final TextInputType tipoTeclado;
  final TextInputAction textInputAction;
  final GestureTapCallback onTapVisibility;
  final FocusNode focusNode;
  final FocusNode nextFocus;
  final double hintfontSize;
  final Color hintcolor;
  final Function(String) onChanged;
  final Color labelcolor;
  final String fontFamily;
  final String errorText;

  MyTextFormField(
    this.label,
    this.hint, {
    this.icon,
    this.prefix,
    this.onChanged,
    this.iconData,
    this.onTapVisibility,
    this.senha = false,
    this.enabled,
    this.ctrl,
    this.validar,
    this.tipoTeclado,
    this.textInputAction,
    this.focusNode,
    this.nextFocus,
    this.hintfontSize,
    this.hintcolor,
    this.labelcolor,
    this.fontFamily,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: ctrl,
      validator: validar,
      onChanged: onChanged,
      keyboardType: tipoTeclado,
      enabled: enabled,
      focusNode: focusNode,
      onFieldSubmitted: (String text) {
        if (nextFocus != null) {
          FocusScope.of(context).requestFocus(nextFocus);
        }
      },
      style: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontFamily: fontFamily,
      ),
      obscureText: senha,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        icon: icon,
        suffix: CustomIconButton(
          radius: 32,
          iconData: iconData,
          onTap: onTapVisibility,
        ),
        errorText: errorText,
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 18,
          color: labelcolor,
          fontFamily: fontFamily,
        ),
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: hintfontSize,
          color: hintcolor,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}
