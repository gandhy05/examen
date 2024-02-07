import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:movil_wrc_app/responseTypes/calendar_response.dart';

// Proveedor para la lista de eventos del calendario
final calendarProvider = FutureProvider.autoDispose((ref) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get(
    'https://api.wrc.com/content/filters/calendar?championship=wrc&origin=vcms&year=2024',
    options: Options(
      validateStatus: (status) => status! < 500,
    ),
  );
  return CalendarResponse.fromJson(response.data);
});

// Proveedor para la instancia de Dio
final dioProvider = Provider<Dio>((ref) => Dio());
