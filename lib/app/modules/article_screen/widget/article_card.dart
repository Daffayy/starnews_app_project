import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_project/app/routes/app_pages.dart';

class ArticlesCard extends StatelessWidget {
  ArticlesCard(
  {super.key,
  required this.title,
  required this.description,
  required this.id});

  final String title, description, id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed(Routes.DETAIL_ARTICLE_SCREEN, arguments: {'id' : id});
        print(id);
      },
      child: Scaffold(
        backgroundColor: Color(0xffEDEDED),
        body: Container(
          margin: EdgeInsets.all(24),
          child: ListView(
            children: <Widget>[
              Card(
                color: Color(0xffD9D9D9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      child: Text(
                          title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text(description),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
