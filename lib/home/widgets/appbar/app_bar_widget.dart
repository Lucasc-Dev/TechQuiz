import 'package:techquiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:techquiz/core/app_gradients.dart';
import 'package:techquiz/core/app_text_styles.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() : super(
    preferredSize: Size.fromHeight(200),
    child: Container(
      height: 200,
      decoration: BoxDecoration(
        gradient: AppGradients.linear,
      ),
      child: Stack(
        children: [
          Container(
            height: 161,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Olá, ",
                    style: AppTextStyles.title,
                    children: [
                      TextSpan(
                        text: "Lucas",
                        style: AppTextStyles.titleBold,
                      )
                    ], 
                  )
                ),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage("https://avatars.githubusercontent.com/u/62844136?v=4")
                    )
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.0, 3),
            child: ScoreCardWidget()
          ),
        ],
      )
    ),
  );

}