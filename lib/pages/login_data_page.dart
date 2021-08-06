import 'package:flutter/material.dart';
import 'package:login/atoms/atom_column_empty.dart';
import 'package:login/atoms/atom_text.dart';
import 'package:login/constants/constants_color.dart';
import 'package:login/constants/constants_text.dart';
import 'package:login/models/DataUsers.dart';
import 'package:login/controllers/LoginHelper.dart';
import 'package:login/molecules/molecule_centerCircularProgressIndicator.dart';

class LoginDataPage extends StatefulWidget {
  LoginDataPage({Key key, this.userId, this.password, this.language})
      : super(key: key);

  final userId;
  final password;
  final language;

  @override
  _LoginDataPageState createState() => _LoginDataPageState();
}

class _LoginDataPageState extends State<LoginDataPage> {
  LoginHelper loginHelper = LoginHelper();
  Future responseToken;

  @override
  void initState() {
    super.initState();
    responseToken =
        loginHelper.getLogin(widget.userId, widget.password, widget.language);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: responseToken,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return _cardDataResponse(snapshot.data);
        } else if (snapshot.hasError) {
          return Text("Error");
        }
        return CircularProgressMolecule();
      },
    );
  }

  ColumnEmptyAtom _cardDataResponse(DataUsers dataUsers) {
    if (!dataUsers.isError) {
      return ColumnEmptyAtom(children: <Widget>[
        Container(
            height: 100,
            width: 550,
            child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: SimpleTextAtom(
                    align: TextAlign.center,
                    text:
                        (dataUsers.getGreetings + "\n" + dataUsers.getUsername),
                    size: 20.0,
                    weight: FontWeight.bold,
                    family: TEXT_FONT_FAMILY,
                    style: FontStyle.normal,
                    colors: colorSimpleTextRed),
                shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 5.0,
                margin: EdgeInsets.all(12.0))),
        Container(
          height: 600,
          width: 550,
          child: new Image.asset(
            'assets/images/hello.png',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
        )
      ]);
    } else {
      return ColumnEmptyAtom(children: <Widget>[
        Container(
            height: 100,
            width: 550,
            child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: SimpleTextAtom(
                    align: TextAlign.center,
                    text:
                        (dataUsers.getGreetings + "\n" + dataUsers.getUsername),
                    size: 20.0,
                    weight: FontWeight.bold,
                    family: TEXT_FONT_FAMILY,
                    style: FontStyle.normal,
                    colors: colorSimpleTextRed),
                shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 5.0,
                margin: EdgeInsets.all(12.0)))
      ]);
    }
  }
}
