
import 'package:flutter/material.dart';
import 'package:instagram_clone_app/consts.dart';
import 'package:instagram_clone_app/features/presentation/screens/credential/sign_in_page.dart';
import 'package:instagram_clone_app/features/presentation/screens/credential/sign_up_page.dart';
import 'package:instagram_clone_app/features/presentation/screens/post/comment/comment_screen.dart';
import 'package:instagram_clone_app/features/presentation/screens/post/update_post_screen.dart';
import 'package:instagram_clone_app/features/presentation/screens/profile/edit_profile_screen.dart';

class OnGenerateRoute{
  static Route<dynamic>? route(RouteSettings settings){
    final args = settings.arguments;

    switch(settings.name){
      case PageConst.editProfilePage: {
        return routeBuilder(EditProfileScreen());
      }
      case PageConst.updatePostPage: {
          return routeBuilder(UpdatePostScreen());
      }
      case PageConst.commentPage: {
          return routeBuilder(CommentScreen());
      }
      case PageConst.signInPage: {
          return routeBuilder(SignInPage());
      }
      case PageConst.signUpPage: {
          return routeBuilder(SignUpPage());
      }
      case PageConst.signInPage: {
          return routeBuilder(SignInPage());
      }
      default: {
          NoPageFound();
      }
    }
  }
}

dynamic routeBuilder(Widget widget){
  return MaterialPageRoute(builder: (context) => widget);
}
class NoPageFound extends StatelessWidget {
  const NoPageFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page not found"),
      ),
      body: Center(child: Text("Page not found"),),
    );
  }
}

