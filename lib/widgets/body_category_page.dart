import 'package:branchx_ui_test/basic/resource.dart';
import 'package:branchx_ui_test/widgets/category_grid.dart';
import 'package:flutter/material.dart';
class BodyCategoryPage extends StatelessWidget {
  const BodyCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.all(0),
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      children: const [
        GridCategory(gridCategoryName : 'Gold', gridCategoryIcon: Resource.gold_image),
        GridCategory(gridCategoryName : 'Scan & Pay', gridCategoryIcon: Resource.scanAndPay_image),
        GridCategory(gridCategoryName : 'Jewelry', gridCategoryIcon: Resource.jewelry_image),
        GridCategory(gridCategoryName : 'Insurance', gridCategoryIcon: Resource.insurance_image),
        GridCategory(gridCategoryName : 'Refer & Earn', gridCategoryIcon: Resource.referAndEarn_image),
        GridCategory(gridCategoryName : 'Spin Win', gridCategoryIcon: Resource.spinWin_image),
        GridCategory(gridCategoryName : 'Send Money', gridCategoryIcon: Resource.sendMoney_image),
        GridCategory(gridCategoryName : 'Recharge & Bill', gridCategoryIcon: Resource.rechargAndBill_image),
        GridCategory(gridCategoryName : 'Passbook', gridCategoryIcon: Resource.passbook_image),

      ],
    );
  }
}
