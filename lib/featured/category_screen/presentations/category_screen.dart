import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reno_places/featured/category_screen/data/category_repository.dart';
import 'package:reno_places/featured/category_screen/domains/category_entity.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CategoryScreen extends HookConsumerWidget {
  const CategoryScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('category'),
        actions: [
          TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('add sub category'),
                        content: TextField(
                          controller: categoryController,
                        ),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text('cancel')),
                          TextButton(onPressed: (){
                            ref.read(categoryRepositoryProvider).addSubCategory('Test', 1);
                          }, child: Text('OK')),
                        ],
                      );
                    });
              },
              child: Text('add sub')),
          TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('add category'),
                        content: TextField(
                          controller: categoryController,
                        ),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text('cancel')),
                          TextButton(onPressed: (){
                            ref.read(categoryRepositoryProvider).addCategory(categoryController.text);
                          }, child: Text('OK')),
                        ],
                      );
                    });
              },
              child: Text('add')),
        ],
      ),
      body: Consumer(builder: (context, ref, child) {
        final categoryList = ref.watch(fetchCategoriesProvider);
        return categoryList.when(
          data: (data) {
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ExpansionTile(
                      title: Text(data[index].name!),
                    children: data[index].subCategories!.map((subCategory) {
                      return ListTile(
                        title: Text(subCategory.name!),
                      );
                    }).toList(),
                  );
                });
          },
          error: (err, stack) => Text('Error $err'),
          loading: () => Text('loading'),
        );
      }),
    );
  }
}
