import 'package:provider/provider.dart';
import 'package:test_commerce/provider/onboardig_provider.dart';
import 'package:test_commerce/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:test_commerce/provider/carrousle_homepage_provider.dart';
import 'package:test_commerce/provider/landing_page_provider.dart';
import 'package:test_commerce/utils/theme/theme.dart';

///--Using This class to Setup Themes ,initial Bindings ,Animation --///

// class App extends StatelessWidget {
//   const App({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//       debugShowCheckedModeBanner: false,
//       themeMode: ThemeMode.system,
//       theme: SAppTheme.lighttheme,
//       darkTheme: SAppTheme.darkttheme,
//       home: const OnBoardingScreen(),
//     );
//   }
// }
///provider ///

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>LandingPageProvider()),
        ChangeNotifierProvider(create: (context) => OnBoardingProvider()),
        ChangeNotifierProvider(create: (context) => CarouselHomeProvider()),
        // Add more providers as needed
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: SAppTheme.lighttheme,
        darkTheme: SAppTheme.darkttheme,
        home: const OnBoardingScreen(),
      ),
    );
  }
}