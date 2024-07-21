import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'report_repository.dart';

part 'report_repository_impl.g.dart';

class ReportRepositoryImpl extends ReportRepository {
  // TODO add your methods here
}

@riverpod
 ReportRepository reportRepository(ReportRepositoryRef ref) =>
    ReportRepositoryImpl();

