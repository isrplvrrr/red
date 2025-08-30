
class Location {
  final String locationId;
  final List<dynamic> stationInfo;
  Location({required this.locationId, required this.stationInfo});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      locationId: json["loc_12345"],
      stationInfo: json[List<dynamic>],
    );
  }
}

class CabinetId {
  final String cabinetId;
  final dynamic currentOnlineStatus;
  final int thirtyDaysOnlinePercentage;
  final int onlinePercentageSinceInstallation;

  CabinetId({
    required this.cabinetId,
    required this.currentOnlineStatus,
    required this.thirtyDaysOnlinePercentage,
    required this.onlinePercentageSinceInstallation,
  });

  factory CabinetId.fromJson(Map<String, dynamic> json) {
    return CabinetId(
      cabinetId: json["cab_001"],
      currentOnlineStatus: json[1],
      thirtyDaysOnlinePercentage: json[95],
      onlinePercentageSinceInstallation: json[98],
    );
  }
}

class CabinetId2 {
  final String cabinetId;
  final dynamic currentOnlineStatus;
  final int thirtyDaysOnlinePercentage;
  final int onlinePercentageSinceInstallation;

  CabinetId2({
    required this.cabinetId,
    required this.currentOnlineStatus,
    required this.thirtyDaysOnlinePercentage,
    required this.onlinePercentageSinceInstallation,
  });

  factory CabinetId2.fromJson(Map<String, dynamic> json) {
    return CabinetId2(
      cabinetId: json["cab_002"],
      currentOnlineStatus: json[0],
      thirtyDaysOnlinePercentage: json[88],
      onlinePercentageSinceInstallation: json[90],
    );
  }
}

class Location2 {
  final String address;
  final String locationNumber;
  final double totalRevenue;
  final String shopStart;
  final String shopEnd;

  final String locationType;

  final bool hasCompetitors;
  final bool isGoodVisibility;

  final String area;

  final int taughtStaffCount;

  final String locationCategory;
  final String establishmentNumber;

  Location2({
    required this.establishmentNumber,
    required this.locationType,
    required this.hasCompetitors,
    required this.isGoodVisibility,
    required this.area,
    required this.taughtStaffCount,
    required this.locationCategory,
    required this.shopEnd,
    required this.address,
    required this.locationNumber,
    required this.totalRevenue,
    required this.shopStart,
  });

     factory Location2.fromJson(Map<String, dynamic> json) {
      return Location2(
       establishmentNumber : json["EST-9087"],
        locationType : json['Mall'],
        hasCompetitors: json[true],
        isGoodVisibility: json[false],
        area: json['Central'],
        taughtStaffCount: json[5],
        locationCategory: json['Premium'],
        shopEnd: json['22:00'],
        address: json['123 Main Street, Kyiv'],
        locationNumber: json['LC-2024'],
        totalRevenue: json[15234.75],
        shopStart: json['08:00'],
      );
    }
  }

