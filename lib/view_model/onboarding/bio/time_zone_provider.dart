import 'package:flutter_riverpod/flutter_riverpod.dart';

final timeZoneProvider = StateNotifierProvider<TimeZoneNotifier, String>((ref) {
  return TimeZoneNotifier();
});

class TimeZoneNotifier extends StateNotifier<String> {
  // List of time zones
  final List<String> timeZones = [
    'Pacific/Midway',
    'America/New_York',
    'America/Chicago',
    'America/Denver',
    'America/Los_Angeles',
    'America/Anchorage',
    'Pacific/Honolulu',
    'Pacific/Marquesas',
    'America/Argentina/Buenos_Aires',
    'America/Sao_Paulo',
    'Atlantic/Azores',
    'Europe/London',
    'Europe/Paris',
    'Europe/Istanbul',
    'Asia/Dubai',
    'Asia/Karachi',
    'Asia/Kolkata',
    'Asia/Dhaka',
    'Asia/Jakarta',
    'Asia/Shanghai',
    'Asia/Tokyo',
    'Australia/Sydney',
    'Pacific/Fiji',
    'Pacific/Auckland',
  ];

  TimeZoneNotifier() : super("Sydney");

  void increaseTimeZone() {
    if (state == timeZones.last) {
      state = timeZones.first;
    } else {
      state = timeZones[timeZones.indexOf(state) + 1];
    }
  }

  void decreaseTimeZone() {
    if (state == timeZones.first) {
      state = timeZones.last;
    } else {
      state = timeZones[timeZones.indexOf(state) - 1];
    }
  }
}
