import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData lightTheme() {
  //gradient colors
  const colorScheme = ColorScheme(
    inversePrimary: Color(0xFF1E1E1E),
    //for texts
    outline: Color(0xFFFF8D24),
    brightness: Brightness.light,
    primary: Color(0xFF2148C0),
    //gradient 1
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF0069D7),
    //gradient 2
    onSecondary: Color(0xFFFFFFFF),
    error: Color(0xFFEE6868),
    onError: Color(0xFFFFFFFF),
    background: Color(0xFFFFFFFF),
    onBackground: Color(0xFF2148C0),
    //nav bar icons color
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFFA5A5A5),
    // grey color for hints
    tertiary: Color(0xFF0096C6), //gradient 3
  );
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: colorScheme.background,
    colorScheme: colorScheme,
    splashFactory: InkSplash.splashFactory,
    fontFamily: 'Korto',
    shadowColor: const Color(0xFF434E61),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: const Color(0xFF000000),
      selectionColor: const Color(0xFF434E61).withOpacity(0.5),
      selectionHandleColor: const Color(0xFF434E61).withOpacity(0.5),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colorScheme.onSurface.withOpacity(0.1),
      contentPadding:
          EdgeInsets.all(20.h), //Change this value to custom as you like
      isDense: false,
      suffixIconColor: const Color(0xFFA5A5A5),
      prefixIconColor: const Color(0xFFA5A5A5),
      prefixStyle: TextStyle(
        color: colorScheme.inversePrimary,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 16.sp,
      ),
      hintStyle: TextStyle(
        color: const Color(0xFFA5A5A5),
        fontSize: 16.sp,
      ),
      labelStyle: TextStyle(
        color: const Color(0xFFA5A5A5),
        fontSize: 16.sp,
      ),
      disabledBorder: InputBorder.none,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.r),
          borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.r),
          borderSide: BorderSide(color: colorScheme.onBackground)),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24.r),
        borderSide: BorderSide(
          color: colorScheme.error,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24.r),
        borderSide: BorderSide(
          color: colorScheme.error,
        ),
      ),
      errorMaxLines: 3,
      errorStyle: const TextStyle(height: 0),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        padding: EdgeInsets.symmetric(vertical: 12.h),
        minimumSize: Size(335.w, 48.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        elevation: 0,
        //backgroundColor: add inside the button this gradient
        foregroundColor: colorScheme.onPrimary,
        disabledBackgroundColor: const Color(0xFFA5A5A5),
        disabledForegroundColor: colorScheme.onPrimary,
      ),
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        color: colorScheme.inversePrimary,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      enableFeedback: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFFFFFFFF),
      selectedItemColor: colorScheme.onBackground,
      unselectedItemColor: const Color(0xFFA5A5A5),
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: colorScheme.onBackground,
        fontSize: 9.sp,
      ),
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: const Color(0xFFA5A5A5),
        fontSize: 9.sp,
      ),
      selectedIconTheme: IconThemeData(
        color: colorScheme.onBackground,
        size: 24.r,
      ),
      unselectedIconTheme: IconThemeData(
        color: const Color(0xFFA5A5A5),
        size: 24.r,
      ),
    ),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      buttonColor: Color(0xFF434E61),
    ),
    iconTheme: const IconThemeData(color: Color(0xFFA5A5A5)),
    primaryIconTheme: const IconThemeData(color: Color(0xFFA5A5A5)),
    textTheme: TextTheme(
      subtitle1: TextStyle(
        color: colorScheme.inversePrimary,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 16.sp,
      ),
      //for text fields - hints
      subtitle2: TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        color: colorScheme.onSurface,
        fontSize: 12.sp,
      ),
      //for something small like label of textfield
      button: TextStyle(
        color: colorScheme.onSecondary,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontSize: 16.sp,
      ),
      headline1: TextStyle(
        color: const Color(0xFF1E1E1E),
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        fontSize: 32.sp,
      ),
      // big thins like Login title and etc black ones
      headline2: TextStyle(
        color: const Color(0xFF1E1E1E),
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        fontSize: 28.sp,
      ),
      //not so big as h1
      headline3: TextStyle(
        color: const Color(0xFF1E1E1E),
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        fontSize: 24.sp,
      ),
      //something like a title of a page
      headline4: TextStyle(
        color: const Color(0xFF1E1E1E),
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        fontSize: 20.sp,
      ),
      //Basically black text above description
      headline5: TextStyle(
        color: const Color(0xFF707070),
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 16.sp,
      ),
      // default
      headline6: TextStyle(
        color: const Color(0xFF707070),
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 14.sp,
      ),
      //default grey text-description
    ),
  );
}
