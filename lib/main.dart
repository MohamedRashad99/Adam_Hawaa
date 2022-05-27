import 'package:adam_and_eve/screen/auth/forget_password/view.dart';
import 'package:adam_and_eve/screen/auth/register/view.dart';
import 'package:adam_and_eve/screen/auth/sign_in/view.dart';
import 'package:adam_and_eve/screen/auth/vscode/view.dart';
import 'package:adam_and_eve/screen/splash/view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as g;

import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

import 'package:queen/queen.dart';

import 'config/bloc_observer.dart';
import 'config/routes/path.dart';
import 'config/themes/theme_cubit/switch_cubit.dart';
import 'config/themes/theme_cubit/switch_state.dart';

import 'translations/locale key-value.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Bloc.observer = MyBlocObserver();
  await App.boot();
  // Locators.put(NotificationServices());
  // Locators.put(BannerServices());
  runApp(QueenBuilder(
      enableDevtools: false,
      builder: (context) {
        return DevicePreview(builder: (context){
          return const Adam7waa();
        },);

      }));
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class Adam7waa extends StatelessWidget {
  const Adam7waa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SwitchCubit>(
          create: (context) => SwitchCubit(),
        ),
      ],
      child: BlocBuilder<SwitchCubit, SwitchState>(
        builder: (context, state) {
          return GetMaterialApp(
            initialRoute: '/',
           // getPages: AppPages.routes,
            translations: LocaleString(),
           locale: const Locale('ar', 'EG'),

           //  locale: const Locale('en', 'US'),
            popGesture: true,

            defaultTransition: g.Transition.zoom,
            debugShowCheckedModeBanner: false,
            theme: state.theme,

            title: 'Flutter Theme Cubit',
            home: const SignUp(),
          );
        },
      ),

    );
  }
}
