part of ui_library;

class MyGridView extends StatelessWidget {
  final Function listOfData;
  final bool isVertical;
  final double horizontalPadding;
  final double verticalPadding;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final bool reverse;
  final ScrollPhysics physics;
  final bool shrinkWrap;
  final bool primary;
  final Clip clipBehavior;
  final int columnCount;
  final int animationShowDuration;
  final Curve curve;
  final double radiusMaterial;
  final int itemCount;
  final double childAspectRatio;

  const MyGridView({
    Key? key,
    required this.listOfData,
    this.isVertical = true,
    this.primary = true,
    this.horizontalPadding = 2,
    this.reverse = false,
    required this.physics,
    this.shrinkWrap = false,
    this.verticalPadding = 2,
    this.crossAxisSpacing = 5,
    this.mainAxisSpacing = 5,
    this.columnCount = 2,
    this.radiusMaterial = 10,
    required this.itemCount,
    this.curve = Curves.decelerate,
    this.animationShowDuration = 2,
    this.childAspectRatio = 1,
    this.clipBehavior = Clip.hardEdge,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.count(
        childAspectRatio: childAspectRatio,
        physics: physics,
        reverse: reverse,
        primary: primary,
        shrinkWrap: shrinkWrap,
        clipBehavior: clipBehavior,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
        scrollDirection: isVertical ? Axis.vertical : Axis.horizontal,
        crossAxisCount: columnCount,
        children: List.generate(
          itemCount,
              (int index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              duration: Duration(seconds: animationShowDuration),
              columnCount: columnCount,
              child: ScaleAnimation(
                curve: curve,
                child: FadeInAnimation(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                        vertical: verticalPadding),
                    child: listOfData(index),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
