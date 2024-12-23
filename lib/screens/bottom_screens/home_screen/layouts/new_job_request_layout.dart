import '../../../../config.dart';

class NewJobRequestLayout extends StatelessWidget {
  const NewJobRequestLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(language(context, appFonts.customJobRequestQuestion),
            textAlign: TextAlign.center,
            style:
                appCss.dmDenseMedium14.textColor(appColor(context).darkText)),
        const VSpace(Sizes.s20),
        ButtonCommon(
          title: appFonts.postNewJobRequest,
          margin: 35,
          onTap: () => route.pushNamed(context, routeName.jobRequestList),
          style: appCss.dmDenseMedium12.textColor(
            appColor(context).whiteBg,
          ),
        )
      ],
    )
        .paddingAll(20)
        .boxBorderExtension(context,
            color: appColor(context).primary.withOpacity(.10),
            isShadow: true,
            bColor: appColor(context).primary.withOpacity(.10))
        .marginSymmetric(horizontal: Sizes.s20);
  }
}
