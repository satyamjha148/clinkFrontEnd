import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'supply_repository.dart';

part 'supply_repository_impl.g.dart';

class SupplyRepositoryImpl extends SupplyRepository {
  // TODO add your methods here
}

@riverpod
 SupplyRepository supplyRepository(SupplyRepositoryRef ref) =>
    SupplyRepositoryImpl();

