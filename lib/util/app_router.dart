import 'package:flutter/material.dart';

import '../news/screen/news_screen.dart';

class AppRouter {
  static const String webViewScreen = '/webViewScreen';
  static Route? generatRouter(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MyHomePage());
          

    }
    
  }
}
