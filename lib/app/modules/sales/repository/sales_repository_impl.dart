import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'sales_repository.dart';

part 'sales_repository_impl.g.dart';

class SalesRepositoryImpl extends SalesRepository {
  // TODO add your methods here
}

@riverpod
 SalesRepository salesRepository(SalesRepositoryRef ref) =>
    SalesRepositoryImpl();

