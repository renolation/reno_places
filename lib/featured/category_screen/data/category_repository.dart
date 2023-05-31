

import 'package:reno_places/featured/category_screen/domains/category_entity.dart';
import 'package:reno_places/providers/supabase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'category_repository.g.dart';

class CategoryRepository {
  CategoryRepository();

  final _client = Supabase.instance.client;
  Future<List<CategoryEntity>> getCategories(SupabaseClient client) async {
    // final data = await client
    //     .from('categories')
    //     .select('*');

    final data = await client.from('categories').select('id, name, subcategories(id, name)');


    print(data);
    final List list = data;
    return list.map((e) => CategoryEntity.fromJson(e)).toList();
  }

  Future addCategory(String name) async{

    final data = await _client
        .from('categories')
        .insert({'name': name, 'image': '554'});
    print(data);
    return data;
  }
  Future addSubCategory(String name, int parentId) async{

    final data = await _client
        .from('subcategories')
        .insert({'name': name, 'image': '554', 'category_id': parentId});
    print(data);
    return data;
  }
}


@riverpod
CategoryRepository categoryRepository(CategoryRepositoryRef _) => CategoryRepository();

//provider fetch all category
@riverpod
Future<List<CategoryEntity>> fetchCategories(FetchCategoriesRef ref) async {
  final categoriesRepo = ref.watch(categoryRepositoryProvider);
  return categoriesRepo.getCategories(
    ref.read(supabaseProvider)
  );
}