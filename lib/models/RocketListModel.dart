/// height : {"meters":22.25,"feet":73}
/// diameter : {"meters":1.68,"feet":5.5}
/// mass : {"kg":30146,"lb":66460}
/// first_stage : {"thrust_sea_level":{"kN":420,"lbf":94000},"thrust_vacuum":{"kN":480,"lbf":110000},"reusable":false,"engines":1,"fuel_amount_tons":44.3,"burn_time_sec":169}
/// second_stage : {"thrust":{"kN":31,"lbf":7000},"payloads":{"composite_fairing":{"height":{"meters":3.5,"feet":11.5},"diameter":{"meters":1.5,"feet":4.9}},"option_1":"composite fairing"},"reusable":false,"engines":1,"fuel_amount_tons":3.38,"burn_time_sec":378}
/// engines : {"isp":{"sea_level":267,"vacuum":304},"thrust_sea_level":{"kN":420,"lbf":94000},"thrust_vacuum":{"kN":480,"lbf":110000},"number":1,"type":"merlin","version":"1C","layout":"single","engine_loss_max":0,"propellant_1":"liquid oxygen","propellant_2":"RP-1 kerosene","thrust_to_weight":96}
/// landing_legs : {"number":0,"material":null}
/// payload_weights : [{"id":"leo","name":"Low Earth Orbit","kg":450,"lb":992}]
/// flickr_images : ["https://imgur.com/DaCfMsj.jpg","https://imgur.com/azYafd8.jpg"]
/// name : "Falcon 1"
/// type : "rocket"
/// active : false
/// stages : 2
/// boosters : 0
/// cost_per_launch : 6700000
/// success_rate_pct : 40
/// first_flight : "2006-03-24"
/// country : "Republic of the Marshall Islands"
/// company : "SpaceX"
/// wikipedia : "https://en.wikipedia.org/wiki/Falcon_1"
/// description : "The Falcon 1 was an expendable launch system privately developed and manufactured by SpaceX during 2006-2009. On 28 September 2008, Falcon 1 became the first privately-developed liquid-fuel launch vehicle to go into orbit around the Earth."
/// id : "5e9d0d95eda69955f709d1eb"

class RocketListModel {
  RocketListModel({
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

  RocketListModel.fromJson(dynamic json) {
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

  RocketListModel copyWith({
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
      RocketListModel(
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
/// kg : 450
/// lb : 992

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

/// number : 0
/// material : null

class LandingLegs {
  LandingLegs({
    num? number,
    dynamic material,
  }) {
    _number = number;
    _material = material;
  }

  LandingLegs.fromJson(dynamic json) {
    _number = json['number'];
    _material = json['material'];
  }

  num? _number;
  dynamic _material;

  LandingLegs copyWith({
    num? number,
    dynamic material,
  }) =>
      LandingLegs(
        number: number ?? _number,
        material: material ?? _material,
      );

  num? get number => _number;

  dynamic get material => _material;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['number'] = _number;
    map['material'] = _material;
    return map;
  }
}

/// isp : {"sea_level":267,"vacuum":304}
/// thrust_sea_level : {"kN":420,"lbf":94000}
/// thrust_vacuum : {"kN":480,"lbf":110000}
/// number : 1
/// type : "merlin"
/// version : "1C"
/// layout : "single"
/// engine_loss_max : 0
/// propellant_1 : "liquid oxygen"
/// propellant_2 : "RP-1 kerosene"
/// thrust_to_weight : 96

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

/// kN : 480
/// lbf : 110000

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

/// kN : 420
/// lbf : 94000

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

/// sea_level : 267
/// vacuum : 304

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

/// thrust : {"kN":31,"lbf":7000}
/// payloads : {"composite_fairing":{"height":{"meters":3.5,"feet":11.5},"diameter":{"meters":1.5,"feet":4.9}},"option_1":"composite fairing"}
/// reusable : false
/// engines : 1
/// fuel_amount_tons : 3.38
/// burn_time_sec : 378

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

/// composite_fairing : {"height":{"meters":3.5,"feet":11.5},"diameter":{"meters":1.5,"feet":4.9}}
/// option_1 : "composite fairing"

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

/// height : {"meters":3.5,"feet":11.5}
/// diameter : {"meters":1.5,"feet":4.9}

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

/// meters : 1.5
/// feet : 4.9

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

/// meters : 3.5
/// feet : 11.5

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

/// kN : 31
/// lbf : 7000

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

/// thrust_sea_level : {"kN":420,"lbf":94000}
/// thrust_vacuum : {"kN":480,"lbf":110000}
/// reusable : false
/// engines : 1
/// fuel_amount_tons : 44.3
/// burn_time_sec : 169

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

/// kg : 30146
/// lb : 66460

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
