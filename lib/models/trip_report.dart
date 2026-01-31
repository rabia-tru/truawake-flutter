class TripReport {
  final DateTime startTime;
  final DateTime endTime;
  final List<DrowsinessEvent> events;
  final int maxDrowsiness;
  final int alertCount;
  final int yawnCount;

  TripReport({
    required this.startTime,
    required this.endTime,
    required this.events,
    required this.maxDrowsiness,
    required this.alertCount,
    required this.yawnCount,
  });
}

class DrowsinessEvent {
  final DateTime timestamp;
  final int level;
  final List<String> cues;

  DrowsinessEvent({
    required this.timestamp,
    required this.level,
    required this.cues,
  });
}

class EnvironmentContext {
  final String roadType;
  final String timeOfDay;
  final int weatherCode;
  final double? speed;

  EnvironmentContext({
    required this.roadType,
    required this.timeOfDay,
    required this.weatherCode,
    this.speed,
  });

  Map<String, dynamic> toJson() => {
    'roadType': roadType,
    'timeOfDay': timeOfDay,
    'weatherCode': weatherCode,
    'speed': speed,
  };
}