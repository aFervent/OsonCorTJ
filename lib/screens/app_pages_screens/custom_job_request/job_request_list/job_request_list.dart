import 'package:fixit_user/config.dart';
import 'package:fixit_user/screens/app_pages_screens/custom_job_request/job_request_list/layouts/job_request_list_card.dart';

class JobRequestList extends StatefulWidget {
  const JobRequestList({super.key});

  @override
  State<JobRequestList> createState() => _JobRequestListState();
}

class _JobRequestListState extends State<JobRequestList>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Consumer2<JobRequestListProvider, DashboardProvider>(
        builder: (context1, value, dash, child) {
      return StatefulWrapper(
        onInit: () => Future.delayed(const Duration(milliseconds: 50)).then(
          (_) => value.onInit(context),
        ),
        child: LoadingComponent(
          child: Scaffold(
              appBar: AppBarCommon(title: appFonts.myCustomJobRequest),
              body: RefreshIndicator(
                  onRefresh: () async {
                    value.onRefresh(context);
                  },
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      dash.jobRequestList.isNotEmpty
                          ? ListView(children: [
                              Column(
                                children: [
                                  ...dash.jobRequestList
                                      .asMap()
                                      .entries
                                      .map((data) => JobRequestListCard(
                                            data: data.value,
                                            deleteTap: () => value
                                                .deleteJobRequestConfirmation(
                                                    context, this,data.value.id),
                                          ))
                                ],
                              )
                            ]).paddingSymmetric(horizontal: Insets.i20)
                          : EmptyLayout(
                              widget: Image.asset(eImageAssets.emptyCart,
                                  height: Sizes.s380),
                              title: appFonts.oopsNothingAdd,
                              subtitle: appFonts.noDataFound,
                              isButtonShow: false,
                            ).center(),
                      ButtonCommon(
                        title: appFonts.requestNewJob,
                        margin: 20,
                        onTap: () => route.pushNamed(
                            context, routeName.addJobRequestList),
                      ).marginOnly(bottom: 20)
                    ],
                  ))),
        ),
      );
    });
  }
}
