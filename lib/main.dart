import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_mixer/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'movie_mixer',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.waitingRoomScreen,
      routes: AppRoutes.routes,
    );
  }
}
