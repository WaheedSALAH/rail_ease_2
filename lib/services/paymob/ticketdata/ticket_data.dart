class TicketData {
  final String arrivalStation;
  final String currentStation;
  final int ticketPrice;
  final int numberOfStops;
  final String tripDuration;
  final String type;
  final String arrivalTimeToStation;
  final String arrivalTimeToDestinationStation;
  final String trainNumber;
  final String date;
  final List<int> selectedSeats; // Add selectedSeats field

  TicketData({
    required this.arrivalStation,
    required this.currentStation,
    required this.ticketPrice,
    required this.numberOfStops,
    required this.tripDuration,
    required this.type,
    required this.arrivalTimeToStation,
    required this.arrivalTimeToDestinationStation,
    required this.trainNumber,
    required this.date,
    required this.selectedSeats, // Initialize selectedSeats
  });

  factory TicketData.fromFirestore(Map<String, dynamic> data) {
    return TicketData(
      arrivalStation: data['arrivalStation'],
      currentStation: data['currentStation'],
      ticketPrice: data['ticketPrice'],
      numberOfStops: data['numberOfStops'],
      tripDuration: data['tripDuration'],
      type: data['type'],
      arrivalTimeToStation: data['arrivalTimeToStation'],
      arrivalTimeToDestinationStation: data['arrivalTimeToDestinationStation'],
      trainNumber: data['trainNumber'],
      date: data['date'],
      selectedSeats:
          List<int>.from(data['selectedSeats']), // Convert to List<int>
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'arrivalStation': arrivalStation,
      'currentStation': currentStation,
      'ticketPrice': ticketPrice,
      'numberOfStops': numberOfStops,
      'tripDuration': tripDuration,
      'type': type,
      'arrivalTimeToStation': arrivalTimeToStation,
      'arrivalTimeToDestinationStation': arrivalTimeToDestinationStation,
      'trainNumber': trainNumber,
      'date': date,
      'selectedSeats': selectedSeats, // Add selectedSeats to map
    };
  }

  TicketData copyWith({
    String? arrivalStation,
    String? currentStation,
    int? ticketPrice,
    int? numberOfStops,
    String? tripDuration,
    String? type,
    String? arrivalTimeToStation,
    String? arrivalTimeToDestinationStation,
    String? trainNumber,
    String? date,
    List<int>? selectedSeats, // Add selectedSeats parameter
  }) {
    return TicketData(
      arrivalStation: arrivalStation ?? this.arrivalStation,
      currentStation: currentStation ?? this.currentStation,
      ticketPrice: ticketPrice ?? this.ticketPrice,
      numberOfStops: numberOfStops ?? this.numberOfStops,
      tripDuration: tripDuration ?? this.tripDuration,
      type: type ?? this.type,
      arrivalTimeToStation: arrivalTimeToStation ?? this.arrivalTimeToStation,
      arrivalTimeToDestinationStation: arrivalTimeToDestinationStation ??
          this.arrivalTimeToDestinationStation,
      trainNumber: trainNumber ?? this.trainNumber,
      date: date ?? this.date,
      selectedSeats:
          selectedSeats ?? this.selectedSeats, // Add selectedSeats copy logic
    );
  }
}
