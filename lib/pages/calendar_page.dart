import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movil_wrc_app/providers/calendar_provider.dart';
import 'package:movil_wrc_app/widgets/tile_calendar.dart';

class CalendarPage extends ConsumerWidget {
  const CalendarPage({Key? key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendar = ref.watch(calendarProvider);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Calendar"),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Center(
            child: calendar.when(
              data: (calendarData) {
                return Column(
                  children: calendarData.map((event) {
                    return TileCalendar(
                      imgUrlLocation: event.imgUrlLocation,
                      imgUrlFlagCountry: event.imgUrlFlagCountry,
                      nameRally: event.nameRally,
                      nameCountry: event.nameCountry,
                      startDate: event.startDate,
                      endDate: event.endDate,
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
