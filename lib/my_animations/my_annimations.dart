part of ui_library;

// ignore: must_be_immutable
class MyAnimations extends StatelessWidget {
  String pathNetwork;
  String pathJson;
  bool repeat;
  MyAnimations({
    Key? key,
    this.pathJson = '',
    this.pathNetwork = '',
    this.repeat = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return pathNetwork != '' ? LottieBuilder.network(pathNetwork,repeat: repeat)
    : LottieBuilder.asset(pathJson,repeat: repeat);
  }
}
