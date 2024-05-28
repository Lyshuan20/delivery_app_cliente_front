import 'package:delivery_app_cliente/common/widgets/images/l_circular_image.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LUserProfileTile extends StatelessWidget {
  const LUserProfileTile({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const LCircularImage(image: LImages.user,width: 50,height: 50,padding: 0),
      title: Text('Lyshuan Navarro V', style: Theme.of(context).textTheme.headlineSmall!.apply(color: LColors.white)),
      subtitle: Text('lyshuan03_nv@hotmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: LColors.white)),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: LColors.white,)),
    );
  }
}