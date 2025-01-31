import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/common.dart';
import '../../../../../utils/utils.dart';
import '../controllers/help_center.controller.dart';

class HelpCenterTabFaq extends StatelessWidget {
  const HelpCenterTabFaq({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HelpCenterController());
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: TSizes.defaultSpace),
      child: Obx(
        () => controller.isLoading.value
            ? const CenterCircularProgressIndicator()
            : Column(
                children: [
                  // Filter FAQ
                  CustomFilterChips(chips: controller.chipList),

                  // FAQ
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: TSizes.defaultSpace,
                      vertical: TSizes.size12,
                    ),
                    child: Column(
                      children: [
                        ...List.generate(
                          controller.faqList.length,
                          (index) => CustomExpansionTile(
                            isExpanded: controller.faqList[index].expanded,
                            title: controller.faqList[index].title,
                            content: controller.faqList[index].content,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
