import 'package:farmx_iot/home.dart';

import "pages.dart";

var appRoutes = {
  "/": (context) => const HomeScreen(),
  "/login": (context) => const LoginPage(),
  "/profile_page": (context) => const ProfilePage(),
  "/devices_page": (context) => const DevicesPage(),
  "/add_device_page": (context) => const AddDevicePage(),
};
