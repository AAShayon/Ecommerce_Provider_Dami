import 'package:flutter/cupertino.dart';
import 'package:test_commerce/features/personalization/screens/settings/settings.dart';
import 'package:test_commerce/features/shop/screen/home/home.dart';
import 'package:test_commerce/features/shop/screen/store/store.dart';
import 'package:test_commerce/features/shop/screen/wishlist/wishlist.dart';

class LandingPageProvider extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  final List<Widget> _screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishlistScreen(),
    const SettingsScreen(),
  ];

  List<Widget> get screens => _screens;

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}