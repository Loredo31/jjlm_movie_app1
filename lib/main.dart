import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:jjlm_movie_app/config/router/app_router.dart';
import 'package:jjlm_movie_app/config/theme/app_theme.dart';


void main() async{
  await dotenv.load(fileName: ".env");

  print(dotenv.env["MOVIEDB_KEY"]);

  runApp(
    ProviderScope(child: const MainApp(),
    )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}

//! git commit -m "add: Implementación de generos de la pelicula y correccion de bugs"