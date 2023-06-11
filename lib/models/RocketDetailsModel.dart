/// height : {"meters":70,"feet":229.6}
/// diameter : {"meters":12.2,"feet":39.9}
/// mass : {"kg":1420788,"lb":3125735}
/// first_stage : {"thrust_sea_level":{"kN":22819,"lbf":5130000},"thrust_vacuum":{"kN":24681,"lbf":5548500},"reusable":true,"engines":27,"fuel_amount_tons":1155,"burn_time_sec":162}
/// second_stage : {"thrust":{"kN":934,"lbf":210000},"payloads":{"composite_fairing":{"height":{"meters":13.1,"feet":43},"diameter":{"meters":5.2,"feet":17.1}},"option_1":"dragon"},"reusable":false,"engines":1,"fuel_amount_tons":90,"burn_time_sec":397}
/// engines : {"isp":{"sea_level":288,"vacuum":312},"thrust_sea_level":{"kN":845,"lbf":190000},"thrust_vacuum":{"kN":914,"lbf":205500},"number":27,"type":"merlin","version":"1D+","layout":"octaweb","engine_loss_max":6,"propellant_1":"liquid oxygen","propellant_2":"RP-1 kerosene","thrust_to_weight":180.1}
/// landing_legs : {"number":12,"material":"carbon fiber"}
/// payload_weights : [{"id":"leo","name":"Low Earth Orbit","kg":63800,"lb":140660},{"id":"gto","name":"Geosynchronous Transfer Orbit","kg":26700,"lb":58860},{"id":"mars","name":"Mars Orbit","kg":16800,"lb":37040},{"id":"pluto","name":"Pluto Orbit","kg":3500,"lb":7720}]
/// flickr_images : ["https://farm5.staticflickr.com/4599/38583829295_581f34dd84_b.jpg","https://farm5.staticflickr.com/4645/38583830575_3f0f7215e6_b.jpg","https://farm5.staticflickr.com/4696/40126460511_b15bf84c85_b.jpg","https://farm5.staticflickr.com/4711/40126461411_aabc643fd8_b.jpg"]
/// name : "Falcon Heavy"
/// type : "rocket"
/// active : true
/// stages : 2
/// boosters : 2
/// cost_per_launch : 90000000
/// success_rate_pct : 100
/// first_flight : "2018-02-06"
/// country : "United States"
/// company : "SpaceX"
/// wikipedia : "https://en.wikipedia.org/wiki/Falcon_Heavy"
/// description : "With the ability to lift into orbit over 54 metric tons (119,000 lb)--a mass equivalent to a 737 jetliner loaded with passengers, crew, luggage and fuel--Falcon Heavy can lift more than twice the payload of the next closest operational vehicle, the Delta IV Heavy, at one-third the cost."
/// id : "5e9d0d95eda69974db09d1ed"

class RocketDetailsModel {
  RocketDetailsModel({
    Height? height,
    Diameter? diameter,
    Mass? mass,
    FirstStage? firstStage,
    SecondStage? secondStage,
    Engines? engines,
    LandingLegs? landingLegs,
    List<PayloadWeights>? payloadWeights,
    List<String>? flickrImages,
    String? name,
    String? type,
    bool? active,
    num? stages,
    num? boosters,
    num? costPerLaunch,
    num? successRatePct,
    String? firstFlight,
    String? country,
    String? company,
    String? wikipedia,
    String? description,
    String? id,
  }) {
    _height = height;
    _diameter = diameter;
    _mass = mass;
    _firstStage = firstStage;
    _secondStage = secondStage;
    _engines = engines;
    _landingLegs = landingLegs;
    _payloadWeights = payloadWeights;
    _flickrImages = flickrImages;
    _name = name;
    _type = type;
    _active = active;
    _stages = stages;
    _boosters = boosters;
    _costPerLaunch = costPerLaunch;
    _successRatePct = successRatePct;
    _firstFlight = firstFlight;
    _country = country;
    _company = company;
    _wikipedia = wikipedia;
    _description = description;
    _id = id;
  }

  RocketDetailsModel.fromJson(dynamic json) {
    _height = json['height'] != null ? Height.fromJson(json['height']) : null;
    _diameter =
        json['diameter'] != null ? Diameter.fromJson(json['diameter']) : null;
    _mass = json['mass'] != null ? Mass.fromJson(json['mass']) : null;
    _firstStage = json['first_stage'] != null
        ? FirstStage.fromJson(json['first_stage'])
        : null;
    _secondStage = json['second_stage'] != null
        ? SecondStage.fromJson(json['second_stage'])
        : null;
    _engines =
        json['engines'] != null ? Engines.fromJson(json['engines']) : null;
    _landingLegs = json['landing_legs'] != null
        ? LandingLegs.fromJson(json['landing_legs'])
        : null;
    if (json['payload_weights'] != null) {
      _payloadWeights = [];
      json['payload_weights'].forEach((v) {
        _payloadWeights?.add(PayloadWeights.fromJson(v));
      });
    }
    _flickrImages = json['flickr_images'] != null
        ? json['flickr_images'].cast<String>()
        : [];
    _name = json['name'];
    _type = json['type'];
    _active = json['active'];
    _stages = json['stages'];
    _boosters = json['boosters'];
    _costPerLaunch = json['cost_per_launch'];
    _successRatePct = json['success_rate_pct'];
    _firstFlight = json['first_flight'];
    _country = json['country'];
    _company = json['company'];
    _wikipedia = json['wikipedia'];
    _description = json['description'];
    _id = json['id'];
  }

  Height? _height;
  Diameter? _diameter;
  Mass? _mass;
  FirstStage? _firstStage;
  SecondStage? _secondStage;
  Engines? _engines;
  LandingLegs? _landingLegs;
  List<PayloadWeights>? _payloadWeights;
  List<String>? _flickrImages;
  String? _name;
  String? _type;
  bool? _active;
  num? _stages;
  num? _boosters;
  num? _costPerLaunch;
  num? _successRatePct;
  String? _firstFlight;
  String? _country;
  String? _company;
  String? _wikipedia;
  String? _description;
  String? _id;

  RocketDetailsModel copyWith({
    Height? height,
    Diameter? diameter,
    Mass? mass,
    FirstStage? firstStage,
    SecondStage? secondStage,
    Engines? engines,
    LandingLegs? landingLegs,
    List<PayloadWeights>? payloadWeights,
    List<String>? flickrImages,
    String? name,
    String? type,
    bool? active,
    num? stages,
    num? boosters,
    num? costPerLaunch,
    num? successRatePct,
    String? firstFlight,
    String? country,
    String? company,
    String? wikipedia,
    String? description,
    String? id,
  }) =>
      RocketDetailsModel(
        height: height ?? _height,
        diameter: diameter ?? _diameter,
        mass: mass ?? _mass,
        firstStage: firstStage ?? _firstStage,
        secondStage: secondStage ?? _secondStage,
        engines: engines ?? _engines,
        landingLegs: landingLegs ?? _landingLegs,
        payloadWeights: payloadWeights ?? _payloadWeights,
        flickrImages: flickrImages ?? _flickrImages,
        name: name ?? _name,
        type: type ?? _type,
        active: active ?? _active,
        stages: stages ?? _stages,
        boosters: boosters ?? _boosters,
        costPerLaunch: costPerLaunch ?? _costPerLaunch,
        successRatePct: successRatePct ?? _successRatePct,
        firstFlight: firstFlight ?? _firstFlight,
        country: country ?? _country,
        company: company ?? _company,
        wikipedia: wikipedia ?? _wikipedia,
        description: description ?? _description,
        id: id ?? _id,
      );

  Height? get height => _height;

  Diameter? get diameter => _diameter;

  Mass? get mass => _mass;

  FirstStage? get firstStage => _firstStage;

  SecondStage? get secondStage => _secondStage;

  Engines? get engines => _engines;

  LandingLegs? get landingLegs => _landingLegs;

  List<PayloadWeights>? get payloadWeights => _payloadWeights;

  List<String>? get flickrImages => _flickrImages;

  String? get name => _name;

  String? get type => _type;

  bool? get active => _active;

  num? get stages => _stages;

  num? get boosters => _boosters;

  num? get costPerLaunch => _costPerLaunch;

  num? get successRatePct => _successRatePct;

  String? get firstFlight => _firstFlight;

  String? get country => _country;

  String? get company => _company;

  String? get wikipedia => _wikipedia;

  String? get description => _description;

  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_height != null) {
      map['height'] = _height?.toJson();
    }
    if (_diameter != null) {
      map['diameter'] = _diameter?.toJson();
    }
    if (_mass != null) {
      map['mass'] = _mass?.toJson();
    }
    if (_firstStage != null) {
      map['first_stage'] = _firstStage?.toJson();
    }
    if (_secondStage != null) {
      map['second_stage'] = _secondStage?.toJson();
    }
    if (_engines != null) {
      map['engines'] = _engines?.toJson();
    }
    if (_landingLegs != null) {
      map['landing_legs'] = _landingLegs?.toJson();
    }
    if (_payloadWeights != null) {
      map['payload_weights'] = _payloadWeights?.map((v) => v.toJson()).toList();
    }
    map['flickr_images'] = _flickrImages;
    map['name'] = _name;
    map['type'] = _type;
    map['active'] = _active;
    map['stages'] = _stages;
    map['boosters'] = _boosters;
    map['cost_per_launch'] = _costPerLaunch;
    map['success_rate_pct'] = _successRatePct;
    map['first_flight'] = _firstFlight;
    map['country'] = _country;
    map['company'] = _company;
    map['wikipedia'] = _wikipedia;
    map['description'] = _description;
    map['id'] = _id;
    return map;
  }
}

/// id : "leo"
/// name : "Low Earth Orbit"
/// kg : 63800
/// lb : 140660

class PayloadWeights {
  PayloadWeights({
    String? id,
    String? name,
    num? kg,
    num? lb,
  }) {
    _id = id;
    _name = name;
    _kg = kg;
    _lb = lb;
  }

  PayloadWeights.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _kg = json['kg'];
    _lb = json['lb'];
  }

  String? _id;
  String? _name;
  num? _kg;
  num? _lb;

  PayloadWeights copyWith({
    String? id,
    String? name,
    num? kg,
    num? lb,
  }) =>
      PayloadWeights(
        id: id ?? _id,
        name: name ?? _name,
        kg: kg ?? _kg,
        lb: lb ?? _lb,
      );

  String? get id => _id;

  String? get name => _name;

  num? get kg => _kg;

  num? get lb => _lb;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['kg'] = _kg;
    map['lb'] = _lb;
    return map;
  }
}

/// number : 12
/// material : "carbon fiber"

class LandingLegs {
  LandingLegs({
    num? number,
    String? material,
  }) {
    _number = number;
    _material = material;
  }

  LandingLegs.fromJson(dynamic json) {
    _number = json['number'];
    _material = json['material'];
  }

  num? _number;
  String? _material;

  LandingLegs copyWith({
    num? number,
    String? material,
  }) =>
      LandingLegs(
        number: number ?? _number,
        material: material ?? _material,
      );

  num? get number => _number;

  String? get material => _material;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['number'] = _number;
    map['material'] = _material;
    return map;
  }
}

/// isp : {"sea_level":288,"vacuum":312}
/// thrust_sea_level : {"kN":845,"lbf":190000}
/// thrust_vacuum : {"kN":914,"lbf":205500}
/// number : 27
/// type : "merlin"
/// version : "1D+"
/// layout : "octaweb"
/// engine_loss_max : 6
/// propellant_1 : "liquid oxygen"
/// propellant_2 : "RP-1 kerosene"
/// thrust_to_weight : 180.1

class Engines {
  Engines({
    Isp? isp,
    ThrustSeaLevel? thrustSeaLevel,
    ThrustVacuum? thrustVacuum,
    num? number,
    String? type,
    String? version,
    String? layout,
    num? engineLossMax,
    String? propellant1,
    String? propellant2,
    num? thrustToWeight,
  }) {
    _isp = isp;
    _thrustSeaLevel = thrustSeaLevel;
    _thrustVacuum = thrustVacuum;
    _number = number;
    _type = type;
    _version = version;
    _layout = layout;
    _engineLossMax = engineLossMax;
    _propellant1 = propellant1;
    _propellant2 = propellant2;
    _thrustToWeight = thrustToWeight;
  }

  Engines.fromJson(dynamic json) {
    _isp = json['isp'] != null ? Isp.fromJson(json['isp']) : null;
    _thrustSeaLevel = json['thrust_sea_level'] != null
        ? ThrustSeaLevel.fromJson(json['thrust_sea_level'])
        : null;
    _thrustVacuum = json['thrust_vacuum'] != null
        ? ThrustVacuum.fromJson(json['thrust_vacuum'])
        : null;
    _number = json['number'];
    _type = json['type'];
    _version = json['version'];
    _layout = json['layout'];
    _engineLossMax = json['engine_loss_max'];
    _propellant1 = json['propellant_1'];
    _propellant2 = json['propellant_2'];
    _thrustToWeight = json['thrust_to_weight'];
  }

  Isp? _isp;
  ThrustSeaLevel? _thrustSeaLevel;
  ThrustVacuum? _thrustVacuum;
  num? _number;
  String? _type;
  String? _version;
  String? _layout;
  num? _engineLossMax;
  String? _propellant1;
  String? _propellant2;
  num? _thrustToWeight;

  Engines copyWith({
    Isp? isp,
    ThrustSeaLevel? thrustSeaLevel,
    ThrustVacuum? thrustVacuum,
    num? number,
    String? type,
    String? version,
    String? layout,
    num? engineLossMax,
    String? propellant1,
    String? propellant2,
    num? thrustToWeight,
  }) =>
      Engines(
        isp: isp ?? _isp,
        thrustSeaLevel: thrustSeaLevel ?? _thrustSeaLevel,
        thrustVacuum: thrustVacuum ?? _thrustVacuum,
        number: number ?? _number,
        type: type ?? _type,
        version: version ?? _version,
        layout: layout ?? _layout,
        engineLossMax: engineLossMax ?? _engineLossMax,
        propellant1: propellant1 ?? _propellant1,
        propellant2: propellant2 ?? _propellant2,
        thrustToWeight: thrustToWeight ?? _thrustToWeight,
      );

  Isp? get isp => _isp;

  ThrustSeaLevel? get thrustSeaLevel => _thrustSeaLevel;

  ThrustVacuum? get thrustVacuum => _thrustVacuum;

  num? get number => _number;

  String? get type => _type;

  String? get version => _version;

  String? get layout => _layout;

  num? get engineLossMax => _engineLossMax;

  String? get propellant1 => _propellant1;

  String? get propellant2 => _propellant2;

  num? get thrustToWeight => _thrustToWeight;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_isp != null) {
      map['isp'] = _isp?.toJson();
    }
    if (_thrustSeaLevel != null) {
      map['thrust_sea_level'] = _thrustSeaLevel?.toJson();
    }
    if (_thrustVacuum != null) {
      map['thrust_vacuum'] = _thrustVacuum?.toJson();
    }
    map['number'] = _number;
    map['type'] = _type;
    map['version'] = _version;
    map['layout'] = _layout;
    map['engine_loss_max'] = _engineLossMax;
    map['propellant_1'] = _propellant1;
    map['propellant_2'] = _propellant2;
    map['thrust_to_weight'] = _thrustToWeight;
    return map;
  }
}

/// kN : 914
/// lbf : 205500

/// sea_level : 288
/// vacuum : 312

class Isp {
  Isp({
    num? seaLevel,
    num? vacuum,
  }) {
    _seaLevel = seaLevel;
    _vacuum = vacuum;
  }

  Isp.fromJson(dynamic json) {
    _seaLevel = json['sea_level'];
    _vacuum = json['vacuum'];
  }

  num? _seaLevel;
  num? _vacuum;

  Isp copyWith({
    num? seaLevel,
    num? vacuum,
  }) =>
      Isp(
        seaLevel: seaLevel ?? _seaLevel,
        vacuum: vacuum ?? _vacuum,
      );

  num? get seaLevel => _seaLevel;

  num? get vacuum => _vacuum;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sea_level'] = _seaLevel;
    map['vacuum'] = _vacuum;
    return map;
  }
}

/// thrust : {"kN":934,"lbf":210000}
/// payloads : {"composite_fairing":{"height":{"meters":13.1,"feet":43},"diameter":{"meters":5.2,"feet":17.1}},"option_1":"dragon"}
/// reusable : false
/// engines : 1
/// fuel_amount_tons : 90
/// burn_time_sec : 397

class SecondStage {
  SecondStage({
    Thrust? thrust,
    Payloads? payloads,
    bool? reusable,
    num? engines,
    num? fuelAmountTons,
    num? burnTimeSec,
  }) {
    _thrust = thrust;
    _payloads = payloads;
    _reusable = reusable;
    _engines = engines;
    _fuelAmountTons = fuelAmountTons;
    _burnTimeSec = burnTimeSec;
  }

  SecondStage.fromJson(dynamic json) {
    _thrust = json['thrust'] != null ? Thrust.fromJson(json['thrust']) : null;
    _payloads =
        json['payloads'] != null ? Payloads.fromJson(json['payloads']) : null;
    _reusable = json['reusable'];
    _engines = json['engines'];
    _fuelAmountTons = json['fuel_amount_tons'];
    _burnTimeSec = json['burn_time_sec'];
  }

  Thrust? _thrust;
  Payloads? _payloads;
  bool? _reusable;
  num? _engines;
  num? _fuelAmountTons;
  num? _burnTimeSec;

  SecondStage copyWith({
    Thrust? thrust,
    Payloads? payloads,
    bool? reusable,
    num? engines,
    num? fuelAmountTons,
    num? burnTimeSec,
  }) =>
      SecondStage(
        thrust: thrust ?? _thrust,
        payloads: payloads ?? _payloads,
        reusable: reusable ?? _reusable,
        engines: engines ?? _engines,
        fuelAmountTons: fuelAmountTons ?? _fuelAmountTons,
        burnTimeSec: burnTimeSec ?? _burnTimeSec,
      );

  Thrust? get thrust => _thrust;

  Payloads? get payloads => _payloads;

  bool? get reusable => _reusable;

  num? get engines => _engines;

  num? get fuelAmountTons => _fuelAmountTons;

  num? get burnTimeSec => _burnTimeSec;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_thrust != null) {
      map['thrust'] = _thrust?.toJson();
    }
    if (_payloads != null) {
      map['payloads'] = _payloads?.toJson();
    }
    map['reusable'] = _reusable;
    map['engines'] = _engines;
    map['fuel_amount_tons'] = _fuelAmountTons;
    map['burn_time_sec'] = _burnTimeSec;
    return map;
  }
}

/// composite_fairing : {"height":{"meters":13.1,"feet":43},"diameter":{"meters":5.2,"feet":17.1}}
/// option_1 : "dragon"

class Payloads {
  Payloads({
    CompositeFairing? compositeFairing,
    String? option1,
  }) {
    _compositeFairing = compositeFairing;
    _option1 = option1;
  }

  Payloads.fromJson(dynamic json) {
    _compositeFairing = json['composite_fairing'] != null
        ? CompositeFairing.fromJson(json['composite_fairing'])
        : null;
    _option1 = json['option_1'];
  }

  CompositeFairing? _compositeFairing;
  String? _option1;

  Payloads copyWith({
    CompositeFairing? compositeFairing,
    String? option1,
  }) =>
      Payloads(
        compositeFairing: compositeFairing ?? _compositeFairing,
        option1: option1 ?? _option1,
      );

  CompositeFairing? get compositeFairing => _compositeFairing;

  String? get option1 => _option1;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_compositeFairing != null) {
      map['composite_fairing'] = _compositeFairing?.toJson();
    }
    map['option_1'] = _option1;
    return map;
  }
}

/// height : {"meters":13.1,"feet":43}
/// diameter : {"meters":5.2,"feet":17.1}

class CompositeFairing {
  CompositeFairing({
    Height? height,
    Diameter? diameter,
  }) {
    _height = height;
    _diameter = diameter;
  }

  CompositeFairing.fromJson(dynamic json) {
    _height = json['height'] != null ? Height.fromJson(json['height']) : null;
    _diameter =
        json['diameter'] != null ? Diameter.fromJson(json['diameter']) : null;
  }

  Height? _height;
  Diameter? _diameter;

  CompositeFairing copyWith({
    Height? height,
    Diameter? diameter,
  }) =>
      CompositeFairing(
        height: height ?? _height,
        diameter: diameter ?? _diameter,
      );

  Height? get height => _height;

  Diameter? get diameter => _diameter;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_height != null) {
      map['height'] = _height?.toJson();
    }
    if (_diameter != null) {
      map['diameter'] = _diameter?.toJson();
    }
    return map;
  }
}

/// meters : 5.2
/// feet : 17.1

class Diameter {
  Diameter({
    num? meters,
    num? feet,
  }) {
    _meters = meters;
    _feet = feet;
  }

  Diameter.fromJson(dynamic json) {
    _meters = json['meters'];
    _feet = json['feet'];
  }

  num? _meters;
  num? _feet;

  Diameter copyWith({
    num? meters,
    num? feet,
  }) =>
      Diameter(
        meters: meters ?? _meters,
        feet: feet ?? _feet,
      );

  num? get meters => _meters;

  num? get feet => _feet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['meters'] = _meters;
    map['feet'] = _feet;
    return map;
  }
}

/// meters : 13.1
/// feet : 43

class Height {
  Height({
    num? meters,
    num? feet,
  }) {
    _meters = meters;
    _feet = feet;
  }

  Height.fromJson(dynamic json) {
    _meters = json['meters'];
    _feet = json['feet'];
  }

  num? _meters;
  num? _feet;

  Height copyWith({
    num? meters,
    num? feet,
  }) =>
      Height(
        meters: meters ?? _meters,
        feet: feet ?? _feet,
      );

  num? get meters => _meters;

  num? get feet => _feet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['meters'] = _meters;
    map['feet'] = _feet;
    return map;
  }
}

/// kN : 934
/// lbf : 210000

class Thrust {
  Thrust({
    num? kN,
    num? lbf,
  }) {
    _kN = kN;
    _lbf = lbf;
  }

  Thrust.fromJson(dynamic json) {
    _kN = json['kN'];
    _lbf = json['lbf'];
  }

  num? _kN;
  num? _lbf;

  Thrust copyWith({
    num? kN,
    num? lbf,
  }) =>
      Thrust(
        kN: kN ?? _kN,
        lbf: lbf ?? _lbf,
      );

  num? get kN => _kN;

  num? get lbf => _lbf;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kN'] = _kN;
    map['lbf'] = _lbf;
    return map;
  }
}

/// thrust_sea_level : {"kN":22819,"lbf":5130000}
/// thrust_vacuum : {"kN":24681,"lbf":5548500}
/// reusable : true
/// engines : 27
/// fuel_amount_tons : 1155
/// burn_time_sec : 162

class FirstStage {
  FirstStage({
    ThrustSeaLevel? thrustSeaLevel,
    ThrustVacuum? thrustVacuum,
    bool? reusable,
    num? engines,
    num? fuelAmountTons,
    num? burnTimeSec,
  }) {
    _thrustSeaLevel = thrustSeaLevel;
    _thrustVacuum = thrustVacuum;
    _reusable = reusable;
    _engines = engines;
    _fuelAmountTons = fuelAmountTons;
    _burnTimeSec = burnTimeSec;
  }

  FirstStage.fromJson(dynamic json) {
    _thrustSeaLevel = json['thrust_sea_level'] != null
        ? ThrustSeaLevel.fromJson(json['thrust_sea_level'])
        : null;
    _thrustVacuum = json['thrust_vacuum'] != null
        ? ThrustVacuum.fromJson(json['thrust_vacuum'])
        : null;
    _reusable = json['reusable'];
    _engines = json['engines'];
    _fuelAmountTons = json['fuel_amount_tons'];
    _burnTimeSec = json['burn_time_sec'];
  }

  ThrustSeaLevel? _thrustSeaLevel;
  ThrustVacuum? _thrustVacuum;
  bool? _reusable;
  num? _engines;
  num? _fuelAmountTons;
  num? _burnTimeSec;

  FirstStage copyWith({
    ThrustSeaLevel? thrustSeaLevel,
    ThrustVacuum? thrustVacuum,
    bool? reusable,
    num? engines,
    num? fuelAmountTons,
    num? burnTimeSec,
  }) =>
      FirstStage(
        thrustSeaLevel: thrustSeaLevel ?? _thrustSeaLevel,
        thrustVacuum: thrustVacuum ?? _thrustVacuum,
        reusable: reusable ?? _reusable,
        engines: engines ?? _engines,
        fuelAmountTons: fuelAmountTons ?? _fuelAmountTons,
        burnTimeSec: burnTimeSec ?? _burnTimeSec,
      );

  ThrustSeaLevel? get thrustSeaLevel => _thrustSeaLevel;

  ThrustVacuum? get thrustVacuum => _thrustVacuum;

  bool? get reusable => _reusable;

  num? get engines => _engines;

  num? get fuelAmountTons => _fuelAmountTons;

  num? get burnTimeSec => _burnTimeSec;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_thrustSeaLevel != null) {
      map['thrust_sea_level'] = _thrustSeaLevel?.toJson();
    }
    if (_thrustVacuum != null) {
      map['thrust_vacuum'] = _thrustVacuum?.toJson();
    }
    map['reusable'] = _reusable;
    map['engines'] = _engines;
    map['fuel_amount_tons'] = _fuelAmountTons;
    map['burn_time_sec'] = _burnTimeSec;
    return map;
  }
}

/// kN : 24681
/// lbf : 5548500

class ThrustVacuum {
  ThrustVacuum({
    num? kN,
    num? lbf,
  }) {
    _kN = kN;
    _lbf = lbf;
  }

  ThrustVacuum.fromJson(dynamic json) {
    _kN = json['kN'];
    _lbf = json['lbf'];
  }

  num? _kN;
  num? _lbf;

  ThrustVacuum copyWith({
    num? kN,
    num? lbf,
  }) =>
      ThrustVacuum(
        kN: kN ?? _kN,
        lbf: lbf ?? _lbf,
      );

  num? get kN => _kN;

  num? get lbf => _lbf;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kN'] = _kN;
    map['lbf'] = _lbf;
    return map;
  }
}

/// kN : 22819
/// lbf : 5130000

class ThrustSeaLevel {
  ThrustSeaLevel({
    num? kN,
    num? lbf,
  }) {
    _kN = kN;
    _lbf = lbf;
  }

  ThrustSeaLevel.fromJson(dynamic json) {
    _kN = json['kN'];
    _lbf = json['lbf'];
  }

  num? _kN;
  num? _lbf;

  ThrustSeaLevel copyWith({
    num? kN,
    num? lbf,
  }) =>
      ThrustSeaLevel(
        kN: kN ?? _kN,
        lbf: lbf ?? _lbf,
      );

  num? get kN => _kN;

  num? get lbf => _lbf;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kN'] = _kN;
    map['lbf'] = _lbf;
    return map;
  }
}

/// kg : 1420788
/// lb : 3125735

class Mass {
  Mass({
    num? kg,
    num? lb,
  }) {
    _kg = kg;
    _lb = lb;
  }

  Mass.fromJson(dynamic json) {
    _kg = json['kg'];
    _lb = json['lb'];
  }

  num? _kg;
  num? _lb;

  Mass copyWith({
    num? kg,
    num? lb,
  }) =>
      Mass(
        kg: kg ?? _kg,
        lb: lb ?? _lb,
      );

  num? get kg => _kg;

  num? get lb => _lb;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kg'] = _kg;
    map['lb'] = _lb;
    return map;
  }
}

/// meters : 12.2
/// feet : 39.9
