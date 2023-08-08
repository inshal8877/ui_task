import 'package:branchx_ui_test/basic/resource.dart';
import 'package:branchx_ui_test/widgets/status_widget.dart';
import 'package:branchx_ui_test/status/status.dart';
import 'package:flutter/material.dart';
class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          StatusCustomWidget(statusName: '#kaahani', statusImage: Resource.kaahaniThumbnail_image),
          StatusCustomWidget(statusName: '#winner', statusImage: Resource.winnerThumbnail_image),
          StatusCustomWidget(statusName: '#bikashbabu', statusImage: Resource.bikashbabuThumbnail_image),
          StatusCustomWidget(statusName: '#gold', statusImage: Resource.goldThumbnail_image),
          StatusCustomWidget(statusName: '#update', statusImage: Resource.kaahaniThumbnail_image),
          StatusCustomWidget(statusName: '#winner', statusImage: Resource.winnerThumbnail_image),
        ],
      ),
    );
  }
}
