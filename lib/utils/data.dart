class Event {
  final String codename;
  final String guName;
  final String title;
  final String date;
  final String place;
  final String orgName;
  final String useTrgt;
  final String useFee;
  final String player;
  final String program;
  final String etcDesc;
  final String orgLink;
  final String mainImg;
  final String rgstDate;
  final String ticket;
  final String startDate;
  final String endDate;
  final String themeCode;
  final String lot;
  final String lat;
  final String isFree;
  final String hmpgAddr;

  Event({
    required this.codename,
    required this.guName,
    required this.title,
    required this.date,
    required this.place,
    required this.orgName,
    required this.useTrgt,
    required this.useFee,
    required this.player,
    required this.program,
    required this.etcDesc,
    required this.orgLink,
    required this.mainImg,
    required this.rgstDate,
    required this.ticket,
    required this.startDate,
    required this.endDate,
    required this.themeCode,
    required this.lot,
    required this.lat,
    required this.isFree,
    required this.hmpgAddr,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      codename: json['CODENAME'],
      guName: json['GUNAME'],
      title: json['TITLE'],
      date: json['DATE'],
      place: json['PLACE'],
      orgName: json['ORG_NAME'],
      useTrgt: json['USE_TRGT'],
      useFee: json['USE_FEE'],
      player: json['PLAYER'],
      program: json['PROGRAM'],
      etcDesc: json['ETC_DESC'],
      orgLink: json['ORG_LINK'],
      mainImg: json['MAIN_IMG'],
      rgstDate: json['RGSTDATE'],
      ticket: json['TICKET'],
      startDate: json['STRTDATE'],
      endDate: json['END_DATE'],
      themeCode: json['THEMECODE'],
      lot: json['LOT'],
      lat: json['LAT'],
      isFree: json['IS_FREE'],
      hmpgAddr: json['HMPG_ADDR'],
    );
  }
}
