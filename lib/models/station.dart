class Station {
  final String name;

  Station({required this.name});

  factory Station.fromJson(Map<String, dynamic> json) {
    return Station(
      name: json['name'] ??
          '', // Adjust according to your Firestore document structure
    );
  }
}
