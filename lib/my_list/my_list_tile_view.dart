part of ui_library;

// ignore: must_be_immutable
class MyListTile extends StatelessWidget {
  bool expanded;
  Widget? title;
  Widget? subtitle;
  Widget? trailing;
  Widget? leading;
  Color? tileColor;
  Color? iconColor;
  VoidCallback? onTap;

  MyListTile(
      {Key? key,
      this.expanded = false,
      this.subtitle,
      this.onTap,
      this.iconColor,
      this.tileColor,
      this.title,
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
                  title: title,
                  tileColor: tileColor,
                  iconColor: iconColor,
                  subtitle: subtitle,
                  trailing: trailing,
                ),
              ),
            ),
          )
        : Material(
            child: Card(
              child: ListTile(
                onTap: onTap,
                leading: leading,
                title: title,
                tileColor: tileColor,
                iconColor: iconColor,
                subtitle: subtitle,
                trailing: trailing,
              ),
            ),
          );
  }
}
