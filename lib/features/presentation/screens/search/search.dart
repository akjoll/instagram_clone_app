import 'package:flutter/material.dart';
import 'package:instagram_clone_app/features/presentation/screens/search/widgets/search_widget.dart';
import '../../../../consts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backGroundColor,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchWidget(controller: _searchController),
                  sizeVer(10),
                  GridView.builder(
                    itemCount: 32,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5
                    ),
                    itemBuilder: (context,index){
                      return Container(
                        width: 100,
                        height: 100,
                        color: secondaryColor,
                      );
                  })
                ],
              ),
            ),
          )
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }
}
