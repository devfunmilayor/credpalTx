import 'package:credpaltest/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart' as device;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  debugPaintSizeEnabled = false;
  WidgetsFlutterBinding.ensureInitialized();

  await device.SystemChrome.setPreferredOrientations(
      [device.DeviceOrientation.portraitUp]);
  await device.SystemChrome.setEnabledSystemUIOverlays(
      [device.SystemUiOverlay.bottom]);
  device.SystemChrome.setSystemUIOverlayStyle(
      device.SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp(
    routerGenerator: RouterGenerator(),
  ));
}

class MyApp extends StatelessWidget {
  final RouterGenerator routerGenerator;

  const MyApp({Key key, this.routerGenerator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme:
                GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme)),
        onGenerateRoute: routerGenerator.generateRoute,
      ),
      designSize: const Size(360, 640),
    );
  }
}
