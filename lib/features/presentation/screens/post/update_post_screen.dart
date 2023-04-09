import 'package:flutter/material.dart';
import 'package:instagram_clone_app/consts.dart';
import 'package:instagram_clone_app/features/presentation/screens/profile/widgets/profile_form_widget.dart';

class UpdatePostScreen extends StatelessWidget {
  const UpdatePostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: Text('Edit Post'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right:10),
            child: Icon(Icons.done,color: blueColor,),
          )
        ],
       // leading: Icon(Icons.cance),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: secondaryColor,
                shape: BoxShape.circle
              ),
            ),
            sizeVer(10),
            const Text(
              'Username',
              style: TextStyle(
                  color: primaryColor,fontSize: 16, fontWeight: FontWeight.bold),
            ),
            sizeVer(10),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: secondaryColor,
              ),
            ),
            sizeVer(10),
            ProfileFormWidget(title: 'Description',)
          ],
        ),
      ),
    );
  }
}
