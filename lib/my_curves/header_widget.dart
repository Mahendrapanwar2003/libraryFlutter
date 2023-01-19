part of ui_library;
class HeaderWidget extends StatelessWidget {
  final double height;
  final double height1;
  final double height2;
  final double height3;
  const HeaderWidget({
    Key? key,
    required this.height,
    required this.height1,
    this.height2=0.0,
    this.height3=0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        ClipPath(
          clipper: WaveShape(),
          child: Container(
            width: double.infinity,
            height: height,
           // color: MyColors().primary.withOpacity(.6),
          ),
        ),
        ClipPath(
          clipper: WaveShape(),
          child: Container(
            width: double.infinity,
            height: height1,
          //  color: MyColors().primary.withOpacity(.4),
          ),
        ),
        ClipPath(
          clipper: WaveShape(),
          child: Container(
            width: double.infinity,
            height: height2,
          //  color: MyColors().primary.withOpacity(.3),
          ),
        ),
        ClipPath(
          clipper: WaveShape(),
          child: Container(
            width: double.infinity,
            height: height3,
          //  color: MyColors()..primary.withOpacity(.2),
          ),
        ),
      ],
    );
   /* return Stack(
      children: [
        ClipPath(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    MyColors().primary.withOpacity(0.2),
                    MyColors().primary.withOpacity(0.2),
                  ],
                  begin:  FractionalOffset(0.0, 0.0),
                  end:  FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
          ),
          clipper: ShapeClipper([
            Offset(width / 5, height),
            Offset(width / 10 * 5, height - 60),
            Offset(width / 5 * 4, height + 20),
            Offset(width, height - 18)
          ]),
        ),
        ClipPath(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    MyColors().primary.withOpacity(0.2),
                    MyColors().primary.withOpacity(0.2),
                  ],
                  begin:  FractionalOffset(0.0, 0.0),
                  end:  FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
          ),
          clipper: ShapeClipper([
            Offset(width / 3, height + 20),
            Offset(width / 10 * 8, height - 60),
            Offset(width / 5 * 4, height - 60),
            Offset(width, height - 20)
          ]),
        ),
      ],
    );*/
  }
}

class WaveShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var p = Path();
    p.lineTo(0, 0);
    p.cubicTo(width * 1 / 2, 0, width * 2 / 4, height, width, height);
    p.lineTo(width, 0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}


class ShapeClipper extends CustomClipper<Path> {
  final List<Offset> _offsets;

  ShapeClipper(this._offsets);

  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height - 20);

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
