import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'scanner_repository.dart';

part 'scanner_repository_impl.g.dart';

class ScannerRepositoryImpl extends ScannerRepository {
  // TODO add your methods here
}

@riverpod
 ScannerRepository scannerRepository(ScannerRepositoryRef ref) =>
    ScannerRepositoryImpl();

