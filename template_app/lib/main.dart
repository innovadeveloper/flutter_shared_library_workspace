import 'package:flutter/material.dart';
import 'package:template_app/src/di/di.dart';
import 'package:template_app/src/ui/main/calculator/calculator_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/ui/main/user_profile/user_profile_state.dart';
import 'package:template_app/src/ui/main/user_profile/user_profile_viewmodel.dart';
import 'package:template_app/src/ui/main/user_profile/user_profile_widget.dart';
import 'package:get_it/get_it.dart';

// flutter packages pub run build_runner build --delete-conflicting-outputs
// flutter pub run build_runner build
// final userProfileViewModel = GetIt.I<StateNotifierProvider<UserProfileViewModel, UserProfileState>>();

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Consumer(
        builder: (context, ref, child) => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: Colors.white,
            primaryColorDark: Colors.black,
            primaryColorLight: Colors.white,
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.white,
            ),
            textTheme: TextTheme(
                headlineLarge: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontFamily: 'Poppins',
                ),
                headlineMedium: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontFamily: 'Poppins',
                ),
                headlineSmall: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: 'Poppins',
                ),
                bodySmall: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                  fontFamily: 'Poppins',
                ),
                bodyMedium: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontFamily: 'Poppins',
                )),
          ),
          // home: const CalculatorPage(title: 'Flutter Demo Home Page'),
          home: Scaffold(
            body: Center(
              child: UserProfileWidget(
                extraParameter: "sample",
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                final userProfileViewModel = GetIt.I<StateNotifierProvider<UserProfileViewModel, UserProfileState>>();
                ref.read(userProfileViewModel.notifier).fetchData();
              },
              tooltip: 'Increment',
              child: Icon(Icons.search),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
          ),
        ),
      ),
    );
  }
}
