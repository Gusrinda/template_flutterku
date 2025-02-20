import 'dart:collection';
import 'dart:convert';
import 'dart:math';
import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:sulinda_sales/core.dart';
import 'package:sulinda_sales/src/core/assets/assets.gen.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/utils/formatter.dart';
import 'package:sulinda_sales/src/data/models/response/kalender/response_detail_calendar.dart';
import 'package:sulinda_sales/src/data/models/response/kalender/response_list_calendar.dart';
import 'package:sulinda_sales/src/presentation/blocs/kalender/bloc/calendar_bloc.dart'
    as cb;
import 'package:sulinda_sales/src/presentation/views/calendar/detail_tagihan_view.dart';
import 'package:sulinda_sales/src/presentation/views/calendar/dummy/event_class.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/so_detail_view.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_widget.dart';
import 'package:table_calendar/table_calendar.dart';

class MonthlyCalendarView extends StatefulWidget {
  const MonthlyCalendarView({super.key});

  static const String routeName = "/monthly_calendar_view";

  @override
  State<MonthlyCalendarView> createState() => _MonthlyCalendarViewState();
}

class _MonthlyCalendarViewState extends State<MonthlyCalendarView> {
  late final ValueNotifier<List<Event>> _selectedEvents;
  List<DataKalender>? daftarDataKalenderGlobal;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOff; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  String getStartOfMonth(DateTime datetime) {
    DateTime startOfMonth = DateTime(datetime.year, datetime.month, 1);
    return formatDate(startOfMonth);
  }

  String getEndOfMonth(DateTime datetime) {
    DateTime endOfMonth = DateTime(datetime.year, datetime.month + 1,
        0); // Hari terakhir di bulan berjalan
    return formatDate(endOfMonth);
  }

  String formatDate(DateTime date) {
    String month = date.month.toString().padLeft(2, '0');
    String day = date.day.toString().padLeft(2, '0');
    String year = date.year.toString();
    return "$month/$day/$year";
  }

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(
        _getEventsForDay(_selectedDay!, daftarDataKalenderGlobal ?? []));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<cb.CalendarBloc>().add(cb.GetDaftarData(
          startDate: getStartOfMonth(_focusedDay ?? DateTime.now()),
          endDate: getEndOfMonth(_focusedDay ?? DateTime.now())));

      context.read<cb.CalendarBloc>().add(
          cb.GetDetailKalender(date: kDateEventFormat.format(DateTime.now())));
    });
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  LinkedHashMap<DateTime, List<DataKalender>> generateKalenderData(
      List<DataKalender> daftarDataKalender) {
    final LinkedHashMap<DateTime, List<DataKalender>> kalenderData =
        LinkedHashMap<DateTime, List<DataKalender>>();

    for (var element in daftarDataKalender) {
      final date = DateTime.parse(element.activityDate!).toLocal();

      final key = DateTime(date.year, date.month, date.day);
      if (kalenderData[key] == null) {
        kalenderData[key] = [];
      }
      kalenderData[key]!.add(element);
    }

    return kalenderData;
  }

  List<Event> _getEventsForDay(
      DateTime day, List<DataKalender> daftarDataKalender) {
    LinkedHashMap<DateTime, List<DataKalender>> dummyKalenderData =
        generateKalenderData(daftarDataKalender);

    // Cari data kalender untuk tanggal tertentu
    DateTime key = DateTime(day.year, day.month, day.day);

    if (dummyKalenderData.containsKey(key)) {
      // Konversi List<DataKalender> menjadi List<Event>
      return dummyKalenderData[key]!.map((dataKalender) {
        return Event(
          title:
              'Orders: ${dataKalender.countOrder}, Tagihan: ${dataKalender.countTagihan}',
          description: 'Activity Date: ${dataKalender.activityDate}',
        );
      }).toList();
    }

    return []; // Return kosong jika tidak ada event
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _rangeStart = null; // Important to clean those
        _rangeEnd = null;
        _rangeSelectionMode = RangeSelectionMode.toggledOff;
      });

      _selectedEvents.value =
          _getEventsForDay(selectedDay, daftarDataKalenderGlobal ?? []);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<cb.CalendarBloc, cb.CalendarState>(
      listener: (context, state) {
        if (state.statusGetDataDetail == LoadingPageStatus.success) {
          Navigator.pushNamed(context, SoDetailView.routeName,
              arguments: {'body': state.responseDetailSO});
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Monthly Activities'),
          backgroundColor: themeHijauBg,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<cb.CalendarBloc, cb.CalendarState>(
                builder: (context, state) {
                  if (state.statusPage == LoadingPageStatus.loading) {
                    return SizedBox(
                      height: 200,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }

                  if (state.statusPage == LoadingPageStatus.success) {
                    List<DataKalender> daftarEventKalender =
                        List.from(state.responseListCalendar?.data ?? []);
                    daftarDataKalenderGlobal = List.from(daftarEventKalender);
                    return TableCalendar<Event>(
                      firstDay: kFirstDay,
                      lastDay: kLastDay,
                      focusedDay: _focusedDay,
                      calendarBuilders: CalendarBuilders(
                        defaultBuilder: (context, day, focusedDay) {
                          return Center(
                            child: Text(
                              '${day.day}',
                              style: TextStyle(
                                color: day.weekday == DateTime.sunday
                                    ? Colors.red[300]
                                    : Colors.black,
                              ),
                            ),
                          );
                        },
                        dowBuilder: (context, day) {
                          if (day.weekday == DateTime.sunday) {
                            final text = DateFormat.E().format(day);

                            return Center(
                              child: Text(
                                text,
                                style: TextStyle(color: Colors.red),
                              ),
                            );
                          }
                        },
                        markerBuilder: (BuildContext context, date, events) {
                          dev.log("EVENT ${date} => ${events}");
                          if (events.isEmpty) return SizedBox();
                          return ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: events.length,
                            itemBuilder: (context, index) {
                              final event = events[index];

                              // Tentukan apakah ada Orders atau Tagihan
                              bool hasOrders = event.title.contains('Orders') &&
                                  event.title
                                          .split('Orders: ')[1]
                                          .split(',')[0]
                                          .trim() !=
                                      '0';
                              bool hasTagihan = event.title
                                      .contains('Tagihan') &&
                                  event.title.split('Tagihan: ')[1].trim() !=
                                      '0';

                              // Buat list warna berdasarkan kondisi
                              List<Color> circleColors = [];
                              if (hasOrders)
                                circleColors.add(
                                    const Color(0xFF9747FF)); // Warna Orders
                              if (hasTagihan)
                                circleColors.add(
                                    const Color(0xFF21E9A9)); // Warna Tagihan

                              return Row(
                                children: circleColors.map((color) {
                                  return Container(
                                    margin: const EdgeInsets.only(top: 20),
                                    padding: const EdgeInsets.all(1),
                                    child: Container(
                                      width: 5, //for horizontal axis
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: color,
                                      ),
                                    ),
                                  );
                                }).toList(),
                              );
                            },
                          );
                        },
                      ),
                      selectedDayPredicate: (day) =>
                          isSameDay(_selectedDay, day),
                      rangeStartDay: _rangeStart,
                      rangeEndDay: _rangeEnd,
                      calendarFormat: _calendarFormat,
                      rangeSelectionMode: _rangeSelectionMode,
                      eventLoader: (day) {
                        return _getEventsForDay(day, daftarEventKalender);
                      },
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      headerStyle: HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                      ),
                      calendarStyle: CalendarStyle(
                        outsideDaysVisible: false,
                      ),
                      onDaySelected: (selectedDay, focusedDay) {
                        context.read<cb.CalendarBloc>().add(
                            cb.GetDetailKalender(
                                date: kDateEventFormat.format(selectedDay)));
                        return _onDaySelected(selectedDay, focusedDay);
                      },
                      onFormatChanged: (format) {
                        if (_calendarFormat != format) {
                          setState(() {
                            _calendarFormat = format;
                          });
                        }
                      },
                      onPageChanged: (focusedDay) {
                        print("PAGE CHANGED ${focusedDay}");
                        _focusedDay = focusedDay;
                        context.read<cb.CalendarBloc>().add(cb.GetDaftarData(
                            startDate:
                                getStartOfMonth(_focusedDay ?? DateTime.now()),
                            endDate:
                                getEndOfMonth(_focusedDay ?? DateTime.now())));
                      },
                    );
                  }

                  return TableCalendar<Event>(
                    firstDay: kFirstDay,
                    lastDay: kLastDay,
                    focusedDay: _focusedDay,
                    calendarBuilders: CalendarBuilders(
                      defaultBuilder: (context, day, focusedDay) {
                        return Center(
                          child: Text(
                            '${day.day}',
                            style: TextStyle(
                              color: day.weekday == DateTime.sunday
                                  ? Colors.red[300]
                                  : Colors.black,
                            ),
                          ),
                        );
                      },
                      dowBuilder: (context, day) {
                        if (day.weekday == DateTime.sunday) {
                          final text = DateFormat.E().format(day);

                          return Center(
                            child: Text(
                              text,
                              style: TextStyle(color: Colors.red),
                            ),
                          );
                        }
                      },
                      markerBuilder: (BuildContext context, date, events) {
                        dev.log("EVENT ${date} => ${events}");
                        if (events.isEmpty) return SizedBox();
                        return ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: events.length,
                          itemBuilder: (context, index) {
                            final event = events[index];

                            // Tentukan apakah ada Orders atau Tagihan
                            bool hasOrders = event.title.contains('Orders') &&
                                event.title
                                        .split('Orders: ')[1]
                                        .split(',')[0]
                                        .trim() !=
                                    '0';
                            bool hasTagihan = event.title.contains('Tagihan') &&
                                event.title.split('Tagihan: ')[1].trim() != '0';

                            // Buat list warna berdasarkan kondisi
                            List<Color> circleColors = [];
                            if (hasOrders)
                              circleColors
                                  .add(const Color(0xFF9747FF)); // Warna Orders
                            if (hasTagihan)
                              circleColors.add(
                                  const Color(0xFF21E9A9)); // Warna Tagihan

                            return Row(
                              children: circleColors.map((color) {
                                return Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  padding: const EdgeInsets.all(1),
                                  child: Container(
                                    width: 5, //for horizontal axis
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: color,
                                    ),
                                  ),
                                );
                              }).toList(),
                            );
                          },
                        );
                      },
                    ),
                    selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                    rangeStartDay: _rangeStart,
                    rangeEndDay: _rangeEnd,
                    calendarFormat: _calendarFormat,
                    rangeSelectionMode: _rangeSelectionMode,
                    // eventLoader: [] as List<Event>,
                    startingDayOfWeek: StartingDayOfWeek.monday,
                    headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: true,
                    ),
                    calendarStyle: CalendarStyle(
                      outsideDaysVisible: false,
                    ),
                    onDaySelected: (selectedDay, focusedDay) {
                      print("TANGGAL INI DIPILIH ${selectedDay}");

                      context.read<cb.CalendarBloc>().add(cb.GetDetailKalender(
                          date: kDateEventFormat.format(selectedDay)));
                      return _onDaySelected(selectedDay, focusedDay);
                    },
                    onFormatChanged: (format) {
                      if (_calendarFormat != format) {
                        setState(() {
                          _calendarFormat = format;
                        });
                      }
                    },
                    onPageChanged: (focusedDay) {
                      print("PAGE CHANGED ${focusedDay}");
                      _focusedDay = focusedDay;
                      context.read<cb.CalendarBloc>().add(cb.GetDaftarData(
                          startDate:
                              getStartOfMonth(_focusedDay ?? DateTime.now()),
                          endDate:
                              getEndOfMonth(_focusedDay ?? DateTime.now())));
                    },
                  );
                },
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Expanded(
                    child: HeaderLabel("Keterangan Aktivitas"),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  HeaderLabel(
                      '${kDateFullMonthFormat.format(_selectedDay ?? DateTime.now())}'),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                child: ValueListenableBuilder<List<Event>>(
                  valueListenable: _selectedEvents,
                  builder: (context, value, _) {
                    dev.log("EVENT ${value}");

                    // if (value.isEmpty) {
                    //   return SizedBox(
                    //     height: MediaQuery.of(context).size.height * 0.6,
                    //     child: Center(
                    //       child: Column(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           SvgPicture.asset(
                    //             Assets.svg.a79383373812170,
                    //             height: 148,
                    //           ),
                    //           const SizedBox(height: 10),
                    //           const Text('Belum ada daftar activity'),
                    //         ],
                    //       ),
                    //     ),
                    //   );
                    // } else {}

                    return BlocBuilder<cb.CalendarBloc, cb.CalendarState>(
                      buildWhen: (previous, current) => previous.repsonseDetailKalender != current.repsonseDetailKalender,
                      builder: (context, state) {
                        if (state.repsonseDetailKalender != null) {
                          List<DataEventKalender> daftarEvent = List.from(
                              state.repsonseDetailKalender?.data ?? []);

                          return ListView.builder(
                            itemCount: daftarEvent.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () async {
                                  if (daftarEvent[index].activityType ==
                                      'Tagihan') {
                                    Navigator.pushNamed(
                                      context,
                                      DetailTagihanView.routeName,
                                      arguments: daftarEvent[index],
                                    );
                                  } else {
                                    context.read<cb.CalendarBloc>().add(
                                          cb.GetDetailSO(
                                            idSO: daftarEvent[index]
                                                .refId
                                                .toString(),
                                          ),
                                        );
                                  }
                                },
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 8),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: index.isEven
                                        ? Colors.black12
                                        : Colors.white,
                                  ),
                                  child: ListTile(
                                    leading: Container(
                                      width: 32,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            daftarEvent[index].activityType ==
                                                    'Tagihan'
                                                ? Color(0xFF9747FF)
                                                : Color(0xFF21E9A9),
                                      ),
                                    ),
                                    title: Text(
                                      daftarEvent[index].activityType ?? '',
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          daftarEvent[index].activityNo ?? '',
                                          style:
                                              TextStyle(color: fontColorThin),
                                        ),
                                        Text(
                                          'Customer : ${daftarEvent[index].mCustName ?? ''}',
                                          style:
                                              TextStyle(color: fontColorThin),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        } else {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.6,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    Assets.svg.a79383373812170,
                                    height: 148,
                                  ),
                                  const SizedBox(height: 10),
                                  const Text('Belum ada daftar activity'),
                                ],
                              ),
                            ),
                          );
                        }
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
