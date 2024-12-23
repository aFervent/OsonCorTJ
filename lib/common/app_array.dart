import 'dart:developer';

import 'package:fixit_user/config.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class AppArray {
  var onBoardingList = [
    {
      "title": appFonts.welcomeToJust,
      "subtext": appFonts.simplyTouch,
    },
    {
      "title": appFonts.findYour,
      "subtext": appFonts.selectServiceFrom,
    },
    {
      "title": appFonts.bookYourDate,
      "subtext": appFonts.chooseAnAppropriate,
    },
    {
      "title": appFonts.goOnPayment,
      "subtext": appFonts.pickYourPayment,
    },
  ];

  var chatHistoryOptionList = [appFonts.refresh, appFonts.clearChat];

  var localList = <Locale>[
    const Locale('en'),
    const Locale('ar'),
    const Locale('fr'),
    const Locale('es'),
  ];

// language list
  var languageList = [
    {
      "title": appFonts.english,
      "locale": const Locale('en', 'EN'),
      "icon": eImageAssets.en,
      "code": "en"
    },
    {
      "title": appFonts.arabic,
      "locale": const Locale("ar", 'AE'),
      "icon": eImageAssets.ar,
      "code": "ar"
    },
    {
      "title": appFonts.french,
      "locale": const Locale('fr', 'FR'),
      "icon": eImageAssets.fr,
      "code": "fr"
    },
    {
      "title": appFonts.spanish,
      "locale": const Locale("es", 'ES'),
      "icon": eImageAssets.es,
      "code": "es"
    },
  ];

  var dashboardList = [
    {
      "title": appFonts.home,
      "icon": eSvgAssets.homeOut,
      "icon2": eSvgAssets.homeFill
    },
    {
      "title": appFonts.booking,
      "icon": eSvgAssets.bookingOut,
      "icon2": eSvgAssets.bookingFill
    },
    {
      "title": appFonts.offer,
      "icon": eSvgAssets.offerOut,
      "icon2": eSvgAssets.offerFill
    },
    {
      "title": appFonts.profile,
      "icon": eSvgAssets.profileOut,
      "icon2": eSvgAssets.profileFill
    },
  ];

  var bannerList = [eImageAssets.banner1, eImageAssets.banner2];

  var categoriesList = [
    {"title": appFonts.acRepair, "icon": eSvgAssets.ac},
    {"title": appFonts.cleaning, "icon": eSvgAssets.cleaning},
    {"title": appFonts.carpenter, "icon": eSvgAssets.carpenter},
    {"title": appFonts.cooking, "icon": eSvgAssets.cooking},
    {"title": appFonts.electrician, "icon": eSvgAssets.electrician},
    {"title": appFonts.painter, "icon": eSvgAssets.painter},
    {"title": appFonts.plumber, "icon": eSvgAssets.plumber},
    {"title": appFonts.salon, "icon": eSvgAssets.salon}
  ];

  var servicesList = [
    {
      "title": appFonts.cleaningPackage,
      "icon": eImageAssets.cleaning,
      "price": "\$20.05",
      "color": const Color(0XFFFD4868)
    },
    {
      "title": appFonts.paintingPackage,
      "icon": eImageAssets.paint,
      "price": "\$15.52",
      "color": const Color(0XFF48BFFD)
    },
    {
      "title": appFonts.cookingPackage,
      "icon": eImageAssets.fire,
      "price": "\$15.52",
      "color": const Color(0XFF808CFF)
    },
    {
      "title": appFonts.acRepair,
      "icon": eImageAssets.ac,
      "price": "\$15.52",
      "color": const Color(0XFFFF7456)
    },
    {
      "title": appFonts.salonPackage,
      "icon": eImageAssets.salon,
      "price": "\$15.52",
      "color": const Color(0XFFB75CFF)
    },
    {
      "title": appFonts.plumberPackage,
      "icon": eImageAssets.plumber,
      "price": "\$15.52",
      "color": const Color(0XFF17D792)
    },
    {
      "title": appFonts.electricianPackage,
      "icon": eImageAssets.electrician,
      "price": "\$15.52",
      "color": const Color(0XFF487AFD)
    },
    {
      "title": appFonts.carpenterPackage,
      "icon": eImageAssets.carpenter,
      "price": "\$15.52",
      "color": const Color(0XFFFDB448)
    },
  ];

  var featuredList = [
    {
      "profile": eImageAssets.fsProfile1,
      "name": appFonts.arleneMcCoy,
      "rating": "3.0",
      "discount": "10%",
      "image": eImageAssets.fs1,
      "work": appFonts.cleaningBathroom,
      "offerPrice": "\$40.56",
      "price": "\$30",
      "time": appFonts.min30,
      "description": appFonts.foamJet,
      "serviceman": "Min 2 servicemen required"
    },
    {
      "profile": eImageAssets.fsProfile2,
      "name": appFonts.darleneRobertson,
      "rating": "3.0",
      "discount": "",
      "image": eImageAssets.fs2,
      "work": appFonts.furnishing,
      "offerPrice": "\$15.23",
      "price": "\$15.23",
      "time": appFonts.min30,
      "description": appFonts.foamJet,
      "serviceman": "Min 1 servicemen required"
    }
  ];

  var expertServicesList = [
    {
      "name": appFonts.leslie,
      "rating": "4.0",
      "image": eImageAssets.es1,
      "location": appFonts.santaAna,
      "status": "online",
      "subtext": appFonts.paintingService
    },
    {
      "name": appFonts.estherHoward,
      "rating": "4.0",
      "image": eImageAssets.es2,
      "location": appFonts.allentown,
      "status": "offline",
      "subtext": appFonts.paintingCleaning
    },
    {
      "name": appFonts.guyHawkins,
      "rating": "3.0",
      "image": eImageAssets.es3,
      "location": appFonts.mesaNew,
      "status": "online",
      "subtext": appFonts.salonService
    },
  ];

  var latestBlogList = [
    {
      "name": appFonts.switchboard,
      "image": eImageAssets.lb1,
      "subtext": appFonts.woodenPartition,
      "date": appFonts.feb25,
      "message": "23",
      "by": appFonts.byAdmin
    },
    {
      "name": appFonts.manTrimming,
      "image": eImageAssets.lb2,
      "subtext": appFonts.woodenPartition,
      "date": appFonts.feb25,
      "message": "30",
      "by": appFonts.byAdmin
    },
    {
      "name": appFonts.bringJoy,
      "image": eImageAssets.lb3,
      "subtext": appFonts.mar30,
      "date": appFonts.feb25,
      "message": "10",
      "by": appFonts.byAdmin
    },
  ];

  var profileList = [
    {
      "title": appFonts.general,
      "data": [
        {
          "icon": eSvgAssets.like,
          "title": appFonts.favouriteList,
          "isArrow": true
        },
        {
          "icon": eSvgAssets.locationOut1,
          "title": appFonts.manageLocations,
          "isArrow": true
        },
        {
          "icon": eSvgAssets.coupon,
          "title": appFonts.myReviews,
          "isArrow": true
        },
        {
          "icon": eSvgAssets.chat,
          "title": appFonts.chatHistory,
          "isArrow": true
        }
      ]
    },
    {
      "title": appFonts.aboutApp,
      "data": [
        {
          "icon": eSvgAssets.mobile,
          "title": appFonts.appDetails,
          "description": appFonts.aboutUs,
          "isArrow": true
        },
        /* {"icon": eSvgAssets.rate, "title": appFonts.rateUs, "isArrow": false},*/
        {
          "icon": eSvgAssets.share,
          "title": appFonts.shareApp,
          "isArrow": false
        },
      ]
    },
    {
      "title": appFonts.becomeProvider,
    },
    {
      "title": appFonts.alertZone,
      "data": [
        {
          "icon": eSvgAssets.delete,
          "title": appFonts.deleteAccount,
          "isArrow": false
        },
        {"icon": eSvgAssets.logout, "title": appFonts.logOut, "isArrow": false}
      ]
    },
  ];

  var guestProfileList = [
    {
      "title": appFonts.aboutApp,
      "data": [
        {
          "icon": eSvgAssets.mobile,
          "title": appFonts.appDetails,
          "description": appFonts.aboutUs,
          "isArrow": true
        },
        /*{"icon": eSvgAssets.rate, "title": appFonts.rateUs, "isArrow": false},*/
        {
          "icon": eSvgAssets.share,
          "title": appFonts.shareApp,
          "isArrow": false
        },
      ]
    },
    {
      "title": appFonts.becomeProvider,
    }
  ];

  //app setting
  List appSetting(isTheme) => [
        {
          'title': isTheme ? appFonts.lightTheme : appFonts.darkTheme,
          'icon': eSvgAssets.dark
        },
        {'title': appFonts.changeCurrency, 'icon': eSvgAssets.currency},
        {'title': appFonts.changeLanguage, 'icon': eSvgAssets.translate},
        {'title': appFonts.changePassword, 'icon': eSvgAssets.lock}
      ];

//currency
  var currencyList = [
    {
      'title': appFonts.usDollar,
      'icon': eSvgAssets.usCurrency,
      "code": "USD",
      "symbol": "\$",
      'USD': 1,
      'INR': 83.24,
      'POU': 0.83,
      'EUR': 0.96,
    },
    {
      'title': appFonts.euro,
      'icon': eSvgAssets.euroCurrency,
      "code": "EUR",
      "symbol": '€',
      'USD': 1.05,
      'INR': 87.10,
      'POU': 0.87,
      'EUR': 1,
    },
    {
      'title': appFonts.inr,
      'icon': eSvgAssets.inCurrency,
      "code": "INR",
      "symbol": '₹',
      'USD': 0.012,
      'INR': 1,
      'POU': 0.010,
      'EUR': 0.011,
    },
    {
      'title': appFonts.pound,
      'icon': eSvgAssets.ukCurrency,
      "code": "POU",
      "symbol": "£",
      'USD': 1.22,
      'INR': 101.74,
      'POU': 1,
      'EUR': 1.15,
    }
  ];

  var homeCouponList = [
    {
      "title": appFonts.bankOfAmerica,
      "code": appFonts.code,
      "off": appFonts.off30
    },
    {
      "title": appFonts.bankOfAmerica,
      "code": appFonts.code,
      "off": appFonts.off30
    },
    {
      "title": appFonts.bankOfAmerica,
      "code": appFonts.code,
      "off": appFonts.off30
    },
    {
      "title": appFonts.bankOfAmerica,
      "code": appFonts.code,
      "off": appFonts.off30
    },
    {
      "title": appFonts.bankOfAmerica,
      "code": appFonts.code,
      "off": appFonts.off30
    },
    {
      "title": appFonts.bankOfAmerica,
      "code": appFonts.code,
      "off": appFonts.off30
    },
  ];

  var historyList = [
    {
      "title": appFonts.paintingCancelled,
      "date": appFonts.aug14,
      "price": "30.50",
      "status": appFonts.credit
    },
    {
      "title": appFonts.paintingCancelled,
      "date": appFonts.aug14,
      "price": "33.50",
      "status": appFonts.debit
    },
    {
      "title": appFonts.paintingCancelled,
      "date": appFonts.aug14,
      "price": "10.50",
      "status": appFonts.debit
    },
    {
      "title": appFonts.paintingCancelled,
      "date": appFonts.aug14,
      "price": "38.50",
      "status": appFonts.credit
    },
    {
      "title": appFonts.paintingCancelled,
      "date": appFonts.aug14,
      "price": "50.50",
      "status": appFonts.debit
    },
    {
      "title": appFonts.paintingCancelled,
      "date": appFonts.aug14,
      "price": "20.50",
      "status": appFonts.debit
    },
    {
      "title": appFonts.paintingCancelled,
      "date": appFonts.aug14,
      "price": "19.50",
      "status": appFonts.credit
    },
  ];

  var favouriteTabList = [appFonts.provider, appFonts.service];

  var favouriteProviderList = [
    {
      "title": appFonts.leslie,
      "image": eImageAssets.es1,
      "subtext": appFonts.paintingCleaning,
      "rate": "3.0"
    },
    {
      "title": appFonts.estherHoward,
      "image": eImageAssets.es2,
      "subtext": appFonts.paintingService,
      "rate": "4.6"
    },
    {
      "title": appFonts.guyHawkins,
      "image": eImageAssets.es3,
      "subtext": appFonts.salonService,
      "rate": "2.8"
    },
    {
      "title": appFonts.leslie,
      "image": eImageAssets.es1,
      "subtext": appFonts.paintingCleaning,
      "rate": "2.8"
    },
    {
      "title": appFonts.guyHawkins,
      "image": eImageAssets.es3,
      "subtext": appFonts.salonService,
      "rate": "2.8"
    },
  ];

  var favouriteServicesList = [
    {
      "title": "Ac water drop solution",
      "image": eImageAssets.fsl1,
      "subtext": "Ac repair",
      "price": "30.56"
    },
    {
      "title": "Feather hair cutting",
      "image": eImageAssets.fsl2,
      "subtext": "Salon",
      "price": "15"
    },
    {
      "title": "Furniture & carpenter",
      "image": eImageAssets.fsl3,
      "subtext": "Carpenter",
      "price": "25"
    },
    {
      "title": "Wall painting",
      "image": eImageAssets.fsl4,
      "subtext": "Painter",
      "price": "58.23"
    },
    {
      "title": "Marriage cooking",
      "image": eImageAssets.fsl5,
      "subtext": "Cooking",
      "price": "41.25"
    },
    {
      "title": "Light fitting & repair",
      "image": eImageAssets.fsl6,
      "subtext": "Electrician",
      "price": "10.26"
    },
  ];

  var myLocationList = [
    {
      "icon": eSvgAssets.homeFill,
      "name": "Kristin Watson",
      "number": "(406) 555-0120",
      "place": "Home",
      "address": "3891 Ranchview Dr. Richardson,",
      "set": "Set as a primary location",
      "zipCode": "62639",
      "is_primary": "1",
      "type": "home",
      "city": "Wembley",
      "country_id": 2,
      "state_id": 3,
      "country": {"id": 4, "name": "Afghanistan"},
      "state": {"id": 42, "name": "Badakhshan"}
    },
    {
      "icon": eSvgAssets.beg,
      "name": "Floyd Miles",
      "number": "(684) 555-0102",
      "place": "Work",
      "address": "2118 Thornridge Cir. Syracuse,",
      "set": "Not set as a primary location",
      "zipCode": "62639",
      "city": "Wembley",
      "is_primary": "0",
      "type": "Work",
      "country_id": 1,
      "state_id": 4,
      "country": {"id": 4, "name": "Afghanistan"},
      "state": {"id": 42, "name": "Badakhshan"}
    },
  ];

  var reviewList = [
    {
      "image": eImageAssets.profile,
      "name": "Kurt Bates",
      "service": "Cleaning service",
      "rate": "4.0",
      "review":
          "“I just love their service & the staff nature for work, I’d like to hire them again”",
      "time": "12 min ago",
    },
    {
      "image": eImageAssets.profile,
      "name": "Jane Cooper",
      "service": "Painting service",
      "rate": "4.0",
      "review":
          "This provider has the best staff who assist us until the service is complete. Thank you!",
      "time": "15 days ago",
    },
    {
      "image": eImageAssets.profile,
      "name": "Lorri Warf",
      "service": "Ac cleaning",
      "rate": "4.0",
      "review": "“I love their work with ease, Thank you !”",
      "time": "28 days ago",
    },
  ];

  var editReviewList = [
    {"icon": eSvgAssets.bad, "title": appFonts.bad, "gif": eGifAssets.bad},
    {"icon": eSvgAssets.okay, "title": appFonts.okay, "gif": eGifAssets.okay},
    {"icon": eSvgAssets.good, "title": appFonts.good, "gif": eGifAssets.good},
    {
      "icon": eSvgAssets.amazing,
      "title": appFonts.amazing,
      "gif": eGifAssets.amazing
    },
    {
      "icon": eSvgAssets.excellent,
      "title": appFonts.excellent,
      "gif": eGifAssets.excellent
    },
  ];

  var appDetailsList = [
    /* {
      "title": appFonts.aboutUs,
      "icon": eSvgAssets.about,
    },
    {
      "title": appFonts.privacyPolicy,
      "icon": eSvgAssets.privacy,
    },
    {
      "title": appFonts.cancellationPolicy,
      "icon": eSvgAssets.cancellation,
    },
    {
      "title": appFonts.refundPolicy,
      "icon": eSvgAssets.refund,
    },
    {
      "title": appFonts.helpSupport,
      "icon": eSvgAssets.help,
    },*/
  ];

  var selectErrorList = [
    "Purchase error",
    "Technical error",
    "App error",
    "Feedback"
  ];

  var notificationList = [
    {
      "icon": eSvgAssets.clock,
      "title": "Reminder !",
      "time": "1 min",
      "message": "You have booked plumber service today at 6:30pm.",
      "isRead": false
    },
    {
      "icon": eSvgAssets.about,
      "title": "Service start",
      "time": "2 min",
      "message": "Jane cooper has started service of cleaning.",
      "isRead": false
    },
    {
      "icon": eSvgAssets.receipt,
      "title": "Add new image",
      "time": "2 min",
      "message": "Add a new carpenter & furnishing category service picture.",
      "image": eImageAssets.notiImage,
      "isRead": true
    },
    {
      "icon": eSvgAssets.purse,
      "title": "Payment update",
      "time": "2 min",
      "message": "Your payment is done of cleaning service.",
      "isRead": true
    },
    {
      "icon": eSvgAssets.receipt,
      "title": "Update status",
      "time": "2 min",
      "message": "Booking status has been changed from pending to accepted.",
      "isRead": true
    },
    {
      "icon": eSvgAssets.clock,
      "title": "Reminder !",
      "time": "1 min",
      "message": "You have booked plumber service today at 6:30pm.",
      "isRead": true
    },
  ];

  List countryList = [
    {"id": 1, "title": "India"},
    {"id": 2, "title": "Pakistan"},
    {"id": 3, "title": "Afghanistan"},
    {"id": 4, "title": "Shri lanka"},
    {"id": 5, "title": "Australia"},
    {"id": 6, "title": "England"},
    {"id": 7, "title": "South africa"},
  ];

  List stateList = [
    {"id": 1, "title": "Maharashtra"},
    {"id": 2, "title": "Gujarat"},
    {"id": 3, "title": "Delhi"},
    {"id": 4, "title": "Rajasthan"},
    {"id": 5, "title": "Madhya Pradesh"},
    {"id": 6, "title": "Punjab"},
  ];

  List categoryList = [
    {
      "icon": eSvgAssets.cleaning,
      "isCheck": false,
      "title": appFonts.cleaning,
    },
    {
      "icon": eSvgAssets.ac,
      "isCheck": false,
      "title": appFonts.acRepair,
    },
    {
      "icon": eSvgAssets.carpenter,
      "isCheck": false,
      "title": appFonts.carpenter,
    },
    {
      "icon": eSvgAssets.cooking,
      "isCheck": false,
      "title": appFonts.cooking,
    },
    {
      "icon": eSvgAssets.electrician,
      "isCheck": false,
      "title": appFonts.electrician,
    },
    {
      "icon": eSvgAssets.painter,
      "isCheck": false,
      "title": appFonts.painter,
    },
    {
      "icon": eSvgAssets.plumber,
      "isCheck": false,
      "title": appFonts.plumber,
    },
  ];

  var ratingList = [
    {"rate": "5", "icon": eSvgAssets.star5, "value": 5},
    {"rate": "4", "icon": eSvgAssets.star4, "value": 4},
    {"rate": "3", "icon": eSvgAssets.star3, "value": 3},
    {"rate": "2", "icon": eSvgAssets.star2, "value": 2},
    {"rate": "1", "icon": eSvgAssets.star1, "value": 1},
  ];

  var subCategoriesList = [
    {"icon": eSvgAssets.fan, "title": appFonts.acRepair},
    {"icon": eSvgAssets.installation, "title": appFonts.installation},
    {"icon": eSvgAssets.ac, "title": appFonts.hanging},
    {"icon": eSvgAssets.servicing, "title": appFonts.servicing},
    {"icon": eSvgAssets.painter, "title": appFonts.painter},
  ];

  var filterList = [
    appFonts.category,
    appFonts.priceRating,
    appFonts.distance,
  ];

  var filterList1 = [
    appFonts.provider,
    appFonts.priceRating,
    appFonts.distance,
  ];

  List experienceList = [
    {
      "id": 0,
      "title": appFonts.highestExperience,
    },
    {"id": 1, "title": appFonts.lowestExperience},
    {"id": 2, "title": appFonts.highestServed},
    {"id": 3, "title": appFonts.lowestServed},
  ];

  List providerExpList = [
    {
      "image": eImageAssets.fsProfile2,
      "title": "Templeton Peck",
      "experience": "2 years of experience",
      "services": "10",
      "isCheck": false,
    },
    {
      "image": eImageAssets.fsProfile2,
      "title": "Templeton Peck",
      "experience": "2 years of experience",
      "services": "10",
      "isCheck": false,
    },
    {
      "image": eImageAssets.fsProfile2,
      "title": "Templeton Peck",
      "experience": "2 years of experience",
      "services": "10",
      "isCheck": false,
    },
    {
      "image": eImageAssets.fsProfile2,
      "title": "Templeton Peck",
      "experience": "2 years of experience",
      "services": "10",
      "isCheck": false,
    },
    {
      "image": eImageAssets.fsProfile2,
      "title": "Templeton Peck",
      "experience": "2 years of experience",
      "services": "10",
      "isCheck": false,
    },
    {
      "image": eImageAssets.fsProfile2,
      "title": "Templeton Peck",
      "experience": "2 years of experience",
      "services": "10",
      "isCheck": false,
    },
    {
      "image": eImageAssets.fsProfile2,
      "title": "Templeton Peck",
      "experience": "2 years of experience",
      "services": "10",
      "isCheck": false,
    },
  ];

  var servicesImageList = [
    eImageAssets.servicesImage,
    eImageAssets.s1,
    eImageAssets.s2
  ];

  var reviewRating = [
    {
      "star": appFonts.star5,
      "percentage": "84",
    },
    {
      "star": appFonts.star4,
      "percentage": "9",
    },
    {
      "star": appFonts.star3,
      "percentage": "4",
    },
    {
      "star": appFonts.star2,
      "percentage": "2",
    },
    {
      "star": appFonts.star1,
      "percentage": "1",
    },
  ];

  List reviewLowHighList = [
    {"id": 0, "title": appFonts.lowestRate},
    {"id": 1, "title": appFonts.highestRate},
  ];

  var languagesList = [appFonts.english, appFonts.spanish, appFonts.chines];

  var servicemanChooseList = [
    appFonts.letAppChoose,
    appFonts.selectServicemenAs
  ];

  var selectList = [
    {"image": eSvgAssets.gallery, "title": appFonts.chooseFromGallery},
    {"image": eSvgAssets.camera, "title": appFonts.openCamera}
  ];

  var selectRepaymentOrCancel = [
    {"title": appFonts.cancelBooking},
    {"title": appFonts.cashOnDelivery},
    {"title": appFonts.selectAnotherPayment}
  ];

  List monthList = [
    {"title": "January", "index": 1},
    {"title": "February", "index": 2},
    {"title": "March", "index": 3},
    {"title": "April", "index": 4},
    {"title": "May", "index": 5},
    {"title": "June", "index": 6},
    {"title": "July", "index": 7},
    {"title": "August", "index": 8},
    {"title": "September", "index": 9},
    {"title": "October", "index": 10},
    {"title": "November", "index": 11},
    {"title": "December", "index": 12}
  ];

  List<String> hourList = List.generate(12, (index) {
    DateTime time = DateTime.now().add(Duration(hours: index));
    String formattedTime = DateFormat('h').format(time);
    log("formattedTime :$formattedTime");
    return formattedTime;
  });

  List<String> minList = List.generate(60, (index) {
    DateTime time = DateTime.now().add(Duration(minutes: index));
    String formattedTime = DateFormat('mm').format(time);
    log("$time:::::::$formattedTime");
    return formattedTime;
  });

  List<String> dayList = List.generate(2, (index) {
    DateTime time = DateTime.now().add(Duration(days: index));
    String formattedTime = DateFormat('a').format(time);
    log("$time:::::::$formattedTime");
    return formattedTime;
  });

  var amPmList = ["AM", "PM"];

  var timeSlotsList = [
    "1:00",
    "2:30",
    "2:50",
    "3:00",
    "4:15",
    "4:30",
    "4:55",
    "5:15",
    "5:20",
    "5:35",
    "6:25",
    "7:15",
    "7:30",
  ];

  var cartList = [
    {
      "isPackage": false,
      "image": eImageAssets.es1,
      "name": "Kurt Bates",
      "price": "22.00",
      "rating": "3.0",
      "service": "Ac cleaning service",
      "discount": "10% off",
      "date": "6 Sep, 2023",
      "time": "6:00 PM",
      "servicemanList": []
    },
    {
      "isPackage": false,
      "image": eImageAssets.es3,
      "name": "Darlene Rubbi",
      "price": "15.23",
      "rating": "4.0",
      "date": "6 Sep, 2023",
      "time": "6:00 PM",
      "service": "Furnishing & carpentry",
      "discount": "10% off",
      "servicemanList": [
        {"image": eImageAssets.es2, "name": "Stella Milevski", "rating": "3.0"}
      ]
    },
    {
      "isPackage": true,
      "image": eImageAssets.es3,
      "name": "Kurt Bates",
      "price": "15.23",
      "rating": "4.0",
      "service": "Cleaning package",
      "servicemanList": [
        {"image": eImageAssets.es1, "name": "Templeton Peck", "rating": "3.0"},
        {"image": eImageAssets.es2, "name": "Lynn Tanner", "rating": "3.5"}
      ]
    },
  ];

  var couponList = [
    {
      "title": "MasterCard",
      "code": "#A125",
      "percentage": "30%",
      "validity": "16th Apr, 2023"
    },
    {
      "title": "Visa",
      "code": "#A126",
      "percentage": "20%",
      "validity": "13th Aug, 2023"
    },
    {
      "title": "ICICI",
      "code": "#A127",
      "percentage": "40%",
      "validity": "19th Oct, 2023"
    },
    {
      "title": "HDFC",
      "code": "#A128",
      "percentage": "30%",
      "validity": "13th Aug, 2023"
    },
    {
      "title": "Axis",
      "code": "#A129",
      "percentage": "10%",
      "validity": "12th Sep, 2023"
    },
  ];

  var paymentMethodList = [
    {
      "image": eSvgAssets.wallet,
      "title": appFonts.wallet,
      "value": appFonts.wallet
    },
    {
      "image": eSvgAssets.wallet,
      "title": appFonts.paypal,
      "value": appFonts.paypal
    },
    {
      "image": eSvgAssets.razorpay,
      "title": appFonts.razorPay,
      "value": appFonts.wallet
    },
    {
      "image": eSvgAssets.stripe,
      "title": appFonts.stripe,
      "value": appFonts.wallet
    },
    {
      "image": eSvgAssets.visa,
      "title": appFonts.mastercardVisa,
      "value": appFonts.wallet
    },
    {
      "image": eSvgAssets.cash,
      "title": appFonts.payOnHold,
      "value": appFonts.onHand
    },
  ];

  var paymentGatewayList = [
    {"id": 0, "title": appFonts.razorPay, 'icon': eSvgAssets.razorpay},
    {"id": 1, "title": appFonts.stripe, 'icon': eSvgAssets.stripe}
  ];

  var servicemanList = [
    {
      "title": appFonts.leslie,
      "image": eImageAssets.es1,
      "exp": "3",
      "rate": "3.0",
      "isCheck": false
    },
    {
      "title": appFonts.estherHoward,
      "image": eImageAssets.es2,
      "exp": "3",
      "rate": "4.6",
      "isCheck": false
    },
    {
      "title": appFonts.guyHawkins,
      "image": eImageAssets.es3,
      "exp": "3",
      "rate": "2.8",
      "isCheck": false
    },
    {
      "title": appFonts.leslie,
      "image": eImageAssets.es1,
      "exp": "3",
      "rate": "2.8",
      "isCheck": false
    },
    {
      "title": appFonts.guyHawkins,
      "image": eImageAssets.es3,
      "exp": "3",
      "rate": "2.8",
      "isCheck": false
    },
  ];

  var jobExperienceList = [
    {
      "id": 0,
      "title": appFonts.highestExperience,
    },
    {"id": 1, "title": appFonts.lowestExperience},
  ];

  var expertiseList = [
    appFonts.acRepair,
    appFonts.carpenter,
    appFonts.cleaning,
  ];

  List includedServiceList = [
    {
      "title": "Ac cleaning service",
      "image": eImageAssets.es1,
      "price": "12.14",
      "rate": "3.0",
      "time": "30 mins",
      "servicemanRequired": "1",
      "desc": "Foam jet technology removes dust 2x deeper."
    },
    {
      "title": "Bathroom cleaning",
      "image": eImageAssets.es2,
      "price": "30.25",
      "rate": "4.0",
      "time": "30 mins",
      "servicemanRequired": "2",
      "desc": "Get the best and most durable wooden furniture.",
    },
  ];

  var servicePackageList = [
    {
      "title": "Ac cleaning service",
      "image": eImageAssets.es2,
      "rate": "4.0",
      "time": "30 mins",
      "serviceTime": "6:00 PM",
      "date": "6 Sep, 2023",
      "requiredServicemen": [
        {
          "image": eImageAssets.es1,
          "title": "Stella Milevski",
          "rate": "3.5",
        }
      ]
    },
    {
      "title": "Ac cleaning service",
      "image": eImageAssets.es2,
      "serviceTime": "6:00 PM",
      "date": "6 Sep, 2023",
      "rate": "4.0",
      "requiredServicemen": []
    },
  ];

  var bookingList = [
    {
      "bookingNumber": "#58961",
      "image": eImageAssets.lb1,
      "isPackage": true,
      "isExpand": false,
      "name": "Curtain cleaning",
      "price": "25.23",
      "offer": "10% off",
      "status": appFonts.pending,
      "dateTime": "6 Sep, 2023 - 6:00 pm",
      "payment": "Not paid yet",
      "location": "California - USA",
      "providerList": [
        {
          "role": appFonts.provider,
          "image": eImageAssets.es1,
          "title": "Arlene McCoy",
          "rate": "3.5",
        }
      ],
      "servicemanLists": [
        {
          "role": appFonts.serviceman,
          "image": eImageAssets.es2,
          "title": "Kate Tanner",
          "rate": "4.0",
        }
      ]
    },
    {
      "bookingNumber": "#25636",
      "image": eImageAssets.lb2,
      "isPackage": false,
      "isExpand": false,
      "name": "House hold cook",
      "price": "30.25",
      "offer": "10% off",
      "status": appFonts.accepted,
      "dateTime": "8 Aug, 2023 - 5:20 am",
      "payment": "Not paid yet",
      "providerList": [
        {
          "role": appFonts.provider,
          "image": eImageAssets.es1,
          "title": "Kierra Lubin",
          "rate": "3.0",
        }
      ],
      "servicemanLists": [
        {
          "role": appFonts.serviceman,
          "image": eImageAssets.es2,
          "title": "Kate Tanner",
          "rate": "4.0",
        }
      ]
    },
    {
      "bookingNumber": "#85962",
      "image": eImageAssets.lb3,
      "isPackage": false,
      "isExpand": false,
      "name": "Hair spa & color",
      "price": "15.23",
      "offer": "15% off",
      "status": appFonts.ongoing,
      "dateTime": "10 Aug, 2023 - 2:05 pm",
      "payment": "Not paid yet",
      "providerList": [
        {
          "role": appFonts.provider,
          "image": eImageAssets.es1,
          "title": "Kierra Lubin",
          "rate": "3.0",
        }
      ],
      "servicemanLists": [
        {
          "role": appFonts.serviceman,
          "image": eImageAssets.es2,
          "title": "Nolan Westervelt",
          "rate": "3.5",
        },
        {
          "role": appFonts.serviceman,
          "image": eImageAssets.es3,
          "title": "Kate Tanner",
          "rate": "3.5",
        },
      ]
    },
    {
      "bookingNumber": "#56236",
      "image": eImageAssets.es1,
      "isPackage": false,
      "isExpand": false,
      "name": "Furnishing & carpentry",
      "price": "40.26",
      "offer": "12% off",
      "status": appFonts.completed,
      "dateTime": "15 Aug, 2023 - 10:55 am",
      "payment": "Paid in advance",
      "providerList": [
        {
          "role": appFonts.provider,
          "image": eImageAssets.es1,
          "title": "Kierra Lubin",
          "rate": "3.0",
        }
      ],
      "servicemanLists": [
        {
          "role": appFonts.serviceman,
          "image": eImageAssets.es2,
          "title": "Nolan Westervelt",
          "rate": "3.5",
        },
        {
          "role": appFonts.serviceman,
          "image": eImageAssets.es3,
          "title": "Kate Tanner",
          "rate": "3.5",
        },
      ]
    },
    {
      "bookingNumber": "#15263",
      "image": eImageAssets.lb1,
      "isPackage": false,
      "isExpand": false,
      "name": "Chimney sweeping",
      "price": "21.78",
      "status": appFonts.cancelled,
      "dateTime": "20 Aug, 2023 - 4:25pm",
      "providerList": [
        {
          "role": appFonts.provider,
          "image": eImageAssets.es1,
          "title": "Kierra Lubin",
          "rate": "3.0",
        }
      ],
      "servicemanLists": []
    },
  ];

  var bookingFilterList = [
    appFonts.status,
    appFonts.date,
    appFonts.category,
  ];

  var bookingStatusList = [
    appFonts.allBooking,
    appFonts.bookingStatus,
    appFonts.pendingBooking,
    appFonts.acceptedBooking,
    appFonts.ongoingBooking,
    appFonts.completedBooking,
    appFonts.cancelledBooking,
  ];

  var bookingStatus = [
    {
      "status": "s",
      "time": "2:30 am",
      "date": "Today",
      "title": "Changes in schedule",
      "subtext": "You have change time for service."
    },
    {
      "status": "s",
      "time": "2:30 am",
      "date": "Today",
      "title": "Changes in schedule",
      "subtext": "You have change time for service."
    },
    {
      "status": appFonts.ongoing,
      "time": "2:30 am",
      "date": "Today",
      "title": "Changes in schedule",
      "subtext": "You have change time for service."
    },
    {
      "status": appFonts.accepted,
      "time": "2:30 am",
      "date": "Today",
      "title": "Changes in schedule",
      "subtext": "You have change time for service."
    },
    {
      "status": appFonts.pending,
      "time": "2:30 am",
      "date": "Today",
      "title": "Changes in schedule",
      "subtext": "You have change time for service."
    },
  ];

  var socialList = [
    {"image": eSvgAssets.phone1, "title": appFonts.call},
    {"image": eSvgAssets.chat, "title": appFonts.chat},
    {"image": eSvgAssets.wp, "title": appFonts.wp},
  ];

  var remotelySocialList = [
    {"image": eSvgAssets.phone1, "title": appFonts.call},

    {"image": eSvgAssets.wp, "title": appFonts.wp},
  ];

  //chat list
  var chatList = [
    {
      "type": "receiver",
      "message": "Hello ! How can i help you ?",
    },
    {
      "type": "source",
      "message": "Hello ! When will you arrive ?",
    },
    {
      "type": "receiver",
      "message": "I’ll be there soon.",
    },
    {
      "type": "source",
      "message": "Okay !! Thank you.",
    }
  ];

  var optionList = [
    appFonts.audioCall,appFonts.videoCall, appFonts.clearChat
  ];



  var pendingBookingDetailList = [
    {
      "image": eImageAssets.fsl1,
      "status": "Pending",
      "bookingId": "#85962",
      "title": "Hair spa & color",
      "rate": "3.5",
      "date": "6 Sep, 2023",
      "time": "6:00 PM",
      "location": "2118 Thorn ridge Cir. Syracuse, Connecticut - 35624, USA.",
      "description":
          "Our expert technicians will thoroughly clean and disinfect your air conditioning system, ensuring optimal performance.",
      "providerList": [
        {
          "role": appFonts.provider,
          "image": eImageAssets.es1,
          "title": "Kierra Lubin",
          "rate": "3.0",
          "experience": "3",
          "email": "kurtbsted56@gmail.com",
          "phone": "+25 632 256 4562",
          "location":
              "3891 Ranch view Dr. Richardson, California - 62639, USA.",
        }
      ],
      "servicemanList": [
        {
          "role": appFonts.serviceman,
          "image": eImageAssets.es2,
          "title": "Kierra Lubin",
          "rate": "3.0",
          "experience": "3",
        }
      ],
    }
  ];

  var acceptBookingDetailList = [
    {
      "image": eImageAssets.fsl1,
      "bookingId": "#85962",
      "status": "Accepted",
      "title": "Hair spa & color",
      "rate": "3.5",
      "date": "6 Sep, 2023",
      "time": "6:00 PM",
      "location": "2118 Thorn ridge Cir. Syracuse, Connecticut - 35624, USA.",
      "description":
          "Our expert technicians will thoroughly clean and disinfect your air conditioning system, ensuring optimal performance.",
      "providerList": [
        {
          "role": appFonts.provider,
          "image": eImageAssets.es1,
          "title": "Kierra Lubin",
          "rate": "3.0",
          "experience": "3",
          "email": "kurtbsted56@gmail.com",
          "phone": "+25 632 256 4562",
          "location":
              "3891 Ranch view Dr. Richardson, California - 62639, USA.",
        }
      ],
      "servicemanList": [
        {
          "role": appFonts.serviceman,
          "image": eImageAssets.es2,
          "title": "Kierra Lubin",
          "rate": "3.0",
          "experience": "3",
        }
      ],
    }
  ];

  var ongoingBookingDetailList = [
    {
      "image": eImageAssets.fsl1,
      "bookingId": "#85962",
      "status": "Ongoing",
      "title": "Hair spa & color",
      "rate": "3.5",
      "date": "6 Sep, 2023",
      "time": "6:00 PM",
      "location": "2118 Thorn ridge Cir. Syracuse, Connecticut - 35624, USA.",
      "description":
          "Our expert technicians will thoroughly clean and disinfect your air conditioning system, ensuring optimal performance.",
      "providerList": [
        {
          "role": appFonts.provider,
          "image": eImageAssets.es1,
          "title": "Kierra Lubin",
          "rate": "3.0",
          "experience": "3",
          "email": "kurtbsted56@gmail.com",
          "phone": "+25 632 256 4562",
          "location":
              "3891 Ranch view Dr. Richardson, California - 62639, USA.",
        }
      ],
      "servicemanList": [
        {
          "role": appFonts.serviceman,
          "image": eImageAssets.es2,
          "title": "Kierra Lubin",
          "rate": "3.0",
          "experience": "3",
        }
      ],
    }
  ];

  var completedBookingDetailList = [
    {
      "image": eImageAssets.fsl1,
      "bookingId": "#85962",
      "status": "Completed",
      "title": "Hair spa & color",
      "rate": "3.5",
      "date": "6 Sep, 2023",
      "time": "6:00 PM",
      "location": "2118 Thorn ridge Cir. Syracuse, Connecticut - 35624, USA.",
      "description":
          "Our expert technicians will thoroughly clean and disinfect your air conditioning system, ensuring optimal performance.",
      "providerList": [
        {
          "role": appFonts.provider,
          "image": eImageAssets.es1,
          "title": "Kierra Lubin",
          "rate": "3.0",
          "experience": "3",
          "email": "kurtbsted56@gmail.com",
          "phone": "+25 632 256 4562",
          "location":
              "3891 Ranch view Dr. Richardson, California - 62639, USA.",
        }
      ],
      "servicemanList": [
        {
          "role": appFonts.serviceman,
          "image": eImageAssets.es2,
          "title": "Kierra Lubin",
          "rate": "3.0",
          "experience": "3",
        }
      ],
    }
  ];

  var cancelledBookingDetailList = [
    {
      "image": eImageAssets.fsl1,
      "bookingId": "#85962",
      "status": "Cancelled",
      "title": "Hair spa & color",
      "rate": "3.5",
      "date": "6 Sep, 2023",
      "time": "6:00 PM",
      "location": "2118 Thorn ridge Cir. Syracuse, Connecticut - 35624, USA.",
      "description":
          "Our expert technicians will thoroughly clean and disinfect your air conditioning system, ensuring optimal performance.",
      "providerList": [
        {
          "role": appFonts.provider,
          "image": eImageAssets.es1,
          "title": "Kierra Lubin",
          "rate": "3.0",
          "experience": "3",
          "email": "kurtbsted56@gmail.com",
          "phone": "+25 632 256 4562",
          "location":
              "3891 Ranch view Dr. Richardson, California - 62639, USA.",
        }
      ],
      "servicemanList": [],
    }
  ];

  var packageBookingList = [
    {
      "title": "Cleaning service package",
      "price": "32.08",
      "Description":
          "As a service member, I believe I am capable of problem solving. I too face a variety of obstacles at work and must develop effective solutions to ensure client satisfaction.",
      "pImage": eImageAssets.es1,
      "pName": "Kurt Bates",
      "rate": "3.0",
      "includedService": [
        {
          "image": eImageAssets.fs2,
          "title": "House hold cook",
          "price": "15.23",
          "bookingId": "#15263",
          "status": appFonts.accepted,
          "serviceman": "2"
        },
        {
          "image": eImageAssets.es1,
          "title": "Hair spa",
          "price": "10.15",
          "bookingId": "#15264",
          "status": appFonts.ongoing,
          "serviceman": "0"
        },
      ]
    }
  ];
  List themeModeList = [
    appFonts.darkTheme,
    appFonts.lightTheme,
    appFonts.systemDefault
  ];

  List jobRequestList = [
    {
      "id": 54,
      "title": "Flore Cleaning Service",
      "description": "I want Flore Cleaning Service",
      "duration": "3",
      "duration_unit": "hours",
      "required_servicemen": 2,
      "initial_price": 500,
      "final_price": 450,
      "status": "requested",
      "service_id": 57,
      "user_id": 19,
      "provider_id": 3,
      "created_by_id": 19,
      "booking_date": "2024-09-23T07:30:00.000000Z",
      "category_ids": ["8", "9"],
      "created_at": "2024-09-23T11:06:20.000000Z",
      "media": [],
      "user": {
        "id": 19,
        "name": "Ava Murphy",
        "email": "ava.murphy@example.com",
        "role": {
          "id": 2,
          "name": "user",
          "guard_name": "web",
          "system_reserve": 1,
          "created_at": "2024-06-13T11:38:15.000000Z",
          "updated_at": "2024-06-13T11:38:15.000000Z",
          "pivot": {
            "model_type": "App\\Models\\User",
            "model_id": 19,
            "role_id": 2
          }
        },
        "review_ratings": null,
        "primary_address": {
          "id": 15,
          "user_id": 19,
          "service_id": null,
          "is_primary": 1,
          "latitude": null,
          "longitude": null,
          "area": "Temple Bar",
          "postal_code": "D02XY78",
          "country_id": 372,
          "state_id": 1686,
          "city": "Dublin",
          "address": "1111 Fleet St, Apt 45A, Temple Bar, Dublin, D02 XY78",
          "type": "home",
          "alternative_name": null,
          "code": "1",
          "alternative_phone": null,
          "status": 0,
          "company_id": null,
          "availability_radius": null,
          "country": {"id": 372, "name": "Ireland"},
          "state": {"id": 1686, "name": "Dublin"}
        },
        "ServicemanReviewRatings": null,
        "media": [
          {
            "id": 15,
            "model_type": "App\\Models\\User",
            "model_id": 19,
            "uuid": "6568330c-1077-4dd3-95b5-5f66e9d1dbb6",
            "collection_name": "image",
            "name": "29",
            "file_name": "29.png",
            "mime_type": "image/png",
            "disk": "public",
            "conversions_disk": "public",
            "size": 49291,
            "manipulations": [],
            "custom_properties": [],
            "generated_conversions": [],
            "responsive_images": [],
            "order_column": 1,
            "created_at": "2024-06-13T12:39:27.000000Z",
            "updated_at": "2024-06-13T12:39:27.000000Z",
            "original_url": "http://127.0.0.1:8000/storage/15/29.png",
            "preview_url": ""
          }
        ],
        "wallet": {"id": 7, "consumer_id": 19, "balance": 600},
        "provider_wallet": null,
        "serviceman_wallet": null,
        "known_languages": [],
        "expertise": [],
        "zones": [],
        "roles": [
          {
            "id": 2,
            "name": "user",
            "guard_name": "web",
            "system_reserve": 1,
            "created_at": "2024-06-13T11:38:15.000000Z",
            "updated_at": "2024-06-13T11:38:15.000000Z",
            "pivot": {
              "model_type": "App\\Models\\User",
              "model_id": 19,
              "role_id": 2
            }
          }
        ],
        "reviews": [],
        "servicemanreviews": []
      },
      "bids": [
        {
          "id": 23,
          "service_request_id": 54,
          "provider_id": 33,
          "amount": 450,
          "description": null,
          "status": "rejected",
          "created_at": "2024-09-23T11:40:37.000000Z",
          "updated_at": "2024-09-23T11:40:37.000000Z",
          "deleted_at": null,
          "provider": {
            "id": 33,
            "name": "Mark Wilson",
            "email": "gepog61486@degcos.com",
            "role": {
              "id": 3,
              "name": "provider",
              "guard_name": "web",
              "system_reserve": 1,
              "created_at": "2024-06-13T11:38:15.000000Z",
              "updated_at": "2024-06-13T11:38:15.000000Z",
              "pivot": {
                "model_type": "App\\Models\\User",
                "model_id": 33,
                "role_id": 3
              }
            },
            "review_ratings": null,
            "primary_address": {
              "id": 31,
              "user_id": 33,
              "service_id": null,
              "is_primary": 1,
              "latitude": null,
              "longitude": null,
              "area": "Mitte",
              "postal_code": "10117",
              "country_id": 276,
              "state_id": 1316,
              "city": "Berlin",
              "address": "123 Unter den Linden, 2nd Floor",
              "type": "home",
              "alternative_name": null,
              "code": "1",
              "alternative_phone": null,
              "status": 0,
              "company_id": null,
              "availability_radius": null,
              "country": {"id": 276, "name": "Germany"},
              "state": {"id": 1316, "name": "Berlin"}
            },
            "ServicemanReviewRatings": null,
            "media": [
              {
                "id": 48,
                "model_type": "App\\Models\\User",
                "model_id": 33,
                "uuid": "3197a89c-d1a3-464b-87ce-6ec9615dc420",
                "collection_name": "image",
                "name": "65",
                "file_name": "65.png",
                "mime_type": "image/png",
                "disk": "public",
                "conversions_disk": "public",
                "size": 53935,
                "manipulations": [],
                "custom_properties": [],
                "generated_conversions": [],
                "responsive_images": [],
                "order_column": 1,
                "created_at": "2024-06-14T10:27:57.000000Z",
                "updated_at": "2024-06-14T10:27:57.000000Z",
                "original_url": "http://127.0.0.1:8000/storage/48/65.png",
                "preview_url": ""
              }
            ],
            "wallet": null,
            "provider_wallet": {
              "id": 8,
              "provider_id": 33,
              "balance": 111.75,
              "created_at": "2024-07-23T02:08:59.000000Z",
              "updated_at": "2024-07-24T03:05:50.000000Z",
              "deleted_at": null
            },
            "serviceman_wallet": null,
            "known_languages": [
              {
                "key": "English",
                "id": 2,
                "pivot": {"user_id": 33, "language_id": 2}
              },
              {
                "key": "German",
                "id": 30,
                "pivot": {"user_id": 33, "language_id": 30}
              }
            ],
            "expertise": [],
            "zones": [
              {
                "id": 1,
                "name": "All",
                "place_points": {
                  "type": "Polygon",
                  "coordinates": [
                    [
                      [-170.71246697748, 84.480094998776],
                      [-161.57184197748, -34.834517314919],
                      [5.771908022524, -33.672210363663],
                      [-176.33746697748, -31.898982489959],
                      [167.49065802252, 83.606012343956],
                      [127.41253302252, 84.480094998776],
                      [-32.899966977476, 84.412045563649],
                      [-170.71246697748, 84.480094998776]
                    ]
                  ]
                },
                "locations": [
                  {"lat": 84.48009499877597, "lng": -170.71246697747594},
                  {"lat": -34.834517314918585, "lng": -161.57184197747594},
                  {"lat": -33.67221036366253, "lng": 5.771908022524048},
                  {"lat": -31.89898248995876, "lng": -176.33746697747597},
                  {"lat": 83.60601234395641, "lng": 167.49065802252403},
                  {"lat": 84.48009499877597, "lng": 127.41253302252404},
                  {"lat": 84.4120455636489, "lng": -32.89996697747595},
                  {"lat": 84.48009499877597, "lng": -170.71246697747594}
                ],
                "status": "1",
                "created_by_id": 1,
                "created_at": "2024-06-13T15:02:02.000000Z",
                "updated_at": "2024-06-24T12:30:35.000000Z",
                "deleted_at": null,
                "pivot": {"provider_id": 33, "zone_id": 1}
              }
            ],
            "roles": [
              {
                "id": 3,
                "name": "provider",
                "guard_name": "web",
                "system_reserve": 1,
                "created_at": "2024-06-13T11:38:15.000000Z",
                "updated_at": "2024-06-13T11:38:15.000000Z",
                "pivot": {
                  "model_type": "App\\Models\\User",
                  "model_id": 33,
                  "role_id": 3
                }
              }
            ],
            "reviews": [],
            "servicemanreviews": []
          }
        },
        {
          "id": 24,
          "service_request_id": 54,
          "provider_id": 32,
          "amount": 450,
          "description": null,
          "status": "rejected",
          "created_at": "2024-09-23T11:41:14.000000Z",
          "updated_at": "2024-09-23T11:41:14.000000Z",
          "deleted_at": null,
          "provider": {
            "id": 32,
            "name": "Emily Johnson",
            "email": "lajalo1164@heweek.com",
            "role": {
              "id": 3,
              "name": "provider",
              "guard_name": "web",
              "system_reserve": 1,
              "created_at": "2024-06-13T11:38:15.000000Z",
              "updated_at": "2024-06-13T11:38:15.000000Z",
              "pivot": {
                "model_type": "App\\Models\\User",
                "model_id": 32,
                "role_id": 3
              }
            },
            "review_ratings": null,
            "primary_address": {
              "id": 30,
              "user_id": 32,
              "service_id": null,
              "is_primary": 1,
              "latitude": null,
              "longitude": null,
              "area": "Central Business District",
              "postal_code": "2000",
              "country_id": 36,
              "state_id": 266,
              "city": "Sydney",
              "address": "789 George Street, Apt 101",
              "type": "home",
              "alternative_name": null,
              "code": "1",
              "alternative_phone": null,
              "status": 0,
              "company_id": null,
              "availability_radius": null,
              "country": {"id": 36, "name": "Australia"},
              "state": {"id": 266, "name": "New South Wales"}
            },
            "ServicemanReviewRatings": null,
            "media": [
              {
                "id": 46,
                "model_type": "App\\Models\\User",
                "model_id": 32,
                "uuid": "b58ea519-1535-4b48-8792-a3d529407b74",
                "collection_name": "image",
                "name": "30",
                "file_name": "30.png",
                "mime_type": "image/png",
                "disk": "public",
                "conversions_disk": "public",
                "size": 50967,
                "manipulations": [],
                "custom_properties": [],
                "generated_conversions": [],
                "responsive_images": [],
                "order_column": 1,
                "created_at": "2024-06-14T10:19:50.000000Z",
                "updated_at": "2024-06-14T10:19:50.000000Z",
                "original_url": "http://127.0.0.1:8000/storage/46/30.png",
                "preview_url": ""
              }
            ],
            "wallet": null,
            "provider_wallet": null,
            "serviceman_wallet": null,
            "known_languages": [
              {
                "key": "English",
                "id": 2,
                "pivot": {"user_id": 32, "language_id": 2}
              }
            ],
            "expertise": [],
            "zones": [],
            "roles": [
              {
                "id": 3,
                "name": "provider",
                "guard_name": "web",
                "system_reserve": 1,
                "created_at": "2024-06-13T11:38:15.000000Z",
                "updated_at": "2024-06-13T11:38:15.000000Z",
                "pivot": {
                  "model_type": "App\\Models\\User",
                  "model_id": 32,
                  "role_id": 3
                }
              }
            ],
            "reviews": [],
            "servicemanreviews": []
          }
        },
        {
          "id": 25,
          "service_request_id": 54,
          "provider_id": 34,
          "amount": 450,
          "description": null,
          "status": "rejected",
          "created_at": "2024-09-23T11:42:09.000000Z",
          "updated_at": "2024-09-23T11:42:09.000000Z",
          "deleted_at": null,
          "provider": {
            "id": 34,
            "name": "Maria Garcia",
            "email": "mariagarcia@example.com",
            "role": {
              "id": 3,
              "name": "provider",
              "guard_name": "web",
              "system_reserve": 1,
              "created_at": "2024-06-13T11:38:15.000000Z",
              "updated_at": "2024-06-13T11:38:15.000000Z",
              "pivot": {
                "model_type": "App\\Models\\User",
                "model_id": 34,
                "role_id": 3
              }
            },
            "review_ratings": null,
            "primary_address": {
              "id": 32,
              "user_id": 34,
              "service_id": null,
              "is_primary": 1,
              "latitude": null,
              "longitude": null,
              "area": "Salamanca",
              "postal_code": "28006",
              "country_id": 724,
              "state_id": 3150,
              "city": "Madrid",
              "address": "45 Calle de Serrano, Office 301",
              "type": "home",
              "alternative_name": null,
              "code": "1",
              "alternative_phone": null,
              "status": 0,
              "company_id": null,
              "availability_radius": null,
              "country": {"id": 724, "name": "Spain"},
              "state": {"id": 3150, "name": "Madrid"}
            },
            "ServicemanReviewRatings": null,
            "media": [
              {
                "id": 50,
                "model_type": "App\\Models\\User",
                "model_id": 34,
                "uuid": "94012885-e339-441d-8200-ce7c0820e521",
                "collection_name": "image",
                "name": "23",
                "file_name": "23.png",
                "mime_type": "image/png",
                "disk": "public",
                "conversions_disk": "public",
                "size": 52402,
                "manipulations": [],
                "custom_properties": [],
                "generated_conversions": [],
                "responsive_images": [],
                "order_column": 1,
                "created_at": "2024-06-14T10:31:40.000000Z",
                "updated_at": "2024-06-14T10:31:40.000000Z",
                "original_url": "http://127.0.0.1:8000/storage/50/23.png",
                "preview_url": ""
              }
            ],
            "wallet": null,
            "provider_wallet": {
              "id": 10,
              "provider_id": 34,
              "balance": 0,
              "created_at": "2024-08-13T04:39:20.000000Z",
              "updated_at": "2024-08-13T04:39:20.000000Z",
              "deleted_at": null
            },
            "serviceman_wallet": null,
            "known_languages": [
              {
                "key": "English",
                "id": 2,
                "pivot": {"user_id": 34, "language_id": 2}
              },
              {
                "key": "Spanish",
                "id": 88,
                "pivot": {"user_id": 34, "language_id": 88}
              }
            ],
            "expertise": [],
            "zones": [
              {
                "id": 1,
                "name": "All",
                "place_points": {
                  "type": "Polygon",
                  "coordinates": [
                    [
                      [-170.71246697748, 84.480094998776],
                      [-161.57184197748, -34.834517314919],
                      [5.771908022524, -33.672210363663],
                      [-176.33746697748, -31.898982489959],
                      [167.49065802252, 83.606012343956],
                      [127.41253302252, 84.480094998776],
                      [-32.899966977476, 84.412045563649],
                      [-170.71246697748, 84.480094998776]
                    ]
                  ]
                },
                "locations": [
                  {"lat": 84.48009499877597, "lng": -170.71246697747594},
                  {"lat": -34.834517314918585, "lng": -161.57184197747594},
                  {"lat": -33.67221036366253, "lng": 5.771908022524048},
                  {"lat": -31.89898248995876, "lng": -176.33746697747597},
                  {"lat": 83.60601234395641, "lng": 167.49065802252403},
                  {"lat": 84.48009499877597, "lng": 127.41253302252404},
                  {"lat": 84.4120455636489, "lng": -32.89996697747595},
                  {"lat": 84.48009499877597, "lng": -170.71246697747594}
                ],
                "status": "1",
                "created_by_id": 1,
                "created_at": "2024-06-13T15:02:02.000000Z",
                "updated_at": "2024-06-24T12:30:35.000000Z",
                "deleted_at": null,
                "pivot": {"provider_id": 34, "zone_id": 1}
              }
            ],
            "roles": [
              {
                "id": 3,
                "name": "provider",
                "guard_name": "web",
                "system_reserve": 1,
                "created_at": "2024-06-13T11:38:15.000000Z",
                "updated_at": "2024-06-13T11:38:15.000000Z",
                "pivot": {
                  "model_type": "App\\Models\\User",
                  "model_id": 34,
                  "role_id": 3
                }
              }
            ],
            "reviews": [],
            "servicemanreviews": []
          }
        },
        {
          "id": 26,
          "service_request_id": 54,
          "provider_id": 3,
          "amount": 450,
          "description": null,
          "status": "accepted",
          "created_at": "2024-09-23T12:03:18.000000Z",
          "updated_at": "2024-09-23T12:08:17.000000Z",
          "deleted_at": null,
          "provider": {
            "id": 3,
            "name": "Robert Davis",
            "email": "nofomi7094@nastyx.com",
            "role": {
              "id": 3,
              "name": "provider",
              "guard_name": "web",
              "system_reserve": 1,
              "created_at": "2024-06-13T11:38:15.000000Z",
              "updated_at": "2024-06-13T11:38:15.000000Z",
              "pivot": {
                "model_type": "App\\Models\\User",
                "model_id": 3,
                "role_id": 3
              }
            },
            "review_ratings": 5,
            "primary_address": {
              "id": 106,
              "user_id": 3,
              "service_id": null,
              "is_primary": 1,
              "latitude": null,
              "longitude": null,
              "area": "Los Angeles County",
              "postal_code": "90001",
              "country_id": 840,
              "state_id": 3800,
              "city": "Torrance",
              "address": "California 91, Torrance, CA, USA",
              "type": null,
              "alternative_name": null,
              "code": null,
              "alternative_phone": null,
              "status": 0,
              "company_id": null,
              "availability_radius": null,
              "country": {"id": 840, "name": "United States"},
              "state": {"id": 3800, "name": "Texas"}
            },
            "ServicemanReviewRatings": null,
            "media": [
              {
                "id": 549,
                "model_type": "App\\Models\\User",
                "model_id": 3,
                "uuid": "2f06a540-d5c6-4f3f-9d56-d02d946dac27",
                "collection_name": "profile_image",
                "name": "scaled_1000074061",
                "file_name": "scaled_1000074061.png",
                "mime_type": "image/png",
                "disk": "public",
                "conversions_disk": "public",
                "size": 181815,
                "manipulations": [],
                "custom_properties": [],
                "generated_conversions": [],
                "responsive_images": [],
                "order_column": 1,
                "created_at": "2024-07-23T01:03:05.000000Z",
                "updated_at": "2024-07-23T01:03:05.000000Z",
                "original_url":
                    "http://127.0.0.1:8000/storage/549/scaled_1000074061.png",
                "preview_url": ""
              }
            ],
            "wallet": null,
            "provider_wallet": {
              "id": 7,
              "provider_id": 3,
              "balance": 364.64,
              "created_at": "2024-06-14T09:43:06.000000Z",
              "updated_at": "2024-07-27T15:22:46.000000Z",
              "deleted_at": null
            },
            "serviceman_wallet": null,
            "known_languages": [],
            "expertise": [],
            "zones": [],
            "roles": [
              {
                "id": 3,
                "name": "provider",
                "guard_name": "web",
                "system_reserve": 1,
                "created_at": "2024-06-13T11:38:15.000000Z",
                "updated_at": "2024-06-13T11:38:15.000000Z",
                "pivot": {
                  "model_type": "App\\Models\\User",
                  "model_id": 3,
                  "role_id": 3
                }
              }
            ],
            "reviews": [
              {
                "id": 3,
                "service_id": 25,
                "serviceman_id": null,
                "consumer_id": 18,
                "provider_id": 3,
                "rating": 5,
                "description":
                    "I recently had my car washed by Car Washing Service, and I must say, they provided an excellent service. The team was very professional and courteous, and they did a fantastic job cleaning my car. The attention to detail was impressive, and they made sure every nook and cranny was spotless.",
                "created_at": "2024-07-23T01:34:40.000000Z",
                "updated_at": "2024-07-23T01:34:40.000000Z",
                "deleted_at": null,
                "media": [],
                "consumer": {
                  "id": 18,
                  "name": "Jack Wilson",
                  "email": "asasdasdasd@gmail.com",
                  "system_reserve": 0,
                  "served": null,
                  "phone": 1215556789,
                  "code": "44",
                  "provider_id": null,
                  "status": 1,
                  "is_featured": 0,
                  "is_verified": 0,
                  "type": null,
                  "email_verified_at": null,
                  "fcm_token":
                      "eoYsfYQtQaWMRvQnQ2yVPX:APA91bFXn6_8qqdy01iTyvUDO-SuNO_tXAylHqz0s8muEh5bjk7noFjyBujH6AjGCEKq818h2_H-B4o-xqPwPB62ocAMRIj3qJWjFKJ0naJb2eqwARBLY8N2rfllXEK9an8FeQOl5FpF",
                  "experience_interval": null,
                  "experience_duration": null,
                  "description": null,
                  "created_by": 1,
                  "created_at": "2024-06-13T12:34:47.000000Z",
                  "updated_at": "2024-07-23T01:32:40.000000Z",
                  "deleted_at": null,
                  "company_id": null,
                  "bookings_count": 0,
                  "role": {
                    "id": 2,
                    "name": "user",
                    "guard_name": "web",
                    "system_reserve": 1,
                    "created_at": "2024-06-13T11:38:15.000000Z",
                    "updated_at": "2024-06-13T11:38:15.000000Z",
                    "pivot": {
                      "model_type": "App\\Models\\User",
                      "model_id": 18,
                      "role_id": 2
                    }
                  },
                  "review_ratings": null,
                  "primary_address": {
                    "id": 14,
                    "user_id": 18,
                    "service_id": null,
                    "is_primary": 1,
                    "latitude": null,
                    "longitude": null,
                    "area": "Edgbaston",
                    "postal_code": "B152TT",
                    "country_id": 840,
                    "state_id": 3754,
                    "city": "Birmingham",
                    "address":
                        "1010 Bristol Rd, Suite 400, Edgbaston, Birmingham, B15 2TT",
                    "type": "home",
                    "alternative_name": null,
                    "code": 1,
                    "alternative_phone": null,
                    "status": 0,
                    "company_id": null,
                    "availability_radius": null,
                    "country": {"id": 840, "name": "United States"},
                    "state": {"id": 3754, "name": "Arizona"}
                  },
                  "ServicemanReviewRatings": null,
                  "media": [
                    {
                      "id": 14,
                      "model_type": "App\\Models\\User",
                      "model_id": 18,
                      "uuid": "11cab0c9-6d10-4e02-9838-1db6d5611ce6",
                      "collection_name": "image",
                      "name": "27",
                      "file_name": "27.png",
                      "mime_type": "image/png",
                      "disk": "public",
                      "conversions_disk": "public",
                      "size": 49980,
                      "manipulations": [],
                      "custom_properties": [],
                      "generated_conversions": [],
                      "responsive_images": [],
                      "order_column": 1,
                      "created_at": "2024-06-13T12:35:18.000000Z",
                      "updated_at": "2024-06-13T12:35:18.000000Z",
                      "original_url": "http://127.0.0.1:8000/storage/14/27.png",
                      "preview_url": ""
                    }
                  ],
                  "wallet": {"id": 8, "consumer_id": 18, "balance": 650},
                  "provider_wallet": null,
                  "serviceman_wallet": null,
                  "known_languages": [],
                  "expertise": [],
                  "zones": [],
                  "roles": [
                    {
                      "id": 2,
                      "name": "user",
                      "guard_name": "web",
                      "system_reserve": 1,
                      "created_at": "2024-06-13T11:38:15.000000Z",
                      "updated_at": "2024-06-13T11:38:15.000000Z",
                      "pivot": {
                        "model_type": "App\\Models\\User",
                        "model_id": 18,
                        "role_id": 2
                      }
                    }
                  ],
                  "reviews": [],
                  "servicemanreviews": []
                }
              }
            ],
            "servicemanreviews": []
          }
        }
      ]
    },
    {
      "id": 53,
      "title": "Service Custom Request",
      "description": "Service Custom Request Description",
      "duration": "3",
      "duration_unit": "hours",
      "required_servicemen": 2,
      "initial_price": 500,
      "final_price": 450,
      "status": "closed",
      "service_id": 56,
      "user_id": 19,
      "provider_id": 3,
      "created_by_id": 19,
      "booking_date": "2024-09-23T07:30:00.000000Z",
      "category_ids": ["8", "9"],
      "created_at": "2024-09-20T08:50:32.000000Z",
      "media": [],
      "user": {
        "id": 19,
        "name": "Ava Murphy",
        "email": "ava.murphy@example.com",
        "role": {
          "id": 2,
          "name": "user",
          "guard_name": "web",
          "system_reserve": 1,
          "created_at": "2024-06-13T11:38:15.000000Z",
          "updated_at": "2024-06-13T11:38:15.000000Z",
          "pivot": {
            "model_type": "App\\Models\\User",
            "model_id": 19,
            "role_id": 2
          }
        },
        "review_ratings": null,
        "primary_address": {
          "id": 15,
          "user_id": 19,
          "service_id": null,
          "is_primary": 1,
          "latitude": null,
          "longitude": null,
          "area": "Temple Bar",
          "postal_code": "D02XY78",
          "country_id": 372,
          "state_id": 1686,
          "city": "Dublin",
          "address": "1111 Fleet St, Apt 45A, Temple Bar, Dublin, D02 XY78",
          "type": "home",
          "alternative_name": null,
          "code": "1",
          "alternative_phone": null,
          "status": 0,
          "company_id": null,
          "availability_radius": null,
          "country": {"id": 372, "name": "Ireland"},
          "state": {"id": 1686, "name": "Dublin"}
        },
        "ServicemanReviewRatings": null,
        "media": [
          {
            "id": 15,
            "model_type": "App\\Models\\User",
            "model_id": 19,
            "uuid": "6568330c-1077-4dd3-95b5-5f66e9d1dbb6",
            "collection_name": "image",
            "name": "29",
            "file_name": "29.png",
            "mime_type": "image/png",
            "disk": "public",
            "conversions_disk": "public",
            "size": 49291,
            "manipulations": [],
            "custom_properties": [],
            "generated_conversions": [],
            "responsive_images": [],
            "order_column": 1,
            "created_at": "2024-06-13T12:39:27.000000Z",
            "updated_at": "2024-06-13T12:39:27.000000Z",
            "original_url": "http://127.0.0.1:8000/storage/15/29.png",
            "preview_url": ""
          }
        ],
        "wallet": {"id": 7, "consumer_id": 19, "balance": 600},
        "provider_wallet": null,
        "serviceman_wallet": null,
        "known_languages": [],
        "expertise": [],
        "zones": [],
        "roles": [
          {
            "id": 2,
            "name": "user",
            "guard_name": "web",
            "system_reserve": 1,
            "created_at": "2024-06-13T11:38:15.000000Z",
            "updated_at": "2024-06-13T11:38:15.000000Z",
            "pivot": {
              "model_type": "App\\Models\\User",
              "model_id": 19,
              "role_id": 2
            }
          }
        ],
        "reviews": [],
        "servicemanreviews": []
      },
      "bids": [
        {
          "id": 22,
          "service_request_id": 53,
          "provider_id": 3,
          "amount": 450,
          "description": null,
          "status": "accepted",
          "created_at": "2024-09-20T08:51:19.000000Z",
          "updated_at": "2024-09-20T10:10:15.000000Z",
          "deleted_at": null,
          "provider": {
            "id": 3,
            "name": "Robert Davis",
            "email": "nofomi7094@nastyx.com",
            "role": {
              "id": 3,
              "name": "provider",
              "guard_name": "web",
              "system_reserve": 1,
              "created_at": "2024-06-13T11:38:15.000000Z",
              "updated_at": "2024-06-13T11:38:15.000000Z",
              "pivot": {
                "model_type": "App\\Models\\User",
                "model_id": 3,
                "role_id": 3
              }
            },
            "review_ratings": 5,
            "primary_address": {
              "id": 106,
              "user_id": 3,
              "service_id": null,
              "is_primary": 1,
              "latitude": null,
              "longitude": null,
              "area": "Los Angeles County",
              "postal_code": "90001",
              "country_id": 840,
              "state_id": 3800,
              "city": "Torrance",
              "address": "California 91, Torrance, CA, USA",
              "type": null,
              "alternative_name": null,
              "code": null,
              "alternative_phone": null,
              "status": 0,
              "company_id": null,
              "availability_radius": null,
              "country": {"id": 840, "name": "United States"},
              "state": {"id": 3800, "name": "Texas"}
            },
            "ServicemanReviewRatings": null,
            "media": [
              {
                "id": 549,
                "model_type": "App\\Models\\User",
                "model_id": 3,
                "uuid": "2f06a540-d5c6-4f3f-9d56-d02d946dac27",
                "collection_name": "profile_image",
                "name": "scaled_1000074061",
                "file_name": "scaled_1000074061.png",
                "mime_type": "image/png",
                "disk": "public",
                "conversions_disk": "public",
                "size": 181815,
                "manipulations": [],
                "custom_properties": [],
                "generated_conversions": [],
                "responsive_images": [],
                "order_column": 1,
                "created_at": "2024-07-23T01:03:05.000000Z",
                "updated_at": "2024-07-23T01:03:05.000000Z",
                "original_url":
                    "http://127.0.0.1:8000/storage/549/scaled_1000074061.png",
                "preview_url": ""
              }
            ],
            "wallet": null,
            "provider_wallet": {
              "id": 7,
              "provider_id": 3,
              "balance": 364.64,
              "created_at": "2024-06-14T09:43:06.000000Z",
              "updated_at": "2024-07-27T15:22:46.000000Z",
              "deleted_at": null
            },
            "serviceman_wallet": null,
            "known_languages": [],
            "expertise": [],
            "zones": [],
            "roles": [
              {
                "id": 3,
                "name": "provider",
                "guard_name": "web",
                "system_reserve": 1,
                "created_at": "2024-06-13T11:38:15.000000Z",
                "updated_at": "2024-06-13T11:38:15.000000Z",
                "pivot": {
                  "model_type": "App\\Models\\User",
                  "model_id": 3,
                  "role_id": 3
                }
              }
            ],
            "reviews": [
              {
                "id": 3,
                "service_id": 25,
                "serviceman_id": null,
                "consumer_id": 18,
                "provider_id": 3,
                "rating": 5,
                "description":
                    "I recently had my car washed by Car Washing Service, and I must say, they provided an excellent service. The team was very professional and courteous, and they did a fantastic job cleaning my car. The attention to detail was impressive, and they made sure every nook and cranny was spotless.",
                "created_at": "2024-07-23T01:34:40.000000Z",
                "updated_at": "2024-07-23T01:34:40.000000Z",
                "deleted_at": null,
                "media": [],
                "consumer": {
                  "id": 18,
                  "name": "Jack Wilson",
                  "email": "asasdasdasd@gmail.com",
                  "system_reserve": 0,
                  "served": null,
                  "phone": 1215556789,
                  "code": "44",
                  "provider_id": null,
                  "status": 1,
                  "is_featured": 0,
                  "is_verified": 0,
                  "type": null,
                  "email_verified_at": null,
                  "fcm_token":
                      "eoYsfYQtQaWMRvQnQ2yVPX:APA91bFXn6_8qqdy01iTyvUDO-SuNO_tXAylHqz0s8muEh5bjk7noFjyBujH6AjGCEKq818h2_H-B4o-xqPwPB62ocAMRIj3qJWjFKJ0naJb2eqwARBLY8N2rfllXEK9an8FeQOl5FpF",
                  "experience_interval": null,
                  "experience_duration": null,
                  "description": null,
                  "created_by": 1,
                  "created_at": "2024-06-13T12:34:47.000000Z",
                  "updated_at": "2024-07-23T01:32:40.000000Z",
                  "deleted_at": null,
                  "company_id": null,
                  "bookings_count": 0,
                  "role": {
                    "id": 2,
                    "name": "user",
                    "guard_name": "web",
                    "system_reserve": 1,
                    "created_at": "2024-06-13T11:38:15.000000Z",
                    "updated_at": "2024-06-13T11:38:15.000000Z",
                    "pivot": {
                      "model_type": "App\\Models\\User",
                      "model_id": 18,
                      "role_id": 2
                    }
                  },
                  "review_ratings": null,
                  "primary_address": {
                    "id": 14,
                    "user_id": 18,
                    "service_id": null,
                    "is_primary": 1,
                    "latitude": null,
                    "longitude": null,
                    "area": "Edgbaston",
                    "postal_code": "B152TT",
                    "country_id": 840,
                    "state_id": 3754,
                    "city": "Birmingham",
                    "address":
                        "1010 Bristol Rd, Suite 400, Edgbaston, Birmingham, B15 2TT",
                    "type": "home",
                    "alternative_name": null,
                    "code": "1",
                    "alternative_phone": null,
                    "status": 0,
                    "company_id": null,
                    "availability_radius": null,
                    "country": {"id": 840, "name": "United States"},
                    "state": {"id": 3754, "name": "Arizona"}
                  },
                  "ServicemanReviewRatings": null,
                  "media": [
                    {
                      "id": 14,
                      "model_type": "App\\Models\\User",
                      "model_id": 18,
                      "uuid": "11cab0c9-6d10-4e02-9838-1db6d5611ce6",
                      "collection_name": "image",
                      "name": "27",
                      "file_name": "27.png",
                      "mime_type": "image/png",
                      "disk": "public",
                      "conversions_disk": "public",
                      "size": 49980,
                      "manipulations": [],
                      "custom_properties": [],
                      "generated_conversions": [],
                      "responsive_images": [],
                      "order_column": 1,
                      "created_at": "2024-06-13T12:35:18.000000Z",
                      "updated_at": "2024-06-13T12:35:18.000000Z",
                      "original_url": "http://127.0.0.1:8000/storage/14/27.png",
                      "preview_url": ""
                    }
                  ],
                  "wallet": {"id": 8, "consumer_id": 18, "balance": 650},
                  "provider_wallet": null,
                  "serviceman_wallet": null,
                  "known_languages": [],
                  "expertise": [],
                  "zones": [],
                  "roles": [
                    {
                      "id": 2,
                      "name": "user",
                      "guard_name": "web",
                      "system_reserve": 1,
                      "created_at": "2024-06-13T11:38:15.000000Z",
                      "updated_at": "2024-06-13T11:38:15.000000Z",
                      "pivot": {
                        "model_type": "App\\Models\\User",
                        "model_id": 18,
                        "role_id": 2
                      }
                    }
                  ],
                  "reviews": [],
                  "servicemanreviews": []
                }
              }
            ],
            "servicemanreviews": []
          }
        }
      ]
    }
  ];

  var durationList = [
    "Hours",
    "Minutes",
  ];

  List<XFile> serviceImageList = [];
}
