import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constant/sizes.dart';
import 'brands_products.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// - Heading
              const TSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// - Brands
              TGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => TBrandCard(
                    showBorder: true,
                    onTap: () => Get.to(() => const BrandProducts()),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
