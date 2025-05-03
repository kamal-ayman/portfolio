import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mix/mix.dart';
import 'package:portfolio_ui/portfolio_ui.dart';

enum PortfolioButtonSize { normal, small }

enum PortfolioButtonType { filled, outlined }

final class PortfolioButton extends StatelessWidget {
  final String text;
  final Color? color;
  final double? width;
  final bool isLoading;
  final bool isDisabled;
  final Color? textColor;
  final Widget? suffixIcon;
  final VoidCallback onTap;
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  final PortfolioButtonSize size;
  final PortfolioButtonType type;

  const PortfolioButton({
    super.key,
    this.color,
    this.padding,
    this.textColor,
    this.textStyle,
    this.suffixIcon,
    required this.text,
    required this.onTap,
    this.isLoading = false,
    this.isDisabled = false,
    this.width = double.maxFinite,
    this.size = PortfolioButtonSize.normal,
    this.type = PortfolioButtonType.filled,
  });

  // Size variants
  static const _smallVariant = Variant('small');

  // Style variants
  static const _outlinedVariant = Variant('outlined');
  static const _loadingVariant = Variant('loading');
  // This variant exists to serve as a reversed condition
  // for the disabled variant, as Mix lacks reversing normal
  // variants as of the time of writing this comment
  static const _enabledVariant = Variant('enabled');

  // Configuration
  static const _animationDuration = Duration(milliseconds: 300);
  static const _animationCurve = Curves.easeInOut;
  static const _disabledButtonLoweredOpacity = 0.7;

  Color _withDisabledState(Color color) {
    if (!isDisabled) return color;
    return color.darken(10).withValues(alpha: _disabledButtonLoweredOpacity);
  }

  @override
  Widget build(BuildContext context) {
    final defaultButtonColor = context.primaryColor;
    final defaultTextColor = textColor ?? context.primaryColor;
    Color buttonColor = color ?? defaultButtonColor;
    buttonColor = _withDisabledState(buttonColor);
    final isOutLined = type == PortfolioButtonType.outlined;
    final isSmall = size == PortfolioButtonSize.small;
    final buttonTextStyle =
        textStyle ??
        (isSmall ? context.smallTextStyle : context.buttonsTextStyle).copyWith(
          color: defaultTextColor,
        );
    Color finalTextColor =
        textStyle?.color ?? (isOutLined ? buttonColor : defaultTextColor);
    finalTextColor = _withDisabledState(finalTextColor);
    return PressableBox(
      onPress: onTap,
      style: Style(
            $box.color(buttonColor),
            $box.borderRadius.circular(context.largeRadius.x),
            $text.style.as(buttonTextStyle),
            _outlinedVariant(
              $box.color(Colors.transparent),
              $on.hover($box.color(buttonColor)),
              $box.border.color(buttonColor),
              $box.border.width(.5),
              $text.style.as(
                (textStyle ?? buttonTextStyle).copyWith(color: buttonColor),
              ),
              $icon.color(buttonColor),
            ),
            _loadingVariant(
              $box.color(buttonColor.withValues(alpha: 0.7)),
              _outlinedVariant($box.color(Colors.transparent)),
            ),

            ($on.hover & _enabledVariant)(
              $box.color(buttonColor.brighten(100)),
              $text.color(context.backgroundColor),
              $icon.color(context.backgroundColor),
            ),
            ($on.press & _enabledVariant)(
              $box.color(buttonColor.brighten(100)),
              $text.color(context.secondaryColor),
              $icon.color(context.secondaryColor),
            ),
          )
          .addAll([
            if (width != null) ...[$box.constraints.maxWidth(width!)],
            if (padding != null) ...[$box.padding.as(padding!)],
            if (padding == null) ...[
              $box.padding.vertical(10),
              _smallVariant($box.padding.vertical(8)),
              if (width == null) ...[
                $box.padding.horizontal(20),
                _smallVariant($box.padding.horizontal(10)),
              ],
            ],
          ])
          .applyVariants([
            if (isOutLined) _outlinedVariant,
            if (isSmall) _smallVariant,
            if (isLoading) _loadingVariant,
            if (!isDisabled) _enabledVariant,
          ])
          .animate(duration: _animationDuration, curve: _animationCurve),
      child:
          isLoading
              ? ConstrainedBox(
                constraints: BoxConstraints(maxHeight: isSmall ? 17 : 20),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: CircularProgressIndicator(
                    color: finalTextColor,
                    strokeWidth: 3,
                  ),
                ),
              )
              : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  StyledText(text),
                  if (suffixIcon != null) ...[const Gap(8), suffixIcon!],
                ],
              ),
    );
  }
}
