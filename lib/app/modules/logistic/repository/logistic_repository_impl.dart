import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'logistic_repository.dart';

part 'logistic_repository_impl.g.dart';

class LogisticRepositoryImpl extends LogisticRepository {
  // TODO add your methods here
}

@riverpod
 LogisticRepository logisticRepository(LogisticRepositoryRef ref) =>
    LogisticRepositoryImpl();

