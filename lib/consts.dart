
import 'package:flutter/material.dart';


const backGroundColor = Color.fromRGBO(0, 0, 0, 1.0);
const blueColor = Color.fromRGBO(0, 149, 246, 1);
const primaryColor = Colors.white;
const secondaryColor = Colors.grey;
const darkGreyColor =  Color.fromRGBO(97, 97, 97, 1);


class PageConst {
  static const String editProfilePage = "editProfilePage";
  static const String updatePostPage = "updatePostPage";
  static const String commentPage = "commentPage";
  static const String signInPage = "signInPage";
  static const String signUpPage = "signUpPage";
  static const String updateCommentPage = "updateCommentPage";
  static const String updateReplayPage = "updateReplayPage";
  static const String postDetailPage = "postDetailPage";
  static const String singleUserProfilePage = "singleUserProfilePage";
  static const String followingPage = "followingPage";
  static const String followersPage = "followersPage";
}
Widget sizeVer(double height) {
  return SizedBox(height: height,);
}

Widget sizeHor(double width) {
  return SizedBox(width: width);
}