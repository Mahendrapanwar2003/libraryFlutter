part of ui_library;

abstract class MySelectedColors{

 //primary colors
 Color get primary;
 Color get primaryContainer;
 Color get onPrimary;
 Color get onPrimaryContainer;
 Color get primaryVariant;
 Color get inversePrimary;



 // secondary colors
 Color get secondary;
 Color get secondaryContainer;
 Color get  onSecondary;
 Color get onSecondaryContainer;
 Color get secondaryVariant;
 Color get inverseSecondary;


 //tertiary colors
 Color get tertiary;
 Color get tertiaryContainer;
 Color get onTertiary;
 Color get onTertiaryContainer;

 //background colors

 Color get backGround;
 Color get onBackGround;

 // error colors

 Color get error;
 Color get onError;
 Color get errorContainer;
 Color get onErrorContainer;

 // surface colors

 Color get surface;
 Color get onSurface;
 Color get surfaceVariant;
 Color get onSurfaceVariant;
 Color get inverseSurface;
 Color get onInverseSurface;
 Color get surfaceTint;

}
class MyColors extends MySelectedColors {
 //--------------------------Primary Colors Implementation--------------------------

 @override
 // TODO: implement primary
 Color get primary => const Color(0xff);

 @override
 // TODO: implement primaryContainer
 Color get primaryContainer => const Color(0xff);

 @override
 // TODO: implement onPrimary
 Color get onPrimary => const Color(0xff);

 @override
 // TODO: implement onPrimaryContainer
 Color get onPrimaryContainer => const Color(0xff);

 @override
 // TODO: implement primaryVariant
 Color get primaryVariant => const Color(0xff);

 @override
 // TODO: implement inversePrimary
 Color get inversePrimary => const Color(0xff);

 // --------------------------Secondary Colors Implementation--------------------------

 @override
 // TODO: implement secondary
 Color get secondary => const Color(0xff);

 @override
 // TODO: implement secondaryContainer
 Color get secondaryContainer => const Color(0xff);

 @override
 // TODO: implement onSecondary
 Color get onSecondary => const Color(0xff);

 @override
 // TODO: implement onSecondaryContainer
 Color get onSecondaryContainer => const Color(0xff);

 @override
 // TODO: implement secondaryVariant
 Color get secondaryVariant => const Color(0xff);

 @override
 // TODO: implement inverseSecondary
 Color get inverseSecondary => const Color(0xff);

 //--------------------------Tertiary Colors Implementation--------------------------

 @override
 // TODO: implement tertiary
 Color get tertiary => const Color(0xff);

 @override
 // TODO: implement tertiaryContainer
 Color get tertiaryContainer => const Color(0xff);

 @override
 // TODO: implement onTertiary
 Color get onTertiary => const Color(0xff);

 @override
 // TODO: implement onTertiaryContainer
 Color get onTertiaryContainer => const Color(0xff);

 // --------------------------Error Colors Implementation--------------------------

 @override
 // TODO: implement error
 Color get error => const Color(0xff);

 @override
 // TODO: implement errorContainer
 Color get errorContainer => const Color(0xff);

 @override
 // TODO: implement onError
 Color get onError => const Color(0xff);

 @override
 // TODO: implement onErrorContainer
 Color get onErrorContainer => const Color(0xff);

 // --------------------------Background Colors Implementation--------------------------

 @override
  // TODO: implement backGround
  Color get backGround => const Color(0xff);

 @override
 // TODO: implement onBackGround
 Color get onBackGround =>const Color(0xff);

 // --------------------------Surface Colors Implementation--------------------------

 @override
 // TODO: implement surface
 Color get surface => const Color(0xff);

 @override
 // TODO: implement onSurface
 Color get onSurface => const Color(0xff);

 @override
 // TODO: implement surfaceVariant
 Color get surfaceVariant => const Color(0xff);

 // TODO: implement onSurfaceVariant
 Color get onSurfaceVariant => const Color(0xff);

 @override
 // TODO: implement inverseSurface
 Color get inverseSurface => const Color(0xff);

 @override
 // TODO: implement onInverseSurface
 Color get onInverseSurface => const Color(0xff);

 @override
 // TODO: implement surfaceTint
 Color get surfaceTint => const Color(0xff);

 Color get indicatorColor =>const Color(0xff);

}