import 'package:flutter/material.dart';
import '../../presentation/home/components/page.dart';
import '../../presentation/home/home_screen.dart';
import '../../presentation/library/library_screen.dart';
import '../../presentation/live/live_screen.dart';
import '../../presentation/search/search_screen.dart';

class BottomProvider with ChangeNotifier {
  int _bottomIndex = 0;

  int get bottomIndex => _bottomIndex;

  void changeBottomIndex(int index) {
    _bottomIndex = index;
    notifyListeners();
  }

  Object get currentScreen {
    switch (_bottomIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const SearchScreen();
      case 2:
        return const LiveScreen();
      case 3:
        return const LibraryScreen();
      default:
        return const HomeScreen();
    }
  }
}
