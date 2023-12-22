/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/addImage.png
  AssetGenImage get addImage =>
      const AssetGenImage('assets/images/addImage.png');

  /// File path: assets/images/addImgaebutton.svg
  String get addImgaebutton => 'assets/images/addImgaebutton.svg';

  /// File path: assets/images/avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/images/avatar.png');

  /// File path: assets/images/checkBoxFalse.svg
  String get checkBoxFalse => 'assets/images/checkBoxFalse.svg';

  /// File path: assets/images/checkBoxTrue.svg
  String get checkBoxTrue => 'assets/images/checkBoxTrue.svg';

  /// File path: assets/images/hiBossLogoSvg.svg
  String get hiBossLogoSvg => 'assets/images/hiBossLogoSvg.svg';

  /// File path: assets/images/introl1.png
  AssetGenImage get introl1 => const AssetGenImage('assets/images/introl1.png');

  /// File path: assets/images/introl2.png
  AssetGenImage get introl2 => const AssetGenImage('assets/images/introl2.png');

  /// File path: assets/images/introl3.png
  AssetGenImage get introl3 => const AssetGenImage('assets/images/introl3.png');

  /// File path: assets/images/loginLogo.svg
  String get loginLogo => 'assets/images/loginLogo.svg';

  /// File path: assets/images/phone1.jpg
  AssetGenImage get phone1 => const AssetGenImage('assets/images/phone1.jpg');

  /// File path: assets/images/phone2.jpg
  AssetGenImage get phone2 => const AssetGenImage('assets/images/phone2.jpg');

  /// File path: assets/images/phone3.jpg
  AssetGenImage get phone3 => const AssetGenImage('assets/images/phone3.jpg');

  /// File path: assets/images/poweredHifiveIcon.svg
  String get poweredHifiveIcon => 'assets/images/poweredHifiveIcon.svg';

  /// File path: assets/images/splashBgr1Png.png
  AssetGenImage get splashBgr1Png =>
      const AssetGenImage('assets/images/splashBgr1Png.png');

  /// File path: assets/images/splashBgr2Png.png
  AssetGenImage get splashBgr2Png =>
      const AssetGenImage('assets/images/splashBgr2Png.png');

  /// File path: assets/images/splashBgr3Png.png
  AssetGenImage get splashBgr3Png =>
      const AssetGenImage('assets/images/splashBgr3Png.png');

  /// List of all assets
  List<dynamic> get values => [
        addImage,
        addImgaebutton,
        avatar,
        checkBoxFalse,
        checkBoxTrue,
        hiBossLogoSvg,
        introl1,
        introl2,
        introl3,
        loginLogo,
        phone1,
        phone2,
        phone3,
        poweredHifiveIcon,
        splashBgr1Png,
        splashBgr2Png,
        splashBgr3Png
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
