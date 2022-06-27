import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

/// アプリ名
const appTitle = 'おこづかい帳 2022';

/// テーマカラー
const themeColor = Color.fromARGB(255, 102, 143, 255);

/// エントリポイント
void main() {
  // 画面向きを縦に固定
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

/// お小遣い帳アプリ
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      // プライマリカラーのみ変更
      theme: ThemeData.light().copyWith(
        primaryColor: themeColor,
        appBarTheme: const AppBarTheme().copyWith(backgroundColor: themeColor),
        // Google Fonts の「M PLUS 1p」を指定
        textTheme: GoogleFonts.mPlus1TextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        // Google Fonts の「M PLUS 1p」を指定
        textTheme: GoogleFonts.mPlus1TextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      // MaterialApp で日本語対応をサポート
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      // ロケールは日本を設定
      supportedLocales: const [
        Locale('ja'),
      ],
      home: const HomePage(),
    );
  }
}
