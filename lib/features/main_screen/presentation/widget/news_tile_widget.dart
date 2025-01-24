import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stealth_slotyi_testapp/core/assets/app_colors.dart';
import 'package:stealth_slotyi_testapp/core/assets/app_shadow_box.dart';
import 'package:stealth_slotyi_testapp/core/assets/app_textstyles.dart';

class NewsTileWidget extends StatelessWidget {
  const NewsTileWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.date,
      required this.imgUrl});
  final String title;
  final String subtitle;
  final String date;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 1,
          color: Colors.black12,
        ),
        color: AppColors.whiteColor,
        boxShadow: const [AppShadowBox.shadowBox1],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            child: Image.network(
              imgUrl,
              fit: BoxFit.cover,
              width: 123,
              height: 112,
              errorBuilder: (BuildContext context, Object object,
                  StackTrace? stackTrace) {
                return Image.asset(
                  'assets/images/mock_image/mock_image.png',
                  fit: BoxFit.cover,
                  width: 123,
                  height: 112,
                );
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextstyles.text700Black24,
                  ),
                  const Gap(5),
                  Text(
                    subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextstyles.text400Black19,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Spacer(),
                      Text(
                        date,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextstyles.text400Black17,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
