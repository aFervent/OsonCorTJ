
import 'package:fixit_user/screens/bottom_screens/home_screen/layouts/horizontal_service_package_list.dart';

import '../../../../config.dart';

class CategoryFeaturePackageServices extends StatelessWidget {
  const CategoryFeaturePackageServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(builder: (context3, dash, child) {
      return Consumer<HomeScreenProvider>(builder: (context1, value, child) {
        return Consumer<CartProvider>(builder: (context2, cart, child) {
          return Column(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              if (dash.categoryList.isNotEmpty)
                HeadingRowCommon(
                        title: appFonts.topCategories,
                        isTextSize: true,
                        onTap: () => route.pushNamed(
                            context, routeName.categoriesListScreen))
                    .paddingSymmetric(horizontal: Insets.i20),
              if (dash.categoryList.isNotEmpty) const VSpace(Sizes.s15),
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: Sizes.s20),
                  itemCount: dash.categoryList.length>=8? dash.categoryList.getRange(0, 8).length:dash.categoryList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisExtent: Sizes.s110,
                      mainAxisSpacing: Sizes.s10,
                      crossAxisSpacing: Sizes.s10),
                  itemBuilder: (context, index) {
                    // Top Categories lists
                    return TopCategoriesLayout(
                        index: index,
                        selectedIndex: dash.topSelected,
                        data: dash.categoryList[index],

                        onTap: () => route.pushNamed(
                            context, routeName.categoriesDetailsScreen,
                            arg: dash.categoryList[index]));
                  }),
              if (dash.servicePackagesList.isNotEmpty)
                HeadingRowCommon(
                        title: appFonts.servicePackage,
                        isTextSize: true,
                        onTap: () => route.pushNamed(
                            context, routeName.servicePackagesScreen))
                    .paddingSymmetric(horizontal: Insets.i20),
              if (dash.servicePackagesList.isNotEmpty) const VSpace(Sizes.s15),
              HorizontalServicePackageList(
                  firstThreeServiceList: dash.firstThreeServiceList,
                  rotationAnimation: value.rotationAnimation,
                  servicePackagesList: dash.servicePackagesList),
              if (dash.featuredServiceList.isNotEmpty) const VSpace(Sizes.s25),
              if (dash.featuredServiceList.isNotEmpty)
                HeadingRowCommon(
                        title: appFonts.featuredService,
                        isTextSize: true,
                        onTap: () => route.pushNamed(
                            context, routeName.featuredServiceScreen))
                    .paddingSymmetric(horizontal: Insets.i20),
              const VSpace(Sizes.s15),
              if (dash.firstTwoFeaturedServiceList.isNotEmpty)
                ...dash.firstTwoFeaturedServiceList.asMap().entries.map((e) =>
                    FeaturedServicesLayout(
                        data: e.value,
                        addTap: () => dash.onFeatured(context, e.value, e.key,
                            inCart: isInCart(context, e.value.id)),
                        inCart: isInCart(context, e.value.id),
                        onTap: () => route.pushNamed(
                                context, routeName.servicesDetailsScreen,
                                arg: {'services': e.value}).then((e) {
                              dash.getFeaturedPackage(1);
                            })).paddingSymmetric(horizontal: Insets.i20)),
              if (dash.firstTwoFeaturedServiceList.isEmpty)
                ...dash.featuredServiceList.asMap().entries.map((e) =>
                    FeaturedServicesLayout(
                        data: e.value,
                        inCart: isInCart(context, e.value.id),
                        addTap: () => dash.onFeatured(context, e.value, e.key,
                            inCart: isInCart(context, e.value.id)),
                        onTap: () => route.pushNamed(
                                context, routeName.servicesDetailsScreen, arg: {
                              'services': e.value
                            })).paddingSymmetric(horizontal: Insets.i20))
            ]).padding(bottom: Insets.i10),
            if (dash.firstTwoHighRateList.isNotEmpty ||
                dash.highestRateList.isNotEmpty)
              Column(children: [
                HeadingRowCommon(
                    title: appFonts.expertService,
                    isTextSize: true,
                    onTap: () => route.pushNamed(
                        context, routeName.expertServiceScreen)),
                const VSpace(Sizes.s15),
                if (dash.firstTwoHighRateList.isNotEmpty)
                  ...dash.firstTwoHighRateList
                      .asMap()
                      .entries
                      .map((e) => ExpertServiceLayout(
                            data: e.value,
                            onTap: () => route.pushNamed(
                                context, routeName.providerDetailsScreen,
                                arg: {'provider': e.value}),
                          )),
                if (dash.firstTwoHighRateList.isEmpty)
                  ...dash.highestRateList.asMap().entries.map((e) =>
                      ExpertServiceLayout(
                          data: e.value,
                          onTap: () => route.pushNamed(
                              context, routeName.providerDetailsScreen,
                              arg: {'provider': e.value})))
              ])
                  .paddingSymmetric(
                      horizontal: Insets.i20, vertical: Insets.i25)
                  .backgroundColor(appColor(context).fieldCardBg)
          ]);
        });
      });
    });
  }
}
