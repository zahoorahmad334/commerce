import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constant/image_strings.dart';
import '../../../../../utils/constant/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding:  const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// - Brands
                const TBrandShowcase(
                  images: [
                    TImages.productImage3,
                    TImages.productImage5,
                    TImages.productImage4
                  ],
                ),
                TSectionHeading(title: 'You might like', onPressed: () {}),
                const SizedBox(height: TSizes.spaceBtwItems),

                TGridLayout(itemCount: 12, itemBuilder: (_, index) => const TProductCardVertical()),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
          ),
        ]
    );
  }
}