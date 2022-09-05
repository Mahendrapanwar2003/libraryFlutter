part of ui_library;

// ignore: must_be_immutable
class MyAnimations extends StatelessWidget {
  String pathAsset;
  String pathNetwork;

  MyAnimations({
    Key? key,
    this.pathAsset = '',
    this.pathNetwork = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return pathNetwork != ''
        ? Lottie.network(pathNetwork)
        : Lottie.asset(pathAsset);
  }
}
