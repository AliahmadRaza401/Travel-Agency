import '../widgets/widgets_imports.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final Color color;
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
  final Color color;
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
