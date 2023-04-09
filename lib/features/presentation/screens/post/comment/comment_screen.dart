
import 'package:flutter/material.dart';
import 'package:instagram_clone_app/features/presentation/widgets/form_container_widget.dart';

import '../../../../../consts.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({Key? key}) : super(key: key);

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  bool _isUserReplaying = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        leading: BackButton(
          onPressed: () => Navigator.pop(context),),
        title: const Text('Comments', style: TextStyle(color: primaryColor),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      shape: BoxShape.circle
                  ),
                ),
                sizeHor(10),
                const Text('Username',style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 15),),
              ],
            ),
            sizeVer(10),
            const Text('This is very',style: TextStyle(color: primaryColor),),
            sizeVer(10),
            Divider(
              color: secondaryColor,
            ),
            sizeVer(10),
            Expanded(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          shape: BoxShape.circle
                      ),
                    ),
                    sizeHor(10),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Username',style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
                                sizeHor(10),
                                Icon(Icons.favorite_outline,size: 20,color: darkGreyColor,)
                              ],
                            ),
                            sizeVer(4),
                            Text('This is comment',style: TextStyle(color: primaryColor),),
                            sizeVer(4),
                            Row(
                              children: [
                                Text('08/07/2023',style: TextStyle(color: darkGreyColor,fontSize: 12),),
                                sizeHor(15),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      _isUserReplaying = !_isUserReplaying;
                                    });
                                  },
                                  child: Text('Replay',style: TextStyle(color: darkGreyColor,fontSize: 12),)),
                                sizeHor(15),
                                Text('View replays',style: TextStyle(color: darkGreyColor,fontSize: 12),),

                              ],
                            ),
                            _isUserReplaying == true ? sizeVer(10) : sizeVer(0),
                            if (_isUserReplaying == true) Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                FormContainerWidget(hintText: 'Post your replay',),
                                sizeVer(10),
                                const Text(
                                  'Post',
                                  style: TextStyle(color: blueColor),
                                ),
                              ],
                            ) else const SizedBox(height: 0,width: 0,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            _commentSection()
          ],
        ),
      ),
    );
  }

  _commentSection(){
    return Container(
      width: double.infinity,
      height: 55,
      color: Colors.grey[800],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                //child: profileWidget(imageUrl: currentUser.profileUrl),
              ),
            ),
            sizeHor(10),
            Expanded(
                child: TextFormField(
                  //controller: _descriptionController,
                  style: TextStyle(color: primaryColor),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Post your comment...",
                      hintStyle: TextStyle(color: secondaryColor)),
                )),
            GestureDetector(
                onTap: () {
                  //_createComment(currentUser);
                },
                child: Text(
                  "Post",
                  style: TextStyle(fontSize: 15, color: blueColor),
                ))
          ],
        ),
      ),
    );
  }
}
