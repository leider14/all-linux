import 'package:flutter/material.dart';

/// Basics ////////////////////////////////////
final MaterialColor materialbasecolor = convertHexToMaterialColor("#1CAE81");
const Color myClrWhite = Color(0xFFFFFFFF);
const Color myClrBaseColor = Colors.black;
const Color myClrBaseColorLight = Color.fromARGB(255, 139, 184, 187);
const Color myClrBaseColorOpaque = Color(0xFF1CA578);
const Color myClrBaseSplash = Color(0xFF1CA578);
const Color myClrBackgroundCard = Color.fromARGB(255, 255, 255, 255);
const Color myClrBackground = Color.fromARGB(255, 241, 241, 241);
const Color myClrError = Color(0xFFE10E4B);
const Color myClrShadow = Color.fromARGB(9, 32, 38, 24);
const Color myClrSelectionText = Color.fromARGB(40, 28, 174, 129);
const Color myClrBarrier = Color.fromARGB(80, 24, 29, 38);
const Color myClrText = Color.fromARGB(80, 24, 29, 38);
const Color myClrDisable = Color.fromARGB(118, 0, 0, 0);


/// Black Colors ////////////////////////////
const Color myClrEnrichedBlack100 = Color(0xFF181D26);
const Color myClrEnrichedBlack200 = Color(0xFF31353D);
const Color myClrEnrichedBlack300 = Color(0xFF494D55);
const Color myClrEnrichedBlack400 = Color(0xFF62656C);
const Color myClrEnrichedBlack500 = Color(0xFF7A7D84);
const Color myClrEnrichedBlack600 = Color(0xFF92949B);
const Color myClrEnrichedBlack700 = Color(0xFFABACB2);
const Color myClrEnrichedBlack800 = Color(0xFFC3C4CA);
const Color myClrEnrichedBlack900 = Color(0xFFDCDCE1);
const Color myClrEnrichedBlack1000 = Color(0xFFF4F4F9);
const Color myClrEnrichedBlack1100 = Color(0xFFFAFAFC);

// Market
const Color myClrBlue = Color(0xFF2497EF);
const Color myClrYellow = Color(0xFFFBDC34);
const Color myClrPurple = Color(0xFF919DFA);
const Color myClrOrange = Color(0xFFFFA26B);
const Color myClrGreen = Color(0xFF32C999);
const Color myClrBlueLight = Color(0xFF24C6FA);
const Color myClrPink = Color(0xFFFF78AF);

// Social
const Color myClrMaps = Color(0xFFE10E4B);
const Color myClrWeb = Color(0xFF2497EF);
const Color myClrrwhatsapp = Color(0xFF32C999);
const Color myClrTelegram = Color(0xFF24C6FA);
const Color myClrFacebook = Color(0xFF2497EF);
const Color myClrInstagram = Color(0xFFFF78AF);
const Color myClrTwiter = Color(0xFF2FA6E3);
const Color myClrrtiktok = Color(0xFF181D26);
const Color myClrryoutube = Color(0xFFE10E4B);
const Color myClrSocialNone = Color.fromARGB(255, 107, 111, 118);

MaterialColor convertHexToMaterialColor(String hexColor) {
  final int primaryColorValue = int.parse(hexColor.replaceAll("#", ""), radix: 16);
  return MaterialColor(primaryColorValue, {
    50: Color(primaryColorValue).withOpacity(0.1),
    100: Color(primaryColorValue).withOpacity(0.2),
    200: Color(primaryColorValue).withOpacity(0.3),
    300: Color(primaryColorValue).withOpacity(0.4),
    400: Color(primaryColorValue).withOpacity(0.5),
    500: Color(primaryColorValue).withOpacity(0.6),
    600: Color(primaryColorValue).withOpacity(0.7),
    700: Color(primaryColorValue).withOpacity(0.8),
    800: Color(primaryColorValue).withOpacity(0.9),
    900: Color(primaryColorValue).withOpacity(1.0),
  });
}
