import 'package:country_code_picker/country_localizations.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:seo_renderer/helpers/utils.dart';
import 'package:universal_html/html.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:webapptrial/widgets/export_widget.dart';

void main() async {
  runApp(MyApp());
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
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
    super.initState();
    final loader = document.getElementsByClassName('loader');
    if (loader.isNotEmpty) {
      loader.first.remove();
    }
  }

  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => auth),
        Provider(create: (context) => adminFirestoreServices),
      ],
      child: MaterialApp(
        title: 'TRAVEL ID',
        initialRoute: '/',
        navigatorObservers: [
          routeObserver,
          FirebaseAnalyticsObserver(analytics: FirebaseAnalytics()),
        ],
        theme: ThemeData(
          backgroundColor: AppColors.primaryWhite,
          primaryColor: AppColors.primaryWhite,
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(
          analytics: analytics,
          observer: observer,
        ),
        // HomePage(),
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
  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  static MaterialPageRoute materialRoutes(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.route:
        return MaterialPageRoute(
            builder: (context) => HomePage(
                  analytics: analytics,
                  observer: observer,
                ),
            settings: RouteSettings(name: ""));
      case HomePageBusiness.route:
        return MaterialPageRoute(
            builder: (context) => HomePageBusiness(),
            settings: RouteSettings(name: "/business"));

      case PrivacyPolicyWidget.route:
        return MaterialPageRoute(
            builder: (context) => PrivacyPolicyWidget(),
            settings: RouteSettings(name: "privacy"));

      case ContactUs.route:
        return MaterialPageRoute(
            builder: (context) => ContactUs(),
            settings: RouteSettings(name: "contact"));

      case TermsOfUseWidget.route:
        return MaterialPageRoute(
            builder: (context) => TermsOfUseWidget(),
            settings: RouteSettings(name: "terms"));

      default:
        return MaterialPageRoute(
            builder: (context) => HomePage(),
            settings: RouteSettings(name: "/home/"));
    }
  }
}
