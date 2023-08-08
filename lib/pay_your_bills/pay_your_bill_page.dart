import 'package:branchx_ui_test/basic/resource.dart';
import 'package:branchx_ui_test/pay_your_bills/pay_your_bills.dart';
import 'package:flutter/material.dart';
class PayYourBillsPage extends StatelessWidget {
  const PayYourBillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.all(0),
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      children: const [
        PayYourBills(billName: 'Bills', billIcon: Resource.bills_image),
        PayYourBills(billName: 'Recharge', billIcon: Resource.recharge_image),
        PayYourBills(billName: 'DTH', billIcon: Resource.dish_image),
        PayYourBills(billName: 'Electricity', billIcon: Resource.electricity_image),
        PayYourBills(billName: 'Internet', billIcon: Resource.internet_image),
        PayYourBills(billName: 'Postpaid', billIcon: Resource.postpaid_image),
        PayYourBills(billName: 'Postpaid', billIcon: Resource.postpaid2_image),
        PayYourBills(billName: 'View All', billIcon: Resource.viewAll_image),
      ],
    );
  }
}
