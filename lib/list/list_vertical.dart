part of ui_library;

class ListVertical extends StatelessWidget {
  final List<Widget> listOfData;
  final bool isVertical;
  final double horizontalPadding;

  const ListVertical({
    Key? key,
    required this.listOfData,
    this.isVertical = true,
    this.horizontalPadding = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding,vertical: 24),
      child: ListView.separated(
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
