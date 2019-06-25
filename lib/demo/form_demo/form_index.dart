import 'package:flutter/material.dart';

class FormIndexpage extends StatelessWidget {
  const FormIndexpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text('from'),),
      //重新定义主题
      body: Theme(
        data: ThemeData(
          primaryColor: Colors.black,
        ),
        child: FormDemo(),
      ),
      
    );
  }
}

class FormDemo extends StatefulWidget {
  FormDemo({Key key}) : super(key: key);

  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
 

// final textEditingController = TextEditingController();
final rigesterFormkey = GlobalKey<FormState>();
String username ,password;
bool autovalidate = false;
 @override
  void dispose() {
    
    super.dispose();
  }


  void submitRegisterForm(){
    
    if (rigesterFormkey.currentState.validate()){
      rigesterFormkey.currentState.save();
      debugPrint('username: $username');
      debugPrint('password: $password');
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Registing'),
        )
      );
    }else{
      setState(() {
        autovalidate = true;
      });
    }

  }

  String validateUsername(value){
    if (value.isEmpty){
      return 'Request Username';
    }
    return null;
  }
  String validatePassword(value){
    if (value.isEmpty){
      return 'Request Password';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(16.0),
      child:Form(
        key: rigesterFormkey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.subject),
                labelText: 'UserName',
                helperText: '',
              ),
              onSaved: (value){
                username = value;
              },
              validator: validateUsername,
              autovalidate: autovalidate,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.subject),
                labelText: 'Password',
                helperText: '',
                
              ),
              onSaved: (value){
                password = value;
              },
              validator: validatePassword,
              autovalidate: autovalidate,
            ),
            SizedBox(height: 80,),
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Rigster',
                  style: TextStyle(color: Colors.white),
                ),
                elevation: 0.0,
                onPressed: submitRegisterForm,
              ),
            )

          ],
        )
      ),
    );
  }
}