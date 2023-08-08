import 'package:branchx_ui_test/status/status.dart';
import 'package:flutter/material.dart';

class StatusCustomWidget extends StatelessWidget {
  const StatusCustomWidget({Key? key, required this.statusName, required this.statusImage,}) : super(key: key);

  final String statusName;
  final String statusImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showDialog(
          context: context,
          builder: (BuildContext context) => Status(),
        );
      },
      child: Column(
          children: [
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40),),
                  border: Border.all(
                    width: 2,
                    color: Color(0xff80A0FF),
                    style: BorderStyle.solid,
                  ),
                ),
                child: Image.asset(statusImage),
                ),
                  SizedBox(height: 5,),
                  Text(statusName, overflow: TextOverflow.ellipsis, maxLines: 1, style: const TextStyle(color: Color(0xff404040),
                    fontFamily: 'Rubik',
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),)
                ],
              ),
            ),
          ]
      ),
    );
  }
}
