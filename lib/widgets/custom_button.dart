import '../widgets/widgets_imports.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final Color color, textcolor;
  final EdgeInsets padding;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.function,
    this.color = KColors.kPrimary,
    this.width = .5,
    this.height = .054,
    this.borderRadius = .03,
    this.padding = EdgeInsets.zero,
    this.textcolor = KColors.kWhite,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: kHeight(height),
        width: kWidth(width),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(kWidth(borderRadius)),
          ),
        ),
        padding: padding,
        child: Center(
          child: CustomText(
            text: text,
            textStyle: KTextStyles().buttonStyle(
              textColor: textcolor,
            ),
          ),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final Color color;
  final EdgeInsets padding;

  const SecondaryButton({
    super.key,
    required this.text,
    required this.function,
    this.color = KColors.kPrimary,
    this.width = .5,
    this.height = .054,
    this.borderRadius = .03,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: kHeight(height),
        width: kWidth(width),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(kWidth(borderRadius)),
          ),
        ),
        padding: padding,
        child: Center(
          child: CustomText(
            text: text,
            textStyle: KTextStyles().buttonStyle(),
          ),
        ),
      ),
    );
  }
}

class IconTextButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final Color color, iconcolor, textcolor, bgcolor;
  final double elevation;
  final EdgeInsets padding;

  const IconTextButton({
    super.key,
    required this.text,
    required this.icon,
    required this.function,
    this.color = KColors.kPrimary,
    this.width = .5,
    this.height = .054,
    this.borderRadius = .054,
    this.elevation = 0,
    this.padding = EdgeInsets.zero,
    this.iconcolor = KColors.kWhite,
    this.textcolor = KColors.kBlack,
    this.bgcolor = KColors.kPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: kHeight(height),
        width: kWidth(width),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(kWidth(borderRadius)),
          ),
        ),
        padding: padding,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: bgcolor,
                radius: kHeight(.015),
                child: Icon(
                  icon,
                  color: iconcolor,
                ),
              ),
              widthBox(.02),
              CustomText(
                text: text,
                textStyle: KTextStyles().buttonStyle(textColor: textcolor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconTextButton2 extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final Color color, textcolor, iconcolor, bgcolor;
  final double elevation;
  final EdgeInsets padding;

  const IconTextButton2({
    super.key,
    required this.text,
    required this.icon,
    required this.function,
    this.color = KColors.kPrimary,
    this.width = .5,
    this.height = .054,
    this.borderRadius = .054,
    this.elevation = 0,
    this.padding = EdgeInsets.zero,
    this.textcolor = KColors.kWhite,
    this.iconcolor = KColors.kPrimary,
    this.bgcolor = KColors.kWhite,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: kHeight(height),
        width: kWidth(width),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(kWidth(borderRadius)),
          ),
        ),
        padding: padding,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: text,
                textStyle: KTextStyles().buttonStyle(textColor: textcolor),
              ),
              widthBox(.02),
              CircleAvatar(
                backgroundColor: bgcolor,
                radius: kHeight(.015),
                child: Icon(
                  icon,
                  color: iconcolor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final Color color;
  final double elevation;
  final EdgeInsets padding;

  const KIconButton({
    super.key,
    required this.icon,
    required this.function,
    this.color = KColors.kPrimary,
    this.width = .5,
    this.height = .054,
    this.borderRadius = .054,
    this.elevation = 0,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: kHeight(height),
        width: kWidth(width),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(kWidth(borderRadius)),
          ),
        ),
        padding: padding,
        child: Center(
          child: Icon(icon),
        ),
      ),
    );
  }
}

class OutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final Color color;
  final double elevation;
  final EdgeInsets padding;

  const OutlineButton({
    super.key,
    required this.text,
    required this.function,
    this.color = KColors.kPrimary,
    this.width = .5,
    this.height = .054,
    this.borderRadius = .054,
    this.elevation = 0,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: kHeight(height),
        width: kWidth(width),
        decoration: BoxDecoration(
          color: KColors.noColor,
          border: Border.all(
            width: 1.0,
            color: color,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(kWidth(borderRadius)),
          ),
        ),
        padding: padding,
        child: Center(
          child: CustomText(
            text: text,
            textStyle: KTextStyles().buttonStyle(),
          ),
        ),
      ),
    );
  }
}

class OutlineIconTextButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final Color color;
  final double elevation;
  final EdgeInsets padding;

  const OutlineIconTextButton({
    super.key,
    required this.text,
    required this.icon,
    required this.function,
    this.color = KColors.kPrimary,
    this.width = .5,
    this.height = .054,
    this.borderRadius = .054,
    this.elevation = 0,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: kHeight(height),
        width: kWidth(width),
        decoration: BoxDecoration(
          color: KColors.noColor,
          border: Border.all(
            width: 1.0,
            color: color,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(kWidth(borderRadius)),
          ),
        ),
        padding: padding,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              widthBox(.02),
              CustomText(
                text: text,
                textStyle: KTextStyles().buttonStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OutlineIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final Color color;
  final double elevation;
  final EdgeInsets padding;

  const OutlineIconButton({
    super.key,
    required this.icon,
    required this.function,
    this.color = KColors.kPrimary,
    this.width = .5,
    this.height = .054,
    this.borderRadius = .054,
    this.elevation = 0,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: kHeight(height),
        width: kWidth(width),
        decoration: BoxDecoration(
          color: KColors.noColor,
          border: Border.all(
            width: 1.0,
            color: color,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(kWidth(borderRadius)),
          ),
        ),
        padding: padding,
        child: Center(
          child: Icon(icon),
        ),
      ),
    );
  }
}
