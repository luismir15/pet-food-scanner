import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Transform.flip(
            flipY: true,
            child: SvgPicture.asset(
              "assets/images/sausage.svg",
              colorFilter: ColorFilter.mode(
                  Theme.of(context).primaryColor, BlendMode.srcIn),
              height: 100,
            ),
          ),
          const Positioned(
            bottom: 40,
            right: 50,
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
