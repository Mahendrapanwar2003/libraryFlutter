part of ui_library;

class MyResponsiveSizer extends StatelessWidget {
  const MyResponsiveSizer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Responsive Sizer Example',
          theme: ThemeData(
              primarySwatch: Colors.blue),
          home: const MyResponsiveSizerPage(),
        );
      },
    );
  }
}

class MyResponsiveSizerPage extends StatefulWidget {
  const MyResponsiveSizerPage({Key? key}) : super(key: key);

  @override
  State<MyResponsiveSizerPage> createState() => _MyResponsiveSizerPageState();
}

class _MyResponsiveSizerPageState extends State<MyResponsiveSizerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Device.screenType == ScreenType.mobile
          ? Container( // Widget for Tablet
        width: 100.w,
        height: 20.5.h,
        color: Colors.purpleAccent,
      ) : Container( // Widget for Mobile
        width: 100.w,
        height: 12.5.h,
        color: Colors.red,
      ),

    );
  }
}
