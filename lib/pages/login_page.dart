import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _tLogin = TextEditingController();

  final _tSenha = TextEditingController();

  final _focusSenha = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carros"),
      ),
      body: _body()
    );
  }

  _body() {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            _text(
              "Login",
              "Digite o login",
              controller: _tLogin,
              validator: _validateLogin,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              nextFocus: _focusSenha
            ),
            SizedBox(height: 10,),
            _text(
              "Senha", 
              "Digite a senha", 
              password: true, 
              controller: _tSenha,
              validator: _validateSenha,
              keyboardType: TextInputType.number,
              focusNode: _focusSenha
            ),
            SizedBox(height: 20,),
            _button("Login", _onClickLogin),
          ],
        ),
      ),
    );
  }

  String _validateSenha(String text) {
    if (text.isEmpty) {
      return "Digite a senha";
    }
    if(text.length < 3) {
      return "A senha tem que ter mais de 3 caracteres.";
    }
    return null;
  }

  String _validateLogin(String text) {
    if (text.isEmpty) {
      return "Digite o login";
    }
    return null;
  }

  _text(
    String label, 
    String hint, { 
    bool password = false, 
    TextEditingController controller, 
    FormFieldValidator<String> validator, 
    TextInputType keyboardType,
    TextInputAction textInputAction,
    FocusNode focusNode,
    FocusNode nextFocus,
    }
  ) {
    return TextFormField(
      controller: controller,
      obscureText: password,
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      focusNode: focusNode,
      onFieldSubmitted: (String text) {
        if (nextFocus != null) {
        FocusScope.of(context).requestFocus(nextFocus);
        }
      },
      style: TextStyle(
        fontSize: 25,
        color: Colors.blue
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 25, 
          color: Colors.grey
        ),
        hintText: hint,
        hintStyle: TextStyle (
          fontSize: 16
        )
      ),
    );
  }

  _button(String text, Function onPressed) {
    return Container(
      height: 46,
      child: RaisedButton(
        onPressed: onPressed,
        color: Colors.blue,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white, 
            fontSize: 22
          ),
        ),
      ),
    );
  }

  void _onClickLogin() {

    bool formOk = _formKey.currentState.validate();
    if (!formOk) {
      return;
    }

    String login = _tLogin.text;
    String senha = _tSenha.text;

    print("Login: $login, Senha: $senha");
  }
}