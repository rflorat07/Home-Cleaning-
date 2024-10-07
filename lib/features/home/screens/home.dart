import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_cleaning/features/home/widgets/popular_services_carousel.dart';
import 'package:home_cleaning/features/home/widgets/top_service_provider_carousel.dart';

import '../../../common/widgets/texts/section_heading.dart';
import '../../../utils/utils.dart';
import '../../category/screens/category.dart';
import '../widgets/categories_carousel.dart';
import '../widgets/primary_header_container.dart';
import '../widgets/special_offer_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0.0, backgroundColor: TColors.green),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            /// Header
            const TPrimaryHeaderContainer(),

            const SizedBox(height: TSizes.defaultSpace),

            /// Section Heading - SpecialForYou
            const TSectionHeading(
              title: TTexts.specialForYou,
              horizontal: TSizes.defaultSpace,
            ),

            const SizedBox(height: TSizes.spaceBtwItems),

            /// Special Offer Carousel
            const TSpecialOfferCarousel(),

            const SizedBox(height: TSizes.spaceBtwSections),

            /// Section Heading - Categories
            TSectionHeading(
              title: TTexts.categories,
              horizontal: TSizes.defaultSpace,
              onPressed: () => Get.to(() => const CategoryScreen()),
            ),

            const SizedBox(height: TSizes.spaceBtwItems),

            ///  Categories Carousel
            const TCategoriesCarousel(),

            const SizedBox(height: TSizes.spaceBtwSections),

            /// Section Heading - Popular Services
            const TSectionHeading(
              title: TTexts.popularServices,
              horizontal: TSizes.defaultSpace,
            ),

            const SizedBox(height: TSizes.spaceBtwItems),

            /// Popular Services Carousel
            const TPopularServicesCarousel(),

            const SizedBox(height: TSizes.spaceBtwSections),

            /// Section Heading - Top Service provider
            const TSectionHeading(
              title: TTexts.topServiceProvider,
              horizontal: TSizes.defaultSpace,
            ),

            const SizedBox(height: TSizes.spaceBtwItems),

            /// Service Provider Carousel
            const TTopServiceProviderCarousel(),

            const SizedBox(height: TSizes.spaceBtwSections),

            /// Body
          ],
        ),
      ),
    );
  }
}
