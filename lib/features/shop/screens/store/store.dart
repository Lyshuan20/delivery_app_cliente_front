import 'package:delivery_app_cliente/common/widgets/appbar/appbar.dart';
import 'package:delivery_app_cliente/common/widgets/appbar/tabbar.dart';
import 'package:delivery_app_cliente/common/widgets/brands/brand_card.dart';
import 'package:delivery_app_cliente/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:delivery_app_cliente/common/widgets/layouts/grid_layout.dart';
import 'package:delivery_app_cliente/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:delivery_app_cliente/common/widgets/texts/section_heading.dart';
import 'package:delivery_app_cliente/features/shop/screens/store/widgets/category_tab.dart';
import 'package:delivery_app_cliente/utils/constants/colors.dart';
import 'package:delivery_app_cliente/utils/constants/sizes.dart';
import 'package:delivery_app_cliente/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: LAppBar(
          title: Text('Tienda', style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            LCartCounterIcon(onPressed: (){})
          ],
        ),
        body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: LHelperFunctions.isDarkMode(context) ? LColors.black : LColors.white,
              expandedHeight: 440,
      
              flexibleSpace: Padding(
                  padding: const EdgeInsets.all(LSizes.defaultSapce),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: LSizes.spaceBtwItems,),
                      const LSearchContainer(text: 'Buscar en la tienda', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                      const SizedBox(height: LSizes.spaceBtwSection,),
      
                      // -- Feature Brands
                      LSectionHeading(title: 'Marcas destacadas', onPressed: (){}),
                      const SizedBox(height: LSizes.spaceBtwItems / 1.5),
      
                      LGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index){
                        return const LBrandCard(showBorder: false,);
                      }),
                    ],
                  ),
              ),
      
              // -- Tabs
              bottom: const LTabBar(
                tabs: [
                  Tab(child: Text('Todo')),
                ], 
              ),
            ),
          ];
        }, 
        
        // -- Body
        body: const TabBarView(
          children: [LCategoryTab()],
          ),
        ),
      ),
    );
  }
}

