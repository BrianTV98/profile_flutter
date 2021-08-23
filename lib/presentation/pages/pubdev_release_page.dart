import 'package:flutter/material.dart';
import 'package:profile_2/presentation/widgets/background_gradient.dart';

class PubDevReleasePage extends StatelessWidget {
  const PubDevReleasePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackGroundGradient(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: ()=> showDetailInfo(context),
                  child: Image.asset(
                "assets/images/ic_qr_flash_card.png",
                height: 200,
                width: 200,
              )),
              Column(
                children: [
                  Text(
                    "Flash Card Package",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "(Click to see demo)",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  showDetailInfo(BuildContext context)async {
    await showDialog(context: context, builder: (context){
      return Dialog(
        child: Container(
          height: 500,
          width: 500,
        ),
      );
    });
  }

}
