part of ui_library;

class MyListView extends StatelessWidget {
  final List<Widget> listOfData;
  final bool isVertical;
  final double horizontalPadding;
  final double verticalPadding;
  final bool reverse;
  final ScrollPhysics physics;
  final bool shrinkWrap;
  final bool primary;
  final Clip clipBehavior;
  const MyListView({
    Key? key,
    required this.listOfData,
    this.isVertical = true,
    this.primary = true,
    this.horizontalPadding = 16,
    this.reverse = false,
    required this.physics,
    this.shrinkWrap = false,
    this.verticalPadding = 24,
    this.clipBehavior = Clip.hardEdge,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding,vertical: verticalPadding),
      child: ListView.separated(
        reverse: reverse,
        physics: physics,
        primary: primary,
        shrinkWrap: shrinkWrap,
        clipBehavior:clipBehavior,
        scrollDirection: isVertical ? Axis.vertical : Axis.horizontal,
        separatorBuilder: (c, i) {
          return isVertical ? Divider() : VerticalDivider();
        },
        itemBuilder: (c, i) {
          return listOfData[i];
        },
        itemCount: listOfData.length,
      ),
    );
  }
}
