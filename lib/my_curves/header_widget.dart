part of ui_library;
class HeaderWidget extends StatelessWidget {
  final double height;

  const HeaderWidget({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        ClipPath(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    MyColors().primary.withOpacity(0.2.px),
                    MyColors().primary.withOpacity(0.2.px),
                  ],
                  begin:  FractionalOffset(0.0.px, 0.0.px),
                  end:  FractionalOffset(1.0.px, 0.0.px),
                  stops: [0.0.px, 1.0.px],
                  tileMode: TileMode.clamp),
            ),
          ),
          clipper: ShapeClipper([
            Offset(width / 5.px, height),
            Offset(width / 10.px * 5.px, height - 60.px),
            Offset(width / 5.px * 4.px, height + 20.px),
            Offset(width, height - 18.px)
          ]),
        ),
        ClipPath(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    MyColors().primary.withOpacity(0.2.px),
                    MyColors().primary.withOpacity(0.2.px),
                  ],
                  begin:  FractionalOffset(0.0.px, 0.0.px),
                  end:  FractionalOffset(1.0.px, 0.0.px),
                  stops: [0.0.px, 1.0.px],
                  tileMode: TileMode.clamp),
            ),
          ),
          clipper: ShapeClipper([
            Offset(width / 3.px, height + 20.px),
            Offset(width / 10.px * 8.px, height - 60.px),
            Offset(width / 5.px * 4.px, height - 60.px),
            Offset(width, height - 20.px)
          ]),
        ),
      ],
    );
  }
}

class ShapeClipper extends CustomClipper<Path> {
  final List<Offset> _offsets;

  ShapeClipper(this._offsets);

  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0.px, size.height - 20.px);

    // path.quadraticBezierTo(size.width/5, size.height, size.width/2, size.height-40);
    // path.quadraticBezierTo(size.width/5*4, size.height-80, size.width, size.height-20);

    path.quadraticBezierTo(
        _offsets[0].dx, _offsets[0].dy, _offsets[1].dx, _offsets[1].dy);
    path.quadraticBezierTo(
        _offsets[2].dx, _offsets[2].dy, _offsets[3].dx, _offsets[3].dy);

    // path.lineTo(size.width, size.height-20);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
