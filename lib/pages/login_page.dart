import 'package:build_resume/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controller/user_controller.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({Key? key}) : super(key: key);
  final LoginController loginController = Get.put(LoginController());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Image.network(
              'https://www.pngitem.com/pimgs/m/184-1841246_resume-clip-art-contemporary-gallery-clipart-of-resumes.png',
            ),
            Transform.translate(
              offset: Offset(0, -50),
              child: Container(
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text(
                        'Build Resume',
                        style:
                            TextStyle(fontSize: 25, color: Color(0xff72cec1)),
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Get Job Faster',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w200,
                              fontSize: 20),
                        )),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          suffixIcon: Icon(
                            Icons.check_circle,
                            color: Color(0xff72cec1),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Icon(
                            Icons.check_circle,
                            color: Color(0xff72cec1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    MaterialButton(
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 18),
                      ),
                      splashColor: Color(0xff72cec1),
                      color: Color(0xff72cec1),
                      textColor: Colors.white,
                      colorBrightness: Brightness.light,
                      textTheme: ButtonTextTheme.accent,
                      elevation: 0,
                      highlightElevation: 2,
                      shape: StadiumBorder(),
                      height: MediaQuery.of(context).size.height * 0.1 - 40,
                      minWidth: 350,
                      onPressed: () {
                        loginController.signInWithGoogle(context: context);
                      },
                    ),
                    TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.grey.shade200),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff72cec1),
                        ),
                      ),
                    ),
                    Text(
                      'Or Login with',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff72cec1),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 80.0, top: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(5)),
                              child: TextButton(
                                style: ButtonStyle(
                                  overlayColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.grey.shade200),
                                ),
                                onPressed: () {
                                  loginController.login(context);
                                },
                                child: Image.network(
                                  'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png',
                                  height: 30,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(5)),
                              child: TextButton(
                                  style: ButtonStyle(
                                    overlayColor:
                                        MaterialStateColor.resolveWith(
                                            (states) => Colors.grey.shade200),
                                  ),
                                  onPressed: () {},
                                  child: Image.network(
                                    'https://www.freepnglogos.com/uploads/mac-cosmetic-png-logo/apple-mac-cosmetic-png-logo-8.png',
                                    height: 30,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(5)),
                              child: TextButton(
                                  style: ButtonStyle(
                                    overlayColor:
                                        MaterialStateColor.resolveWith(
                                            (states) => Colors.grey.shade200),
                                  ),
                                  onPressed: () {},
                                  child: Image.network(
                                    'https://www.freepnglogos.com/uploads/aqua-blue-f-facebook-logo-png-22.png',
                                    height: 30,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
