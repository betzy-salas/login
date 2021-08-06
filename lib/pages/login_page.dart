import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login/atoms/atom_text.dart';
import 'package:login/constants/constants_color.dart';
import 'package:login/constants/constants_number.dart';
import 'package:login/constants/constants_text.dart';
import 'package:login/controllers/LoginHelper.dart';
import 'package:login/molecules/molecule_ContainerRow.dart';
import 'package:login/molecules/molecule_containerTextFormField.dart';
import 'package:login/objects/TextFormFieldProperties.dart';
import 'package:login/pages/login_response_page.dart';
import 'package:login/templates/template_button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> keyForm = new GlobalKey();
  LoginHelper nequiTransaction = LoginHelper();

  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController languageController = TextEditingController();
  Widget _buildBody() {
    return Container(
      child: Form(
          key: keyForm,
          child: ListView(
            padding: EdgeInsets.all(20.0),
            children: _listChildren(),
          )),
    );
  }

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
        body: Center(
          child: _buildBody(),
        ));
  }

  List<String> _listLanguage = ["Spanish", "English", "French", "Catalán"];

  List<Widget> _listChildren() {
    List<Widget> _listChildren = [];

    _listChildren.add(ContainerTextFormFieldMolecule(
      height: HEIGHT_CONTAINER,
      propertiesTextFormField: new TextFormFieldProperties(
          userController,
          InputDecoration(
              hintText: TEXT_LABEL_TEXT_USER,
              labelText: TEXT_LABEL_TEXT_USER,
              icon: new Icon(Icons.account_box_rounded)),
          _validateUserId,
          TextInputType.name,
          false,
          null),
    ));
    _listChildren.add(ContainerTextFormFieldMolecule(
      height: HEIGHT_CONTAINER,
      propertiesTextFormField: new TextFormFieldProperties(
          passwordController,
          InputDecoration(
              hintText: TEXT_LABEL_TEXT_PASSWORD,
              labelText: TEXT_LABEL_TEXT_PASSWORD,
              icon: new Icon(Icons.lock_open_rounded)),
          _validatePassword,
          TextInputType.text,
          true,
          null),
    ));
    _listChildren.add(ContainerTextFormFieldMolecule(
      height: HEIGHT_CONTAINER,
      propertiesTextFormField: new TextFormFieldProperties(
          languageController,
          InputDecoration(
              hintText: TEXT_LABEL_DROPDOWN,
              labelText: TEXT_LABEL_DROPDOWN,
              icon: new Icon(Icons.language_rounded)),
          _validateLanguage,
          TextInputType.text,
          false,
          null),
    ));
    /*_listChildren.add(ContainerDropDrownMolecule(
      height: HEIGHT_CONTAINER,
      listValues: _listLanguage,
      hintText: TEXT_LABEL_DROPDOWN,
      labelText: TEXT_LABEL_DROPDOWN,
      itemsVisibleInDropdown: ITEMS_VISIBLE_DROP_DOWN,
    ));*/
    _listChildren.add(
      ContainerRowMolecule(
          alignment: null,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _listRowChildren()),
    );

    return _listChildren;
  }

  List<Widget> _listRowChildren() {
    List<Widget> _listRowChildren = [];
    _listRowChildren.add(ButtonTemplate(
      textButton: TEXT_LABEL_BUTTON_ACEPTAR,
      onPressed: () {
        _save();
      },
      radious: RADIUS_OPTIONS,
    ));
    _listRowChildren.add(ButtonTemplate(
      textButton: TEXT_LABEL_BUTTON_CANCELAR,
      onPressed: () {
        _reset();
      },
      radious: RADIUS_OPTIONS,
    ));

    return _listRowChildren;
  }

  String _validateUserId(String value) {
    if (_isEmpty(value)) return "El usuario debe ser ingresado";

    return null;
  }

  String _validatePassword(String value) {
    if (_isEmpty(value)) return "El password debe ser ingresado";

    return null;
  }

  String _validateLanguage(String value) {
    if (_isEmpty(value))
      return "El Lenguaje debe ser ingresado";
    else {
      if (!_listLanguage.contains(value)) {
        print(_listLanguage);
        return "Lenguajes permitidos" + _listLanguage.toString();
      }
    }

    return null;
  }

  bool _isEmpty(String value) {
    return (value.isEmpty || value.length == 0);
  }

  _save() {
    if (keyForm.currentState.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginResponsePage(
                userId: userController.text,
                password: passwordController.text,
                language: languageController.text)),
      );
    }
  }

  _reset() {
    keyForm.currentState.reset();
  }
}
