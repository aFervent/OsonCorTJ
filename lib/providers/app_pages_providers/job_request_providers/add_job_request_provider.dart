import 'dart:developer';
import 'package:dio/dio.dart'as dio;
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';


import '../../../config.dart';
import '../../../screens/app_pages_screens/custom_job_request/add_job_request/layouts/category_bottom_sheet.dart';
import '../../../screens/app_pages_screens/profile_detail_screen/layouts/selection_option_layout.dart';
import '../../../widgets/alert_message_common.dart';

class AddJobRequestProvider with ChangeNotifier {

  String? durationValue;
  int? taxIndex;
  bool isEdit = false;
  final multiSelectKey = GlobalKey<FormFieldState>();
  TextEditingController filterSearchCtrl = TextEditingController();
  final FocusNode filterSearchFocus = FocusNode();

  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController duration = TextEditingController();
  TextEditingController availableService = TextEditingController();
  TextEditingController minRequired = TextEditingController();
  TextEditingController perServicemanCommission = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController discount = TextEditingController();
  TextEditingController tax = TextEditingController();


  FocusNode titleFocus = FocusNode();
  FocusNode descriptionFocus = FocusNode();
  FocusNode durationFocus = FocusNode();
  FocusNode availableServiceFocus = FocusNode();
  FocusNode minRequiredFocus = FocusNode();
  FocusNode perServicemanCommissionFocus = FocusNode();
  FocusNode amountFocus = FocusNode();
  FocusNode discountFocus = FocusNode();
  FocusNode taxFocus = FocusNode();

  XFile? imageFile;
  GlobalKey<FormState> addServiceFormKey = GlobalKey<FormState>();
  String? image;
  JobRequestModel? services;
  List<CategoryModel> newCategoryList = [];
  List<CategoryModel> categories = [],
      newCatList = [];
  List selectedCategory =[];

  // on page initialise data fetch
  onReady(context) async {
    // TODO: implement initState
    log("dfn");
    dynamic data = ModalRoute
        .of(context)!
        .settings
        .arguments ?? "";
    if (data != "") {
      isEdit = data["isEdit"] ?? false;
      services = data['service'];
      title.text= services!.title!;
      description.text= services!.description!;
      duration.text= services!.duration!;
      log("services!.durationUnit! :${services!.durationUnit!.capitalizeFirst()}");
      durationValue= services!.durationUnit!.capitalizeFirst();
      minRequired.text= services!.requiredServicemen!.toString();
      amount.text = services!.finalPrice!.toString();
      if (services!.categoryIds != null) {

        services!.categoryIds!.asMap().entries.forEach((e) {
          int index = allCategoryList.indexWhere((element) => element.id.toString() == e.value);
          if(index>=0) {
            if (!categories.contains(allCategoryList[index])) {
              categories.add(allCategoryList[index]);
            }
            if(!selectedCategory.contains(allCategoryList[index].id)){
              selectedCategory.add(allCategoryList[index].id);
            }
          }
          notifyListeners();
        });
      }
    }
    descriptionFocus.addListener(() {
      notifyListeners();
    });


  }


  //on back data clear
  onBack(isBack) {
    isEdit = false;

    filterSearchCtrl.text = "";
    title.text = "";
    imageFile = null;
    description.text = "";
    duration.text = "";
    availableService.text = "";
    minRequired.text = "";
    discount.text = "";

    amount.text = "";
    taxIndex = null;


    taxIndex = null;
    durationValue = null;
    imageFile = null;
appArray.serviceImageList =[];
    description.text = "";
    categories =[];
    selectedCategory =[];

    notifyListeners();
  }


  //select duration unit
  onChangeDuration(val) {
    durationValue = val;
    notifyListeners();
  }


  //category selection
  onChangeCategory(CategoryModel val, id) {

    //categories = val;
    if (!categories.contains(val)) {

      categories.add(val);
      notifyListeners();
    } else {
      categories.remove(val);
      notifyListeners();
    }

    if(!selectedCategory.contains(val.id)){
      selectedCategory.add(val.id);
    }else{
      selectedCategory.remove(val.id);
    }

    notifyListeners();

  }


  // GET IMAGE FROM GALLERY
  Future getImage(context, source, isThumbnail) async {
    final ImagePicker picker = ImagePicker();
    route.pop(context);
    imageFile = (await picker.pickImage(source: source, imageQuality: 70))!;
    if(imageFile !=null) {
      appArray.serviceImageList.add(imageFile!);
    }
    notifyListeners();
  }


  //on image pick
  onImagePick(context, isThumbnail) {
    showLayout(context, onTap: (index) {
      if (index == 0) {
        getImage(context, ImageSource.gallery, isThumbnail);
        notifyListeners();
      } else {
        getImage(context, ImageSource.camera, isThumbnail);
        notifyListeners();
      }
    });
  }

  onRemoveNetworkServiceImage( {index}) {
    services!.media!.removeAt(index);
    notifyListeners();
  }

  // on remove service image
  onRemoveServiceImage( {index}) {
    appArray.serviceImageList.removeAt(index);
    notifyListeners();
  }

  onBottomSheet(context)async {
    log("allCategoryList :${allCategoryList.length}");
    if(allCategoryList.isNotEmpty) {
      newCatList = allCategoryList;

      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return const CategoryBottomSheet();
        },
      );
    }else{
      await getAllCategory();

      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return const CategoryBottomSheet();
        },
      );
    }
  }

  //all category list
  getAllCategory({search}) async {
    // notifyListeners();
    try {
      await apiServices.getApi(api.categoryList, []).then((value) {
        if (value.isSuccess!) {
          allCategoryList = [];
          List category = value.data;
          log("DD :${category.length}");
          for (var data in category.reversed.toList()) {
            if (!allCategoryList.contains(CategoryModel.fromJson(data))) {
              allCategoryList.add(CategoryModel.fromJson(data));
            }
            notifyListeners();
          }
          newCatList = allCategoryList;
notifyListeners();
        }
      });
    } catch (e) {
      log("EEEE AllCategory:::$e");
      notifyListeners();
    }
  }

  //add data validation
  addData(context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    if (addServiceFormKey.currentState!.validate()) {
        if (appArray.serviceImageList.isNotEmpty) {
          if (categories.isNotEmpty) {
            if (durationValue != null) {
              addServiceApi(context);
            } else {
              snackBarMessengers(context,
                  message:
                  language(context, appFonts.pleaseSelectDurationUnit));
            }
          } else {
            snackBarMessengers(context,
                message: language(context, appFonts.selectCategory));
          }
      } else {
        snackBarMessengers(context,
            message: language(context, appFonts.pleaseUploadServiceImages));
      }
    }
  }


//add service
  addServiceApi(context) async {
    showLoading(context);
    notifyListeners();

    try {
      dynamic mimeTypeData;

      var body = {
        "title": title.text,
        "initial_price": amount.text, "tax_id": taxIndex,
        "duration": duration.text,
        "duration_unit": durationValue!.toLowerCase(),
        "description": description.text,
        "required_servicemen": minRequired.text,
        "booking_date":DateFormat("dd-MMM-yyyy,hh:mm aa").format(DateTime.now()),
        for (var i = 0; i < categories.length; i++)
          "category_ids[$i]": categories[i].id,
      };
      dio.FormData formData = dio.FormData.fromMap(body);

      for (var file in appArray.serviceImageList) {
        log("FILE :$file");
        formData.files.addAll([
          MapEntry(
              "image[]",
              await dio.MultipartFile.fromFile(
                file.path.toString(),
                filename: file.name.toString(),
              )),
        ]);
      }
      log("BODU :$body");
      log("BODU :${formData.files}");
      await apiServices
          .postApi(api.serviceRequest, formData, isToken: true,isData:true)
          .then((value) async {
        hideLoading(context);
        notifyListeners();
        log("AAAA: ${value.data} || ${value.message}");
        if (value.isSuccess!) {
          final userApi =
          Provider.of<DashboardProvider>(context, listen: false);
          await userApi.getJobRequest();
          onBack(false);
          snackBarMessengers(context,
              message: "Job Request Add Successfully",
              color: appColor(context).primary);

          notifyListeners();

          route.pop(context);
        } else {
          final userApi =
          Provider.of<DashboardProvider>(context, listen: false);
          await userApi.getJobRequest();
          Fluttertoast.showToast(msg: value.message);
        }
      });
    } catch (e) {
      hideLoading(context);
      notifyListeners();
      Fluttertoast.showToast(msg: e.toString());
      log("EEEE addServiceman : $e");
    }
  }

  showLayout(context, {Function(int)?  onTap}) async {
    showDialog(
      context: context,
      builder: (context1) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(AppRadius.r12))),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(language(context, appFonts.selectOne),
                    style: appCss.dmDenseBold18
                        .textColor(appColor(context).darkText)),
                const Icon(CupertinoIcons.multiply).inkWell(onTap: ()=> route.pop(context))
              ]),
              const VSpace(Sizes.s20),
              ...appArray.selectList
                  .asMap()
                  .entries
                  .map((e) => SelectOptionLayout(
                data: e.value,
                index: e.key,
                list: appArray.selectList,
                onTap: () => onTap!(e.key),))

            ],
          ),
        );
      },
    );
  }
}
