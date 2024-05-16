import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/presentation/constants/app_colors.dart';
import 'package:newproject/utils/common_widgets/common_text.dart';
import 'package:newproject/utils/common_widgets/common_textfield.dart';
import 'package:newproject/utils/common_widgets/custom_button.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBgColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBgColor,
        iconTheme: IconThemeData(color: AppColors.whiteColor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CommonText(
                  'Choose username',
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.whiteColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: CommonText(
                  'you can always change it later ',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.listGreyColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    color: AppColors.listGreyColor,
                    child: CommonTextField(
                      labelText: 'Username',
                      hintTextColor: AppColors.listGreyColor,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    height: 40.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(color: AppColors.whiteColor, fontWeight: FontWeight.w500, fontSize: 17),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
