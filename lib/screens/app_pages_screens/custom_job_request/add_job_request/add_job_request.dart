import 'dart:developer';

import 'package:fixit_user/config.dart';
import 'package:fixit_user/providers/app_pages_providers/job_request_providers/add_job_request_provider.dart';

import 'layouts/form_category_layout.dart';
import 'layouts/form_price_layout.dart';
import 'layouts/form_service_image_layout.dart';

class AddJobRequest extends StatelessWidget {
  const AddJobRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AddJobRequestProvider>(builder: (context1, value, child) {
      return StatefulWrapper(
        onInit: () => Future.delayed(
            const Duration(milliseconds: 20), () => value.onReady(context)),
        child: PopScope(
          canPop: true,
          onPopInvokedWithResult: (didPop, result) {
            log("DDDD :$didPop  || $result");
            value.onBack(false);
          },
          //onPopInvoked: (bool? didPop) => value.onBack(false),
          child: LoadingComponent(
            child: Scaffold(
                appBar: AppBarCommon(
                    title:appFonts.postNewJobRequestTitle,
                    onTap: () => route.pop(context)),
                body: SingleChildScrollView(
                    child: Column(children: [
                      Stack(children: [
                        const FieldsBackground(),
                        Form(
                          key: value.addServiceFormKey,
                          child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FormServiceImageLayout(),
                                FormCategoryLayout(),
                                FormPriceLayout()
                              ]).paddingSymmetric(vertical: Insets.i20),
                        )
                      ]),
                      ButtonCommon(
                          title:  appFonts.post,
                          onTap: () => value.addData(context))
                          .paddingOnly(top: Insets.i40, bottom: Insets.i30)
                    ]).paddingSymmetric(horizontal: Insets.i20))),
          ),
        ),
      );
    });
  }
}
