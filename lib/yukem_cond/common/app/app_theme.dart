import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppTheme {
  AppTheme() {
    sizes = Sizes();
    textTheme = TextTheme(colorTheme);

    buttonStyle = TextButton.styleFrom(
      backgroundColor: colorTheme.primaryColor, // Text Color
    );

    buttonStyle2 = TextButton.styleFrom(
        backgroundColor: colorTheme.primaryColorBackground // Text Color
        );
  }

  factory AppTheme.of(BuildContext context) {
    return context.read<AppTheme>();
  }

  final ColorTheme colorTheme = ColorTheme();
  late final TextTheme textTheme;
  late final Sizes sizes;

  late final ButtonStyle buttonStyle;
  late final ButtonStyle buttonStyle2;

  final EdgeInsets telaPadding =
      const EdgeInsets.symmetric(horizontal: 16, vertical: 20);
}

class TextTheme {
  final ColorTheme _cor;
  final String _defaultFont = 'Open Sans';

  TextTheme(this._cor);

  TextStyle title1({Color? color, String? font}) {
    return GoogleFonts.getFont(font ?? _defaultFont,
        textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: color ?? _cor.secondaryColor));
  }

  TextStyle title2({Color? color, String? font}) {
    return GoogleFonts.getFont(font ?? _defaultFont,
        textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: color ?? _cor.text));
  }

  TextStyle title3({Color? color, String? font}) {
    return GoogleFonts.getFont(font ?? _defaultFont,
        textStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            // fontStyle: FontStyle.italic,
            color: color ?? _cor.text.withOpacity(0.5)));
  }

  TextStyle subTitle1({Color? color, String? font}) {
    return GoogleFonts.getFont(font ?? _defaultFont,
        textStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: color ?? _cor.text));
  }

  TextStyle subTitle2({Color? color, String? font}) {
    return GoogleFonts.getFont(font ?? _defaultFont,
        textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: color ?? _cor.primaryColorBackground));
  }

  TextStyle body({Color? color, String? font}) {
    return GoogleFonts.getFont(font ?? _defaultFont,
        textStyle: TextStyle(color: color ?? _cor.text));
  }

  TextStyle link({Color? color, String? font}) {
    return GoogleFonts.getFont(font ?? _defaultFont,
        textStyle: TextStyle(color: color ?? _cor.primaryColor, fontSize: 14));
  }

  TextStyle detail({Color? color, String? font}) {
    return GoogleFonts.getFont(font ?? _defaultFont,
        textStyle: TextStyle(color: color ?? _cor.text, fontSize: 10));
  }
}

class ColorTheme {
  Color primaryColor = Colors.blueAccent;
  Color secondaryColor = Colors.grey[200]!;

  // Color primaryColor = Colors.grey[500]!;
  // Color secondary = Colors.grey[800]!;

  Color primaryColorBackground = Colors.white;
  Color secondaryColorBackground = Colors.blue[100]!;

  Color text = Colors.black;

  // Color text = Colors.white;
  Color textBg = Colors.white;
}

class Sizes {
  final double normalIcon = 32.0;
}
