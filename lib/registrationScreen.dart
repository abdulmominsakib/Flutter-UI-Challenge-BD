import 'package:flutter/material.dart';
import 'package:registerscreen/style.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // initial values
  Icon defaultIcon = Icon(Icons.remove_red_eye);
  bool obscureText = true;

  // This will update the password eye
  updatePassWordEye() {
    setState(() {
      // It will set the oposite what is in the screen
      obscureText = !obscureText;
      // changing the icon based on obscureText
      if (obscureText == true) {
        defaultIcon = Icon(
          Icons.visibility_off,
          color: Colors.grey,
        );
      } else {
        defaultIcon = Icon(
          Icons.visibility,
          color: Colors.deepPurple,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                child: Image.asset(
                  'assets/register-main.png',
                  alignment: Alignment.center,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Register',
                          style: kHeaderStyle,
                        ),
                      ),
                      SizedBox(height: 20),
                      InputOfForm(
                        hintText: 'Full Name',
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(height: 10),
                      InputOfForm(
                        hintText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 10),
                      InputOfForm(
                        hintText: 'Password',
                        suffixIcon: defaultIcon,
                        onTap: () {
                          updatePassWordEye();
                        },
                        obscureText: obscureText,
                      ),
                      SizedBox(height: 20),
                      FlatButton(
                        onPressed: null,
                        child: SubmitButtonStyle(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
