import 'package:fixit_user/screens/bottom_screens/home_screen/layouts/home_body.dart';

import '../../../config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(builder: (context3, dash, child) {
      return Consumer<HomeScreenProvider>(builder: (context1, value, child) {
        return Consumer<LocationProvider>(
            builder: (context2, locationCtrl, child) {
          return StatefulWrapper(
              onInit: () => Future.delayed(const Duration(milliseconds: 100),
                  () => value.onAnimate(this)),
              child: value.isSkeleton
                  ? const HomeSkeleton()
                  : RefreshIndicator(
                      onRefresh: () async {
                        return dash.onRefresh(context);
                      },
                      child: Scaffold(
                          appBar: AppBar(
                              leadingWidth: MediaQuery.of(context).size.width,
                              leading: HomeAppBar(location: street ?? "")),
                          body: !value.isEmptyLayout(context)
                              ? const CommonEmpty()
                              : const HomeBody()),
                    ));
        });
      });
    });
  }
}
