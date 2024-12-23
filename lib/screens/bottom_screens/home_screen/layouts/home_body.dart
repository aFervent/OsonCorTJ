import '../../../../config.dart';
import 'horizontal_blog_list.dart';
import 'new_job_request_layout.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(builder: (context3, dash, child) {
      return Consumer<HomeScreenProvider>(builder: (context1, value, child) {
        return ListView(children: [
          if (dash.bannerList.isNotEmpty)
            BannerLayout(
                bannerList: dash.bannerList,
                onPageChanged: (index, reason) => value.onSlideBanner(index),
                onTap: (type, id) => value.onBannerTap(context, type, id)),
          if (dash.bannerList.length > 1) const VSpace(Sizes.s12),
          if (dash.bannerList.length > 1)
            DotIndicator(
                list: dash.bannerList, selectedIndex: value.selectIndex),
          const VSpace(Sizes.s20),
          if (dash.couponList.isNotEmpty)
            HeadingRowCommon(
                    title: appFonts.coupons,
                    isTextSize: true,
                    onTap: () => route.pushNamed(
                        context, routeName.couponListScreen, arg: true))
                .paddingSymmetric(horizontal: Insets.i20),
          if (dash.couponList.isNotEmpty) const VSpace(Sizes.s15),
          if (dash.couponList.isNotEmpty)
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: dash.couponList
                        .asMap()
                        .entries
                        .map((e) => HomeCouponLayout(data: e.value))
                        .toList())),
          VSpace(dash.couponList.isNotEmpty ? Sizes.s25 : Sizes.s15),
          const CategoryFeaturePackageServices(),
          if (dash.firstTwoHighRateList.isNotEmpty ||
              dash.highestRateList.isNotEmpty)
            const VSpace(Sizes.s25),
          if (appSettingModel != null&& appSettingModel!.activation!.blogsEnable == "1")
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (dash.blogList.isNotEmpty)
                  HeadingRowCommon(
                    title: appFonts.latestBlog,
                    isTextSize: true,
                    onTap: () =>
                        route.pushNamed(context, routeName.latestBlogViewAll),
                  ).paddingSymmetric(horizontal: Insets.i20),
                HorizontalBlogList(
                    blogList: dash.blogList,
                    firstTwoBlogList: dash.firstTwoBlogList),
                const VSpace(Sizes.s25),
              ],
            ),

          const NewJobRequestLayout(),
          const VSpace(Sizes.s50)
        ]);
      });
    });
  }
}
