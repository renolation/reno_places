

import 'package:reno_places/featured/category/domains/category_entity.dart';
import 'package:reno_places/providers/supabase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'category_repository.g.dart';

class CategoryRepository {
  CategoryRepository();

  Future<List<CategoryEntity>> getCategories(SupabaseClient client) async {
    final data = await client
        .from('categories')
        .select('*');
    print(data);
    final List list = data;
    return list.map((e) => CategoryEntity.fromJson(e)).toList();
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