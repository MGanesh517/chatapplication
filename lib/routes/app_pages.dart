import 'package:get/get.dart';
import 'package:my_project/illustrations/Login%20Screens/login_signup.dart';

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
    // GetPage(
    //   name: Routes.companySplash,
    //   page: () => const CompanySplash(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.dashboardView,
    //   page: () => const MyHomePage(currentIndex: 0,),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.ledgerStatementEntry,
    //   page: () =>  const LedgerEntry(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.ledgerStatementIndetail,
    //   page: () =>   const LedgerDetails(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.ledgerStatementOverview,
    //   page: () =>  const LedgerOverview(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.accountEntry,
    //   page: () => const AccountEntry(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.accountIndetail,
    //   page: () => const AccountIndetail(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.accountOverview,
    //   page: () => const AccountOverview(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
    // GetPage(
    //   name: Routes.itemEntry,
    //   page: () =>  ItemEntry(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    // ),
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
