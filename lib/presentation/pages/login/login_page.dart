import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/data/repositories/login_repo.dart';
import 'package:newproject/presentation/constants/app_colors.dart';
import 'package:newproject/utils/common_widgets/common_textfield.dart';
import 'package:newproject/utils/common_widgets/custom_button.dart';

import '../../constants/strings.dart';
import 'bloc/password_bloc/password_bloc.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  PasswordBloc passwordBloc = PasswordBloc()
    ..add(OnTapEvent(onTap: false));

  @override
  Widget build(BuildContext context) {
    print('object');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primaryBgColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBgColor,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'English (UK)',
                    style: TextStyle(color: Colors.white54),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/ig_logo.jpg',
                  scale: 13,
                ),
                SizedBox(
                  height: 50.h,
                ),
                CommonTextField(
                  controller: usernameController,
                  labelText: 'Username,email or Phone number',
                ),
                SizedBox(
                  height: 10.h,
                ),
                BlocProvider(
                  create: (context) => PasswordBloc()..add(OnTapEvent(onTap: false)),
                  child: BlocBuilder<PasswordBloc, PasswordState>(
                    builder: (context, state) {
                      if (state is PasswordLoadedState) {
                        print(state);
                        return CommonTextField(
                          labelText: 'Password',
                          controller: passwordController,
                          obscureText: state.onTap,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              BlocProvider.of<PasswordBloc>(context).add(OnTapEvent(onTap: state.onTap));
                            },
                            child: Icon(
                              state.onTap == true ? Icons.visibility_off : Icons.remove_red_eye_outlined,
                              color: Colors.white,
                              size: 20.h,
                            ),
                          ),
                        );
                      }
                      return SizedBox();
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomButton(
                    title: Strings.logIn,
                    onPressed: () async {
                      await AuthRepo().login(email: usernameController.text, password: passwordController.text,onSuccess: (){},onError:(){
                      SnackBar(content: Text('context'));
                      });
                      Navigator.pushNamed(context, '/homePage');
                    }),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  Strings.forgottenPassword,
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50.h),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/usernameScreen');
                      },
                      child: Container(
                        height: 40.h,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.r)), border: Border.all(color: Colors.blue)),
                        child: Center(
                            child: Text(
                              Strings.createNewAccount,
                              style: TextStyle(color: Colors.blue),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
