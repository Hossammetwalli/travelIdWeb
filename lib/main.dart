import 'package:country_code_picker/country_localizations.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:webapptrial/widgets/export_widget.dart';

void main() async {
  runApp(MyApp());

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
}

final auth = AuthBloc();
final adminFirestoreServices = AdminFirestoreService();

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
        Provider(create: (context) => adminFirestoreServices),
      ],
      child: MaterialApp(
        title: 'TRAVEL ID',
        navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: FirebaseAnalytics()),
        ],
        theme: ThemeData(
          // scrollbarTheme: ScrollbarThemeData(
          //   isAlwaysShown: true,
          //   interactive: true,
          //   minThumbLength: 1,
          // ),
          backgroundColor: AppColors.primaryWhite,
          primaryColor: AppColors.primaryWhite,
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
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
      case HomePageBusiness.route:
        return MaterialPageRoute(builder: (context) => HomePageBusiness());

      default:
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
