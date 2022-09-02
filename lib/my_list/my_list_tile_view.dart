part of ui_library;

// ignore: must_be_immutable
class MyListTile extends StatelessWidget {
  bool expanded;
  String title;
  String subtitle;
  String subtitle2;
  bool isThreeLine;
  Widget? trailing;
  Widget? leading;
  Color? tileColor;
  Color? iconColor;
  Color? titleColor;
  Color? subtitleColor;
  Color? subtitle2Color;
  VoidCallback? onTap;
  double subtitleFontSize;
  double subtitle2FontSize;
  double titleFontSize;
  int subtitleMaxLines;
  int subtitle2MaxLines;

  MyListTile(
      {Key? key,
      this.expanded = false,
      this.subtitle = '',
      this.subtitle2 = '',
      this.onTap,
      this.subtitleFontSize = 14,
      this.subtitle2FontSize = 13,
      this.titleFontSize = 14,
      this.subtitleMaxLines = 2,
      this.subtitle2MaxLines = 1,
      this.iconColor,
      this.tileColor,
      this.subtitleColor,
      this.titleColor,
      this.subtitle2Color,
      this.isThreeLine = false,
      this.title = '',
      this.leading,
      this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return expanded == true
        ? Expanded(
            child: Material(
              child: Card(
                child: ListTile(
                  onTap: onTap,
                  leading: leading,
                  title: Text(
                    title,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: titleColor,
                        fontSize: titleFontSize),
                  ),
                  selectedColor: Colors.green,
                  tileColor: tileColor,
                  iconColor: iconColor,
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(subtitle,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: subtitleColor,
                              fontSize: subtitleFontSize),
                          maxLines: subtitleMaxLines),
                      Text(subtitle2,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: subtitle2Color,
                              fontSize: subtitle2FontSize),
                          maxLines: subtitle2MaxLines),
                    ],
                  ),
                  trailing: trailing,
                  isThreeLine: isThreeLine,
                ),
              ),
            ),
          )
        : Material(
            child: Card(
              child: ListTile(
                onTap: onTap,
                leading: leading,
                title: Text(
                  title,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: titleColor,
                      fontSize: titleFontSize),
                ),
                selectedColor: Colors.green,
                tileColor: tileColor,
                iconColor: iconColor,
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(subtitle,
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: subtitleColor,
                            fontSize: subtitleFontSize),
                        maxLines: subtitleMaxLines),
                    Text(subtitle2,
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: subtitle2Color,
                            fontSize: subtitle2FontSize),
                        maxLines: subtitle2MaxLines),
                  ],
                ),
                trailing: trailing,
                isThreeLine: isThreeLine,
              ),
            ),
          );
  }
}
