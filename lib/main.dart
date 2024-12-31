import 'package:flutter/material.dart';
import 'package:intern_varun/models/cart_provider.dart';
import 'package:intern_varun/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the media query data to adjust font size based on screen size
    double textScaleFactor = MediaQuery.textScaleFactorOf(context);
    double screenWidth = MediaQuery.of(context).size.width;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: MaterialApp(
        title: 'Shopping App',
        debugShowCheckedModeBanner: false, // Disable debug banner
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF0080F6),
            primary: const Color(0xFF00B2EB),
          ),
          appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 20 * textScaleFactor,
              color: Colors.black,
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16 * textScaleFactor,
            ),
            prefixIconColor: const Color.fromRGBO(119, 119, 119, 1),
          ),
          textTheme: TextTheme(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24 * textScaleFactor, // Adjust font size dynamically
            ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20 * textScaleFactor, // Adjust font size dynamically
            ),
            bodySmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16 * textScaleFactor, // Adjust font size dynamically
            ),
          ),
          useMaterial3: true,
        ),
        home: const HomePage(),
        // Define routes for navigation
        routes: {
          '/home': (context) => const HomePage(),
          // Add other routes as needed
        },
      ),
    );
  }
}
