import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/list_tiles/setting_menu_tile.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constant/colors.dart';
import '../../../../utils/constant/sizes.dart';
import '../../../shop/screens/order/order.dart';
import '../address/address.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// - Header
            TPrimaryHeaderContainer(
              child: Column(children: [
                TAppBar(

                  /// - AppBar
                    title: Text('Account',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: TColors.white))),
                const SizedBox(height: TSizes.spaceBtwSections),

                /// - User Profile Card
                TUserProfileTile(
                  onPressed: () => Get.to(() => const ProfileScreen()),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
              ]),
            ),

            /// - Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// - Account Setting
                  const TSectionHeading(
                      title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(
                      icon: Iconsax.safe_home,
                      title: 'My Address',
                      subtitle: 'Set Shopping delivery address',
                      onTap: () => Get.to(() => const UserAddressScreen())),
                  const TSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subtitle: 'Add, remove product and move to checkout'),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-progress and Completed Orders',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  const TSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subtitle: 'Withdraw balance to registered bank account'),
                  const TSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subtitle: 'List of all the discounted coupons'),
                  const TSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subtitle: 'Set any kind of notification message'),
                  const TSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subtitle: 'Manage data usage and connected accounts'),

                  /// - App Settings
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSettingsMenuTile(
                      icon: Iconsax.document,
                      title: 'Load Data',
                      subtitle: 'Upload Data to your Cloud Firebase'),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  /// - LogOut Button
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
