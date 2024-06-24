import 'package:get/get.dart';
import 'package:my_project/Screens/Calls/call_screen.dart';
import 'package:my_project/Screens/Contacts/contact_screen.dart';
import 'package:my_project/Screens/Messages/chat_screen.dart';
import 'package:my_project/Screens/Messages/message_screen.dart';
import 'package:my_project/Screens/Settings/setting_screen.dart';
import 'package:my_project/Screens/bottom_nav.dart';
import 'package:my_project/illustrations/Login%20Screens/create_account.dart';
import 'package:my_project/illustrations/Login%20Screens/login_and_create.dart';
import 'package:my_project/illustrations/Login%20Screens/login_signup.dart';
import 'package:my_project/waste.dart';

part 'app_routes.dart';



class AppPages {
  static final pages = [
    GetPage(
      name: Routes.loginSignup,
      page: () => LoginSignup(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
      // binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.createAccount,
      page: () => const CreateAccount(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.loginAndCreate,
      page: () => const LoginAndCreate(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.bottomNav,
      page: () =>  const BottomNav(currentIndex: 0),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.messageScreen,
      page: () =>   const MessageScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.callScreen,
      page: () =>  const CallScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.contactScreen,
      page: () => const ContactScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.settingScreen,
      page: () => const SettingScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.chatCard,
      page: () => const ChartCard(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.chatPage,
      page: () =>  const ChatPage(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    // GetPage(
    //   name: Routes.itemIndetail,
    //   page: () =>  const ItemIndetail(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.itemOverview,
    //   page: () =>  const ItemOverview(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.vendorBillsEntry,
    //   page: () =>  VendorEntry(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.vendorBillsIndetail,
    //   page: () =>  const VendorIndetail(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.vendorBillsOverview,
    //   page: () =>  const VendorOverview(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),

    // GetPage(
    //   name: Routes.customerBillsEntry,
    //   page: () =>  CustomerEntry(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.customerBillsIndetail,
    //   page: () =>  const CustomerIndetail(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.customerBillsOverview,
    //   page: () =>  const CustomerOverview(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.ouststandingBillsEntry,
    //   page: () =>  OutstandingEntry(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.outstandingBillsIndetail,
    //   page: () =>  const OutstandingBillIndetail(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.cashBalanceEntry,
    //   page: () =>  const CashBalanceEntry(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.cashBalanceIndetail,
    //   page: () =>  const CashIndetail(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.cashOverview,
    //   page: () => const CashOverview(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.bankBalanceEntry,
    //   page: () =>  const BankBalanceEntry(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.bankBalanceIndetail,
    //   page: () =>  const BankBalanceIndetail(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.bankOverview,
    //   page: () =>  const BankOverview(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    //   // binding: LoginBinding(),
    // ),
    // GetPage(
    //   name: Routes.saleEntry,
    //   page: () =>  SaleEntry(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    //   // binding: LoginBinding(),
    // ),
    // GetPage(
    //   name: Routes.saleIndetail,
    //   page: () =>  const SaleIndetail(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    //   // binding: LoginBinding(),
    // ),
    // GetPage(
    //   name: Routes.saleOverview,
    //   page: () =>  const SaleOverview(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    //   // binding: LoginBinding(),
    // ),
    // GetPage(
    //   name: Routes.purchaseEntry,
    //   page: () =>  PurchaseEntry(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    //   // binding: LoginBinding(),
    // ),
    // GetPage(
    //   name: Routes.purchaseIndetail,
    //   page: () =>  const PurchaseIndetail(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    //   // binding: LoginBinding(),
    // ),
    // GetPage(
    //   name: Routes.purchaseOverview,
    //   page: () =>  const PurchaseOverview(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    //   // binding: LoginBinding(),
    // ),
  ];
}
