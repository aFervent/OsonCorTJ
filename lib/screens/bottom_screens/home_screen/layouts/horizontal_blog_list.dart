import '../../../../config.dart';

class HorizontalBlogList extends StatelessWidget {
  final List<BlogModel>? firstTwoBlogList, blogList;

  const HorizontalBlogList({super.key, this.firstTwoBlogList, this.blogList});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: firstTwoBlogList!.isNotEmpty
            ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: firstTwoBlogList!
                        .asMap()
                        .entries
                        .map((e) => LatestBlogLayout(data: e.value))
                        .toList())
                .paddingOnly(left: Insets.i20)
            : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: blogList!
                        .asMap()
                        .entries
                        .map((e) => LatestBlogLayout(data: e.value))
                        .toList())
                .paddingOnly(left: Insets.i20));
  }
}
