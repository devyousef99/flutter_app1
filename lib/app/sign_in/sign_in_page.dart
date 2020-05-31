import 'package:flutter/material.dart';
import 'package:flutterapp1/common_widget/CustomRaisedButton.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Time Tracker'),
          //Elevation is for the shadow under the app bar
          elevation: 10.0),
      body: buildContainer(),
      backgroundColor: Colors.grey[200],
    );
  }
  Widget buildContainer() {
    return Padding(
      //Every Container Must have A chiled
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //The Column & Row both must have childern <Widgets>
        children: <Widget>[
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          RaisedButton(
            child: Text(
              'Sign In With Google',
              style: TextStyle(fontSize: 15.0, color: Colors.black54),
            ),
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            onPressed: _signInWithGoogle,
          ),
          SizedBox(height: 8.0),
          CustomRaisedButton(
            child: Text(
              'Sign In With Facebook',
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
            color: Colors.blue,
            borderRadius: 8.0,
            onPressed: (){},
          ),
          CustomRaisedButton(
            child: Text(
              'Sign In With Email',
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
            color: Colors.green,
            borderRadius: 8.0,
            onPressed: (){},
          ),
          Text(
            'Or',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          RaisedButton(
            child: Text(
              'Sign In As Guest',
              style: TextStyle(fontSize: 15.0, color: Colors.black54),
            ),
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            onPressed: _signInWithGoogle,
          )
        ],
      ),
    );
  }

  void _signInWithGoogle() {}
}
