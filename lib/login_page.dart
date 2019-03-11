import 'package:flutter/material.dart';
import 'package:validate/validate.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final Map obj = {
    'login':    '',
    'password': ''
  };

  // -------------------------------

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null ,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.no_encryption),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (ctx) => HomePage() ));
        },
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage( 
            image: AssetImage('assets/floresta.jpg'),
            alignment: Alignment.topCenter,
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(40),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only( bottom: 6 ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Login', 
                        hintStyle: TextStyle(letterSpacing: 2 ),
                        contentPadding: EdgeInsets.symmetric( vertical: 10, horizontal: 40 ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide( color: Colors.white ),
                          borderRadius: const BorderRadius.only( 
                            topLeft:  Radius.circular(100),
                            topRight: Radius.circular(100)
                          )
                        ) 
                      ),
                      cursorColor: Theme.of(context).accentColor,
                      onSaved: (String valor) => this.obj['login'] = valor ,
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration( 
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Password', 
                      hintStyle: TextStyle(letterSpacing: 2),
                      contentPadding: EdgeInsets.symmetric( vertical: 10, horizontal: 40 ),
                      border: OutlineInputBorder( borderRadius: const BorderRadius.all(Radius.circular(0)) ) 
                    ),
                    cursorColor: Theme.of(context).accentColor,
                    obscureText: true,
                    onSaved: (String valor) => this.obj['password'] = valor ,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(minWidth: double.infinity),
                    child: RaisedButton(
                      elevation: 0,
                      child: Text('Entrar'),
                      color: Theme.of(context).primaryColor,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.only( 
                          bottomLeft:  Radius.circular(100),
                          bottomRight: Radius.circular(100)
                        )
                      ),
                      textColor: Colors.white,
                      onPressed: () {
                        _formKey.currentState.save();
                        print('Enviar form: { login: ${obj["login"]}, password: ${obj["password"]} }');
                        if( obj["login"] == 'root' && obj["password"] == 'root' ) {
                          _formKey.currentState.reset();
                          Navigator.push(context, MaterialPageRoute(builder: (ctx) => HomePage() ));
                        } else {

                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }

}

