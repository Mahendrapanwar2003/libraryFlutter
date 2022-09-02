part of ui_library;

class MyBottomSheetView {
  static Future bottomSheet(
      {required Widget widget,
      required BuildContext myContext,
      double cornerRadius = 20,
      bool openFullBottomSheet = false,
      bool enableDrag = true,
      Color backBarrierColor = Colors.transparent,
      bool dismissible = true,
      double elevationCard = 30,
      Color SheetColor = Colors.white,
      double sheetBorderColor = 0,
      double paddingSheet = 8}) {
    return showModalBottomSheet(
      context: myContext,
      isScrollControlled: openFullBottomSheet,
      enableDrag: enableDrag,
      barrierColor: backBarrierColor,
      isDismissible: dismissible,
      builder: (context) => Material(
        elevation: elevationCard,
        color: SheetColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(cornerRadius),
          topLeft: Radius.circular(cornerRadius),
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(cornerRadius),
              topLeft: Radius.circular(cornerRadius),
            ),
          ),
          color: SheetColor,
          child: Padding(
            padding: EdgeInsets.all(paddingSheet),
            child: widget,
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(cornerRadius),
          topLeft: Radius.circular(cornerRadius),
        ),
        side: BorderSide(width: sheetBorderColor),
      ),
    );
  }
}
