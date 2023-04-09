import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_app/features/presentation/screens/post/comment/comment_screen.dart';

import '../../../../consts.dart';
import '../post/update_post_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        appBar: AppBar(
          backgroundColor: backGroundColor,
          title: SvgPicture.asset(
            'assets/ic_instagram.svg',
            color: primaryColor,
            height: 32,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                MaterialCommunityIcons.facebook_messenger,
                color: primaryColor,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                            color: secondaryColor, shape: BoxShape.circle),
                      ),
                      sizeHor(10),
                      const Text(
                        'Username',
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      _openBottomModalSheet(context);
                    },
                    child: const Icon(
                      Icons.more_vert,
                      color: primaryColor,
                    ),
                  )
                ],
              ),
              sizeVer(10),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.30,
                color: secondaryColor,
              ),
              sizeVer(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.favorite_border_outlined,
                        color: primaryColor,
                      ),
                      sizeHor(10),
                      GestureDetector(
                          onTap: () => Navigator.pushNamed(context, PageConst.commentPage),
                          child: const Icon(
                            Feather.message_circle,
                            color: primaryColor,
                          )),
                      sizeHor(10),
                      const Icon(
                        Feather.send,
                        color: primaryColor,
                      ),
                    ],
                  ),
                  Icon(Icons.bookmark_border)
                ],
              ),
              sizeVer(10),
              const Text(
                '32 likes',
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
              ),
              sizeVer(10),
              Row(
                children: [
                  const Text(
                    'Username',
                    style: TextStyle(
                        color: primaryColor, fontWeight: FontWeight.bold),
                  ),
                  sizeHor(10),
                  const Text(
                    'Some description',
                    style: TextStyle(color: primaryColor),
                  )
                ],
              ),
              sizeVer(10),
              const Text(
                'View all 10 comments',
                style: TextStyle(color: darkGreyColor),
              ),
              sizeVer(10),
              const Text(
                '08/05/2022',
                style: TextStyle(color: darkGreyColor),
              ),
            ],
          ),
        ));
  }
  _openBottomModalSheet(BuildContext context){
    return showModalBottomSheet(context: context, builder: (context){
      return Container(
        height: 150,
        decoration: BoxDecoration(color: backGroundColor.withOpacity(.8)),
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "More Options",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18, color: primaryColor),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(
                  thickness: 1,
                  color: secondaryColor,
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: const Text(
                    "Delete Post",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 16, color: primaryColor),
                  ),
                ),
                sizeVer(7),
                const Divider(
                  thickness: 1,
                  color: secondaryColor,
                ),
                sizeVer(7),
                 Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: InkWell(
                    /* onTap: () {
                      BlocProvider.of<AuthCubit>(context).loggedOut();
                      Navigator.pushNamedAndRemoveUntil(
                          context, PageConst.signInPage, (route) => false);
                    },*/
                    onTap: (){
                      Navigator.pushNamed(context, PageConst.updatePostPage);
                    },
                    child: const Text(
                      "Update Post",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16, color: primaryColor),
                    ),
                  ),
                ),
                sizeVer(7),
              ],
            ),
          ),
        ),
      );
    });
  }
}
