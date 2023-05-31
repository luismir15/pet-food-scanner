import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:pet_food_scanner/screens/common_widgets/theme_button.dart';
import 'package:pet_food_scanner/screens/common_widgets/theme_textfield.dart';
import 'package:pet_food_scanner/screens/signin/widget/login_footer.dart';
import 'package:pet_food_scanner/screens/signin/widget/login_text.dart';
import 'package:pet_food_scanner/screens/signup/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const LoginText(),
              const SizedBox(
                height: 20.0,
              ),
              ThemeTextField(
                  fieldName: "Username", controllerName: _usernameController),
              const SizedBox(
                height: 20.0,
              ),
              ThemeTextField(
                  fieldName: "Password", controllerName: _passwordController),
              const SizedBox(
                height: 40.0,
              ),
              ThemeButton(
                name: "Login",
                onPressed: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              const LoginFooter(),
              Lottie.asset("assets/images/login_animation.json", height: 200),
            ],
          ),
        ),
      ),
    );
  }
}
