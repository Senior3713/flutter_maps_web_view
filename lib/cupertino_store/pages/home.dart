import 'package:flutter/cupertino.dart';
import 'package:flutter_maps/cupertino_store/tabs/product_list_tab.dart';
import 'package:flutter_maps/cupertino_store/tabs/search_tab.dart';
import 'package:flutter_maps/cupertino_store/tabs/shopping_cart_tab.dart';

class CupertinoStoreHome extends StatelessWidget {
  const CupertinoStoreHome({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return switch (index) {
          0 => CupertinoTabView(
            builder: (context) => const CupertinoPageScaffold(
              child: ProductListTab(),
            ),
          ),
          1 => CupertinoTabView(
            builder: (context) => const CupertinoPageScaffold(
              child: SearchTab(),
            ),
          ),
          2 => CupertinoTabView(
            builder: (context) => const CupertinoPageScaffold(
              child: ShoppingCartTab(),
            ),
          ),
          _ => throw Exception('Invalid index $index'),
        };
      },
    );
  }
}
