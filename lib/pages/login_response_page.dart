import 'package:flutter/material.dart';
import 'package:login/atoms/atom_column_empty.dart';
import 'package:login/atoms/atom_text.dart';
import 'package:login/constants/constants_color.dart';
import 'package:login/constants/constants_number.dart';
import 'package:login/constants/constants_text.dart';
import 'package:login/pages/login_data_page.dart';
import 'package:login/pages/login_page.dart';
import 'package:login/templates/template_button.dart';

class LoginResponsePage extends StatefulWidget {
  LoginResponsePage({Key key, this.userId, this.password, this.language})
      : super(key: key);
  final userId;
  final password;
  final language;

  @override
  _LoginResponsePageState createState() => _LoginResponsePageState();
}

class _LoginResponsePageState extends State<LoginResponsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SimpleTextAtom(
            align: TextAlign.left,
            text: TEXT_LABEL_TITLE,
            size: SIZE_BOLD_TEXT,
            weight: FontWeight.bold,
            family: TEXT_FONT_FAMILY,
            style: FontStyle.normal,
            colors: colorSimpleTextwhite),
      ),
      backgroundColor: Colors.white,
      body: _buildBody(),
      //bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBody() {
    return ColumnEmptyAtom(children: <Widget>[
      LoginDataPage(
          userId: widget.userId,
          password: widget.password,
          language: widget.language),
      ButtonTemplate(
        textButton: TEXT_LABEL_BUTTON_ACEPTAR,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        radious: RADIUS_OPTIONS,
      ),
    ]);
  }
}
