import 'package:flutter/material.dart';
import 'package:sales_telecom012021/app/login/model/usuario_model.dart';
import 'package:sales_telecom012021/global/componets/avatar.dart';
import 'package:sales_telecom012021/global/config/palleta_color.dart';
import 'package:sales_telecom012021/global/config/styler.dart';

SliverToBoxAdapter buildHeader(double screenHeight, [UsuariosModel user]) {
  Future<UsuariosModel> future = UsuariosModel.get();
  return SliverToBoxAdapter(
    child: Container(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
      decoration: BoxDecoration(
        color: Palette.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              FutureBuilder<UsuariosModel>(
                future: future,
                builder: (context, snapshot) {
                  UsuariosModel user = snapshot.data;
                  return user != null ? avatar(user) : Container();
                },
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   user.payload.nome,
                    //   style: TextStyle(fontSize: 20, color: Colors.white),
                    // ),
                    SizedBox(
                      height: 15,
                    ),
                    //Text('${user.payload.cargo}'),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: screenHeight * 0.03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Are you feeling sick?',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                'If you feel sick with any COVID-19 symptoms, please call or text us immediately for help',
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton.icon(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 20.0,
                    ),
                    onPressed: () {},
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    icon: const Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Call Now',
                      style: Styles.buttonTextStyle,
                    ),
                    textColor: Colors.white,
                  ),
                  FlatButton.icon(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                    onPressed: () {},
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    icon: const Icon(
                      Icons.chat_bubble,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Send SMS',
                      style: Styles.buttonTextStyle,
                    ),
                    textColor: Colors.white,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}
