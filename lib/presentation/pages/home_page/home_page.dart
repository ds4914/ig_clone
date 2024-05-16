import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/utils/common_widgets/common_text.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black26,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Instagram",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.chat_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ClipOval(
                              child: CircleAvatar(
                                child: Image.asset('assets/ig_logo.jpg'),
                                radius: 40,
                              ),
                            ),
                            CommonText(
                              'data',
                            )
                          ],
                        );
                      }),
                ),
                SizedBox(
                  width: double.infinity,
                  // height: MediaQuery.of(context).size.height * 0.75.h,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      ClipOval(
                                        child: CircleAvatar(
                                          child: Image.asset('assets/ig_logo.jpg'),
                                          radius: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      CommonText(
                                        'suthar_dinesh_19',
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              IntrinsicHeight(
                                child: Image.asset('assets/ig_logo.jpg'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CommonIcon(
                                        Icons.favorite_border_outlined,
                                      ),
                                      CommonIcon(
                                        Icons.mode_comment_outlined,
                                      ),
                                      CommonIcon(
                                        Icons.share,
                                      )
                                    ],
                                  ),
                                  CommonIcon(Icons.save)
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              CommonText('Liked by random_boy and 122 others'),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  CommonText(
                                    'suthar_dinesh_19',
                                    fontWeight: FontWeight.w600,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  CommonText('captions'),
                                ],
                              ),
                              GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                        enableDrag: true,
                                        backgroundColor: Colors.black,
                                        context: context,
                                        builder: (context) {
                                          return SingleChildScrollView(
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 10),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Container(
                                                      height: 5,
                                                      width: 100,
                                                      decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(10.r))),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      SizedBox(
                                                        width: 40,
                                                      ),
                                                      CommonText('Comments'),
                                                      CommonIcon(Icons.more_vert)
                                                    ],
                                                  ),
                                                  ListView.builder(
                                                      shrinkWrap: true,
                                                      itemCount: 2,
                                                      itemBuilder: (context, index) {
                                                        return Row(
                                                          children: [
                                                            ClipOval(
                                                              child: CircleAvatar(
                                                                child: Image.asset('assets/ig_logo.jpg'),
                                                                radius: 20.r,
                                                              ),
                                                            ),
                                                            Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                CommonText("commentor's_name"),
                                                                SizedBox(
                                                                    width: MediaQuery.of(context).size.width * 0.70,
                                                                    child: CommonText('This is a Comment')),
                                                              ],
                                                            ),
                                                            CommonIcon(
                                                              Icons.favorite_border_outlined,
                                                              size: 18,
                                                            )
                                                          ],
                                                        );
                                                      }),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child: CommonText(
                                    'view all 13 comments',
                                    textColor: Colors.white60,
                                  )),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
