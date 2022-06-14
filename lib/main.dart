import 'package:e_learning/bloc/auth/auth_bloc.dart';
import 'package:e_learning/provider/bottombar_provider.dart';
import 'package:e_learning/provider/cart_provider.dart';
import 'package:e_learning/provider/get_id_provider.dart';
import 'package:e_learning/provider/theme_provider.dart';
import 'package:e_learning/repo/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'utils/route_generator.dart';
import 'utils/user_preferences.dart';

int? isViewed;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  isViewed = UserPreferences.getTime();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => BottomNavigationBarProvider()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => GETID()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: Builder(builder: (context) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => AuthBloc(RealAUthRepo()),
            ),
          ],
          child: MaterialApp(
            title: 'TeachMandu',
            debugShowCheckedModeBanner: false,
            themeMode: context.watch<ThemeProvider>().getTheme,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            darkTheme: ThemeData(brightness: Brightness.dark),
            initialRoute: "/splash",
            onGenerateRoute: RouteGenerator.generateRoute,
          ),
        );
      }),
    );
  }
}
