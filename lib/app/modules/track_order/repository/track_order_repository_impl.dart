import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'track_order_repository.dart';

part 'track_order_repository_impl.g.dart';

class TrackOrderRepositoryImpl extends TrackOrderRepository {
  // TODO add your methods here
}

@riverpod
 TrackOrderRepository trackOrderRepository(TrackOrderRepositoryRef ref) =>
    TrackOrderRepositoryImpl();

