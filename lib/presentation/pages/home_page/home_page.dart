import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/utils/common_widgets/common_text.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
                      style: TextStyle(color: Colors.white, fontSize: 22.sp),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 30.sp,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Icon(
                          Icons.chat_outlined,
                          color: Colors.white,
                          size: 30.sp,
                        ),
                        SizedBox(
                          width: 20.w,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity.w,
                  height: MediaQuery.of(context).size.height * 0.15.h,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ClipOval(
                                child: CircleAvatar(
                                  child: Image.asset('assets/ig_logo.jpg'),
                                  radius: 40.r,
                                ),
                              ),
                              CommonText(
                                'data',
                              )
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  width: double.infinity.w,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      ClipOval(
                                        child: CircleAvatar(
                                          child:
                                              Image.asset('assets/ig_logo.jpg'),
                                          radius: 20.r,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
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
                                height: 5.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                height: 5.h,
                              ),
                              CommonText('Liked by random_boy and 122 others'),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  CommonText(
                                    'suthar_dinesh_19',
                                    fontWeight: FontWeight.w600,
                                  ),
                                  SizedBox(
                                    width: 5.w,
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
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.w),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  Container(
                                                      height: 5.h,
                                                      width: 100.w,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white24,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.r))),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      SizedBox(
                                                        width: 40.w,
                                                      ),
                                                      CommonText('Comments'),
                                                      CommonIcon(
                                                          Icons.more_vert)
                                                    ],
                                                  ),
                                                  ListView.builder(
                                                      shrinkWrap: true,
                                                      itemCount: 2,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Row(
                                                          children: [
                                                            ClipOval(
                                                              child:
                                                                  CircleAvatar(
                                                                child: Image.asset(
                                                                    'assets/ig_logo.jpg'),
                                                                radius: 20.r,
                                                              ),
                                                            ),
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CommonText(
                                                                    "commentor's_name"),
                                                                SizedBox(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.70.w,
                                                                    child: CommonText(
                                                                        'This is a Comment')),
                                                              ],
                                                            ),
                                                            CommonIcon(
                                                              Icons
                                                                  .favorite_border_outlined,
                                                              size: 18.sp,
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
