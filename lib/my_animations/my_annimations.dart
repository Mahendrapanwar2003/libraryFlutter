part of ui_library;
class MyAnimations extends StatelessWidget {
  String path_asset;
  String path_network;
  MyAnimations({Key? key,this.path_asset = '',this.path_network = '',}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("he${path_network}");
    return path_network!=''?Lottie.network(path_network):Lottie.asset(path_asset);
  }
}
