class TicketData {
  final String trainNumber;
  final String currentStation;
  final String arrivalStation;
  final String type;
  final String date;
  final String arrivalTimeToStation;
  final String arrivalTimeToDestinationStation;
  final int ticketPrice;
  final String tripDuration;

  TicketData({
    required this.trainNumber,
    required this.currentStation,
    required this.arrivalStation,
    required this.type,
    required this.date,
    required this.arrivalTimeToStation,
    required this.arrivalTimeToDestinationStation,
    required this.ticketPrice,
    required this.tripDuration,
  });

  TicketData copyWith({
    String? trainNumber,
    String? currentStation,
    String? arrivalStation,
    String? type,
    String? date,
    String? arrivalTimeToStation,
    String? arrivalTimeToDestinationStation,
    int? ticketPrice,
    String? tripDuration,
  }) {
    return TicketData(
      trainNumber: trainNumber ?? this.trainNumber,
      currentStation: currentStation ?? this.currentStation,
      arrivalStation: arrivalStation ?? this.arrivalStation,
      type: type ?? this.type,
      date: date ?? this.date,
      arrivalTimeToStation: arrivalTimeToStation ?? this.arrivalTimeToStation,
      arrivalTimeToDestinationStation: arrivalTimeToDestinationStation ??
          this.arrivalTimeToDestinationStation,
      ticketPrice: ticketPrice ?? this.ticketPrice,
      tripDuration: tripDuration ?? this.tripDuration,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'trainNumber': trainNumber,
      'currentStation': currentStation,
      'arrivalStation': arrivalStation,
      'type': type,
      'date': date,
      'arrivalTimeToStation': arrivalTimeToStation,
      'arrivalTimeToDestinationStation': arrivalTimeToDestinationStation,
      'ticketPrice': ticketPrice,
      'tripDuration': tripDuration,
    };
  }

  factory TicketData.fromFirestore(Map<String, dynamic> map) {
    return TicketData(
      trainNumber: map['trainNumber'],
      currentStation: map['currentStation'],
      arrivalStation: map['arrivalStation'],
      type: map['type'],
      date: map['date'],
      arrivalTimeToStation: map['arrivalTimeToStation'],
      arrivalTimeToDestinationStation: map['arrivalTimeToDestinationStation'],
      ticketPrice: map['ticketPrice'],
      tripDuration: map['tripDuration'],
    );
  }
}
