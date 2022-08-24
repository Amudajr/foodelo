import 'package:flutter/material.dart';
import '../../home/view/home_page.dart';
import '../../utils/constants.dart';
import '../../utils/custom_textbox.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Text(
                'Register',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Constants.primaryColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextBox(
                // controller: passwordController,
                labelText: 'Full Name',
                icon: Icons.man_outlined,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextBox(
                // controller: passwordController,
                labelText: 'Email',
                icon: Icons.email_outlined,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextBox(
                // controller: passwordController,
                labelText: 'Password',
                isPassword: true,
                icon: Icons.lock_outline,
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Constants.primaryColor,
                  fixedSize: const Size(
                    350,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Alrady Have An Account",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
