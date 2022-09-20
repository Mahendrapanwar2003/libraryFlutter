part of ui_library;

// ignore: must_be_immutable
class MyAnimations extends StatelessWidget {
  String pathNetwork;
  String pathJson;

  MyAnimations({
    Key? key,
    this.pathJson = '',
    this.pathNetwork = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return pathNetwork != '' ? Lottie.network(pathNetwork) : Lottie.asset(pathJson);
  }
}
