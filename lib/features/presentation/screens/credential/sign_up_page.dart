import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_app/features/presentation/widgets/button_container_widget.dart';
import 'package:instagram_clone_app/features/presentation/widgets/form_container_widget.dart';

import '../../../../consts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Center(
                  child: SvgPicture.asset(
                'assets/ic_instagram.svg',
                color: primaryColor,
              )),
              sizeVer(15),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Image.asset('assets/profile_default.png'),
                    ),
                    Positioned(
                      right: -10,
                        bottom: -15,
                        child: IconButton(
                           onPressed: () {  },
                          icon: Icon(Icons.add_a_photo,color: blueColor,),
                    ))
                  ],
                ),
              ),
              sizeVer(30),
              const FormContainerWidget(
                hintText: "Username",
              ),
              sizeVer(15),
              const FormContainerWidget(
                hintText: "Email",
              ),
              sizeVer(15),
              const FormContainerWidget(
                hintText: "Password",
                isPasswordField: true,
              ),
              sizeVer(15),
              const FormContainerWidget(
                hintText: "Bio",
              ),
              sizeVer(15),
              ButtonContainerWidget(
                color: blueColor,
                text: 'Sign In',
                onTapListener: () {},
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              const Divider(
                color: secondaryColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: primaryColor),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(context, PageConst.signInPage,(route) =>false);
                    },
                    child: const Text(
                      "Sign In.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: primaryColor),
                    ),
                  ),
                ],
              ),
            ])));
  }
}
