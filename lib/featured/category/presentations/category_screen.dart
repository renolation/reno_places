import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reno_places/featured/category/data/category_repository.dart';
import 'package:reno_places/featured/category/domains/category_entity.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CategoryScreen extends HookConsumerWidget {
  const CategoryScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('category'),
      ),
      body: Consumer(builder: (context, ref, child) {
        final categoryList = ref.watch(fetchCategoriesProvider);
        return categoryList.when(
          data: (data) {
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index){
                return Text(data[index].name!);
            });
          },
          error: (err, stack) => Text('Error $err'),
          loading: () => Text('loading'),
        );
      }),
    );
  }
}
