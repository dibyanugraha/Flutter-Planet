import 'package:planet/views/PlanetHomePage.dart';
import 'package:planet/views/PlanetDetailPage.dart';

class PlanetRoute {
  static final route = {
    '/': (context) => PlanetHomePage(),
    '/detail': (_) => PlanetDetailPage(),
  };
}
