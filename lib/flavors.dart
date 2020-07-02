enum Flavor {
  DEV,
  PROD,
}

class F {
  static Flavor appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'Toutly Dev';
      case Flavor.PROD:
        return 'Toutly';
      default:
        return 'title';
    }
  }

}
