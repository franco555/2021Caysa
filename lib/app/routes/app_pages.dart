import 'package:caysa2021/app/modules/auth/createaccount/createaccount_page.dart';
import 'package:caysa2021/app/modules/auth/createaccount/createaccount_binding.dart';
import 'package:caysa2021/app/modules/auth/createuserpassword/createuserpassword_binding.dart';
import 'package:caysa2021/app/modules/auth/createuserpassword/createuserpassword_page.dart';
import 'package:caysa2021/app/modules/auth/forgotpassword/forgotpassword_binding.dart';
import 'package:caysa2021/app/modules/auth/forgotpassword/forgotpassword_page.dart';
import 'package:caysa2021/app/modules/auth/resetpassword/resetpassword_binding.dart';
import 'package:caysa2021/app/modules/auth/resetpassword/resetpassword_page.dart';
import 'package:caysa2021/app/modules/detail/detail_binding.dart';
import 'package:caysa2021/app/modules/detail/detail_page.dart';
import 'package:caysa2021/app/modules/home/home_binding.dart';
import 'package:caysa2021/app/modules/home/home_page.dart';
import 'package:caysa2021/app/modules/auth/login/login_binding.dart';
import 'package:caysa2021/app/modules/auth/login/login_page.dart';
import 'package:caysa2021/app/modules/nav/profile/profile_binding.dart';
import 'package:caysa2021/app/modules/nav/profile/profile_page.dart';
import 'package:caysa2021/app/modules/splash/splash_binding.dart';
import 'package:caysa2021/app/modules/splash/splash_page.dart';
import 'package:caysa2021/app/routes/app_routes.dart';
import 'package:get/route_manager.dart';

class AppPages{
   static final List<GetPage>pages=[
    GetPage(//------------------------------------- Splash
       name: AppRoutes.SPLASH,
       page:()=> SplashPage(),
       binding: SplashBinding()
    ),
    GetPage(//------------------------------------- Login
       name: AppRoutes.LOGIN,
       page:()=> LoginPage(),
       binding: LoginBinding()
    ),
    GetPage(//------------------------------------- Forgot Password
       name: AppRoutes.FORGOTPASSWORD,
       page:()=> ForgotPasswordPage(),
       binding: ForgotPasswordBinding()
    ),
    GetPage(//------------------------------------- Reset Password
       name: AppRoutes.RESETPASSWORD,
       page:()=> ResetPasswordPage(),
       binding: ResetPasswordBinding()
    ),
    GetPage(//------------------------------------- Create Account
       name: AppRoutes.CREATEACCOUNT,
       page:()=> CreateAccountPage(),
       binding: CreateAccountdBinding()
    ),
    GetPage(//------------------------------------- Create User Password
       name: AppRoutes.CREATE_USERPASSWORD,
       page:()=> CreateUserPasswordPage(),
       binding: CreateUserPasswordBinding()
    ),
    GetPage(//------------------------------------- Profile
       name: AppRoutes.PROFILE,
       page:()=> ProfilePage(),
       binding: ProfileBinding()
    ),
    GetPage(//------------------------------------- Home
       name: AppRoutes.HOME,
       page:()=> HomePage(),
       binding: HomeBinding()
    ),
    GetPage(//------------------------------------- Detail
       name: AppRoutes.DETAIL,
       page:()=> DetailPage(),
       binding: DetailBinding()
    )
   ];
}