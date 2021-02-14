import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/screens/business/business_homepage.dart';
import 'package:webapptrial/screens/users/home_page.dart';
import 'package:webapptrial/services/auth_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:country_code_picker/country_localizations.dart';

void main() async {
  runApp(MyApp());

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
}

final auth = AuthBloc();

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // getUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => auth),
      ],
      child: MaterialApp(
        title: 'eTRAVELER iD',
        theme: ThemeData(
          backgroundColor: AppColors.whiteColor,
          primaryColor: AppColors.whiteColor,
        ),
        debugShowCheckedModeBanner: false,
        home: BusinessHomePage(),
        onGenerateRoute: Routes.materialRoutes,
        supportedLocales: [
          Locale('en'),
          Locale('it'),
          Locale('fr'),
          Locale('es'),
          Locale('de'),
          Locale('pt'),
          Locale('ko'),
          Locale('zh'),
        ],
        localizationsDelegates: [
          CountryLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
      ),
    );
  }
}

abstract class Routes {
  static MaterialPageRoute materialRoutes(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.route:
        return MaterialPageRoute(builder: (context) => HomePage());
      case BusinessHomePage.route:
        return MaterialPageRoute(builder: (context) => BusinessHomePage());

      default:
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
