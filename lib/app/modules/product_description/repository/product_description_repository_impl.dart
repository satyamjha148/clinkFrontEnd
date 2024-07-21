import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'product_description_repository.dart';

part 'product_description_repository_impl.g.dart';

class ProductDescriptionRepositoryImpl extends ProductDescriptionRepository {
  // TODO add your methods here
}

@riverpod
 ProductDescriptionRepository productDescriptionRepository(ProductDescriptionRepositoryRef ref) =>
    ProductDescriptionRepositoryImpl();

