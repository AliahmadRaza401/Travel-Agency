import 'package:travel_agency/widgets/widgets_imports.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return PersistentTabView(
        navBarHeight: kHeight(.08),
        tabs: [
          PersistentTabConfig(
            screen: const HomeScreen(),
            item: ItemConfig(
              icon: Image.asset(
                "assets/images/Vector.png",
                color: KColors.kPrimary,
              ),
              title: "Home",
            ),
          ),
          PersistentTabConfig(
            screen: const BlogPage(),
            item: ItemConfig(
              icon: Image.asset(
                "assets/images/book-saved.png",
                color: KColors.kPrimary,
              ),
              title: "Messages",
            ),
          ),
          PersistentTabConfig(
            screen: const RetrieveBooking(),
            item: ItemConfig(
              icon: Image.asset(
                "assets/images/security-user.png",
                color: KColors.kPrimary,
              ),
              title: "Settings",
            ),
          ),
          PersistentTabConfig(
            screen: const MyBooking(),
            item: ItemConfig(
              icon: Image.asset(
                "assets/images/setting.png",
                color: KColors.kPrimary,
              ),
              title: "Settings",
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style5BottomNavBar(
          navBarDecoration: NavBarDecoration(
              boxShadow: [
                BoxShadow(
                    color: KColors.kGrey.withOpacity(.5),
                    blurRadius: 5,
                    offset: const Offset(1, 1))
              ],
              borderRadius:
                  BorderRadius.vertical(top: Radius.circular(kWidth(.05))),
              padding: EdgeInsets.symmetric(
                  vertical: kHeight(.015), horizontal: kWidth(.1))),
          navBarConfig: navBarConfig,
        ),
      );
    });
  }
}
