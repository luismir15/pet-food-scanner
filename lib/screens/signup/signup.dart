import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_food_scanner/screens/common_widgets/theme_button.dart';
import 'package:pet_food_scanner/screens/common_widgets/theme_textfield.dart';
import 'package:pet_food_scanner/screens/signup/widget/signup_footer.dart';
import 'package:pet_food_scanner/screens/signup/widget/signup_text.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController _usernameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
        title: SvgPicture.asset(
          "assets/images/logo.svg",
          height: 200.0,
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              Icons.align_horizontal_right_outlined,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SignUpText(),
            ThemeTextField(
                fieldName: "Username", controllerName: _usernameController),
            ThemeTextField(
                fieldName: "Email", controllerName: _emailController),
            ThemeTextField(
                fieldName: "Password", controllerName: _passwordController),
            ThemeTextField(
                fieldName: "Confirm Password",
                controllerName: _confirmPasswordController),
            ThemeButton(
              name: "Login",
              onPressed: () {},
            ),
            const SignUpFooter(),
          ],
        ),
      ),
    );
  }
}
