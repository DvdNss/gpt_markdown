import 'package:flutter/material.dart';

class GptMarkdownConfig {
  const GptMarkdownConfig({
    this.style,
    this.textDirection = TextDirection.ltr,
    this.onLinkTab,
    this.textAlign,
    this.textScaler,
    this.latexWorkaround,
    this.latexBuilder,
    this.followLinkColor = false,
    this.codeBuilder,
    this.maxLines,
    this.overflow,
  });
  final TextDirection textDirection;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextScaler? textScaler;
  final void Function(String url, String title)? onLinkTab;
  final String Function(String tex)? latexWorkaround;
  final Widget Function(
          BuildContext context, String tex, TextStyle textStyle, bool inline)?
      latexBuilder;
  final bool followLinkColor;
  final Widget Function(BuildContext context, String name, String code)?
      codeBuilder;
  final int? maxLines;
  final TextOverflow? overflow;
  GptMarkdownConfig copyWith({
    TextStyle? style,
    TextDirection? textDirection,
    final void Function(String url, String title)? onLinkTab,
    final TextAlign? textAlign,
    final TextScaler? textScaler,
    final String Function(String tex)? latexWorkaround,
    final Widget Function(
            BuildContext context, String tex, TextStyle textStyle, bool inline)?
        latexBuilder,
    bool? followLinkColor,
    final Widget Function(BuildContext context, String name, String code)?
        codeBuilder,
    final int? maxLines,
    final TextOverflow? overflow,
  }) {
    return GptMarkdownConfig(
      style: style ?? this.style,
      textDirection: textDirection ?? this.textDirection,
      onLinkTab: onLinkTab ?? this.onLinkTab,
      textAlign: textAlign ?? this.textAlign,
      textScaler: textScaler ?? this.textScaler,
      latexWorkaround: latexWorkaround ?? this.latexWorkaround,
      latexBuilder: latexBuilder ?? this.latexBuilder,
      followLinkColor: followLinkColor ?? this.followLinkColor,
      codeBuilder: codeBuilder ?? this.codeBuilder,
      maxLines: maxLines ?? this.maxLines,
      overflow: overflow ?? this.overflow,
    );
  }
}
