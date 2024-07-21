import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'inventory_repository.dart';

part 'inventory_repository_impl.g.dart';

class InventoryRepositoryImpl extends InventoryRepository {
  // TODO add your methods here
}

@riverpod
 InventoryRepository inventoryRepository(InventoryRepositoryRef ref) =>
    InventoryRepositoryImpl();

