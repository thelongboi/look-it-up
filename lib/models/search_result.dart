// To parse this JSON data, do
//
//     final searchResult = searchResultFromJson(jsonString);

import 'dart:convert';

List<SearchResult> searchResultFromJson(String str) => List<SearchResult>.from(
    json.decode(str).map((x) => SearchResult.fromJson(x)));

String searchResultToJson(List<SearchResult> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SearchResult {
  Meta meta;
  int? hom;
  Hwi hwi;
  Fl fl;
  List<In>? ins;
  List<String>? lbs;
  List<SearchResultDef>? def;
  List<Dro>? dros;
  String? date;
  List<String> shortdef;
  List<List<dynamic>>? et;
  List<Vr>? vrs;

  SearchResult({
    required this.meta,
    this.hom,
    required this.hwi,
    required this.fl,
    this.ins,
    this.lbs,
    this.def,
    this.dros,
    this.date,
    required this.shortdef,
    this.et,
    this.vrs,
  });

  factory SearchResult.fromJson(Map<String, dynamic> json) => SearchResult(
        meta: Meta.fromJson(json["meta"]),
        hom: json["hom"],
        hwi: Hwi.fromJson(json["hwi"]),
        fl: flValues.map[json["fl"]]!,
        ins: json["ins"] == null
            ? []
            : List<In>.from(json["ins"]!.map((x) => In.fromJson(x))),
        lbs: json["lbs"] == null
            ? []
            : List<String>.from(json["lbs"]!.map((x) => x)),
        def: json["def"] == null
            ? []
            : List<SearchResultDef>.from(
                json["def"]!.map((x) => SearchResultDef.fromJson(x))),
        dros: json["dros"] == null
            ? []
            : List<Dro>.from(json["dros"]!.map((x) => Dro.fromJson(x))),
        date: json["date"],
        shortdef: List<String>.from(json["shortdef"].map((x) => x)),
        et: json["et"] == null
            ? []
            : List<List<dynamic>>.from(
                json["et"]!.map((x) => List<dynamic>.from(x.map((x) => x)))),
        vrs: json["vrs"] == null
            ? []
            : List<Vr>.from(json["vrs"]!.map((x) => Vr.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "hom": hom,
        "hwi": hwi.toJson(),
        "fl": flValues.reverse[fl],
        "ins":
            ins == null ? [] : List<dynamic>.from(ins!.map((x) => x.toJson())),
        "lbs": lbs == null ? [] : List<dynamic>.from(lbs!.map((x) => x)),
        "def":
            def == null ? [] : List<dynamic>.from(def!.map((x) => x.toJson())),
        "dros": dros == null
            ? []
            : List<dynamic>.from(dros!.map((x) => x.toJson())),
        "date": date,
        "shortdef": List<dynamic>.from(shortdef.map((x) => x)),
        "et": et == null
            ? []
            : List<dynamic>.from(
                et!.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "vrs":
            vrs == null ? [] : List<dynamic>.from(vrs!.map((x) => x.toJson())),
      };
}

class SearchResultDef {
  List<List<List<dynamic>>> sseq;
  String? vd;

  SearchResultDef({
    required this.sseq,
    this.vd,
  });

  factory SearchResultDef.fromJson(Map<String, dynamic> json) =>
      SearchResultDef(
        sseq: List<List<List<dynamic>>>.from(json["sseq"].map((x) =>
            List<List<dynamic>>.from(
                x.map((x) => List<dynamic>.from(x.map((x) => x)))))),
        vd: json["vd"],
      );

  Map<String, dynamic> toJson() => {
        "sseq": List<dynamic>.from(sseq.map((x) => List<dynamic>.from(
            x.map((x) => List<dynamic>.from(x.map((x) => x)))))),
        "vd": vd,
      };
}

class PurpleSseq {
  String? sn;
  List<List<dynamic>> dt;
  List<List<String>>? et;
  Sdsense? sdsense;

  PurpleSseq({
    this.sn,
    required this.dt,
    this.et,
    this.sdsense,
  });

  factory PurpleSseq.fromJson(Map<String, dynamic> json) => PurpleSseq(
        sn: json["sn"],
        dt: List<List<dynamic>>.from(
            json["dt"].map((x) => List<dynamic>.from(x.map((x) => x)))),
        et: json["et"] == null
            ? []
            : List<List<String>>.from(
                json["et"]!.map((x) => List<String>.from(x.map((x) => x)))),
        sdsense:
            json["sdsense"] == null ? null : Sdsense.fromJson(json["sdsense"]),
      );

  Map<String, dynamic> toJson() => {
        "sn": sn,
        "dt": List<dynamic>.from(
            dt.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "et": et == null
            ? []
            : List<dynamic>.from(
                et!.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "sdsense": sdsense?.toJson(),
      };
}

class PurpleDt {
  String intro;
  List<Cat> cats;

  PurpleDt({
    required this.intro,
    required this.cats,
  });

  factory PurpleDt.fromJson(Map<String, dynamic> json) => PurpleDt(
        intro: json["intro"],
        cats: List<Cat>.from(json["cats"].map((x) => Cat.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "intro": intro,
        "cats": List<dynamic>.from(cats.map((x) => x.toJson())),
      };
}

class Cat {
  String cat;

  Cat({
    required this.cat,
  });

  factory Cat.fromJson(Map<String, dynamic> json) => Cat(
        cat: json["cat"],
      );

  Map<String, dynamic> toJson() => {
        "cat": cat,
      };
}

class Sdsense {
  String sd;
  List<List<String>> dt;

  Sdsense({
    required this.sd,
    required this.dt,
  });

  factory Sdsense.fromJson(Map<String, dynamic> json) => Sdsense(
        sd: json["sd"],
        dt: List<List<String>>.from(
            json["dt"].map((x) => List<String>.from(x.map((x) => x)))),
      );

  Map<String, dynamic> toJson() => {
        "sd": sd,
        "dt": List<dynamic>.from(
            dt.map((x) => List<dynamic>.from(x.map((x) => x)))),
      };
}

enum SseqEnum { SENSE }

final sseqEnumValues = EnumValues({"sense": SseqEnum.SENSE});

class Dro {
  String drp;
  List<DroDef> def;

  Dro({
    required this.drp,
    required this.def,
  });

  factory Dro.fromJson(Map<String, dynamic> json) => Dro(
        drp: json["drp"],
        def: List<DroDef>.from(json["def"].map((x) => DroDef.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "drp": drp,
        "def": List<dynamic>.from(def.map((x) => x.toJson())),
      };
}

class DroDef {
  List<List<List<dynamic>>> sseq;
  List<String>? sls;

  DroDef({
    required this.sseq,
    this.sls,
  });

  factory DroDef.fromJson(Map<String, dynamic> json) => DroDef(
        sseq: List<List<List<dynamic>>>.from(json["sseq"].map((x) =>
            List<List<dynamic>>.from(
                x.map((x) => List<dynamic>.from(x.map((x) => x)))))),
        sls: json["sls"] == null
            ? []
            : List<String>.from(json["sls"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "sseq": List<dynamic>.from(sseq.map((x) => List<dynamic>.from(
            x.map((x) => List<dynamic>.from(x.map((x) => x)))))),
        "sls": sls == null ? [] : List<dynamic>.from(sls!.map((x) => x)),
      };
}

class FluffySseq {
  List<List<String>>? et;
  List<List<dynamic>> dt;

  FluffySseq({
    this.et,
    required this.dt,
  });

  factory FluffySseq.fromJson(Map<String, dynamic> json) => FluffySseq(
        et: json["et"] == null
            ? []
            : List<List<String>>.from(
                json["et"]!.map((x) => List<String>.from(x.map((x) => x)))),
        dt: List<List<dynamic>>.from(
            json["dt"].map((x) => List<dynamic>.from(x.map((x) => x)))),
      );

  Map<String, dynamic> toJson() => {
        "et": et == null
            ? []
            : List<dynamic>.from(
                et!.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "dt": List<dynamic>.from(
            dt.map((x) => List<dynamic>.from(x.map((x) => x)))),
      };
}

class FluffyDt {
  String t;
  Aq aq;

  FluffyDt({
    required this.t,
    required this.aq,
  });

  factory FluffyDt.fromJson(Map<String, dynamic> json) => FluffyDt(
        t: json["t"],
        aq: Aq.fromJson(json["aq"]),
      );

  Map<String, dynamic> toJson() => {
        "t": t,
        "aq": aq.toJson(),
      };
}

class Aq {
  String auth;

  Aq({
    required this.auth,
  });

  factory Aq.fromJson(Map<String, dynamic> json) => Aq(
        auth: json["auth"],
      );

  Map<String, dynamic> toJson() => {
        "auth": auth,
      };
}

enum Fl { ABBREVIATION, NOUN, VERB }

final flValues = EnumValues(
    {"abbreviation": Fl.ABBREVIATION, "noun": Fl.NOUN, "verb": Fl.VERB});

class Hwi {
  String hw;
  List<Pr>? prs;

  Hwi({
    required this.hw,
    this.prs,
  });

  factory Hwi.fromJson(Map<String, dynamic> json) => Hwi(
        hw: json["hw"],
        prs: json["prs"] == null
            ? []
            : List<Pr>.from(json["prs"]!.map((x) => Pr.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "hw": hw,
        "prs":
            prs == null ? [] : List<dynamic>.from(prs!.map((x) => x.toJson())),
      };
}

class Pr {
  String mw;
  Sound sound;

  Pr({
    required this.mw,
    required this.sound,
  });

  factory Pr.fromJson(Map<String, dynamic> json) => Pr(
        mw: json["mw"],
        sound: Sound.fromJson(json["sound"]),
      );

  Map<String, dynamic> toJson() => {
        "mw": mw,
        "sound": sound.toJson(),
      };
}

class Sound {
  String audio;
  String ref;
  String stat;

  Sound({
    required this.audio,
    required this.ref,
    required this.stat,
  });

  factory Sound.fromJson(Map<String, dynamic> json) => Sound(
        audio: json["audio"],
        ref: json["ref"],
        stat: json["stat"],
      );

  Map<String, dynamic> toJson() => {
        "audio": audio,
        "ref": ref,
        "stat": stat,
      };
}

class In {
  String? il;
  String inIf;
  List<Pr>? prs;

  In({
    this.il,
    required this.inIf,
    this.prs,
  });

  factory In.fromJson(Map<String, dynamic> json) => In(
        il: json["il"],
        inIf: json["if"],
        prs: json["prs"] == null
            ? []
            : List<Pr>.from(json["prs"]!.map((x) => Pr.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "il": il,
        "if": inIf,
        "prs":
            prs == null ? [] : List<dynamic>.from(prs!.map((x) => x.toJson())),
      };
}

class Meta {
  String id;
  String uuid;
  String sort;
  Src src;
  Section section;
  List<String> stems;
  bool offensive;

  Meta({
    required this.id,
    required this.uuid,
    required this.sort,
    required this.src,
    required this.section,
    required this.stems,
    required this.offensive,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        id: json["id"],
        uuid: json["uuid"],
        sort: json["sort"],
        src: srcValues.map[json["src"]]!,
        section: sectionValues.map[json["section"]]!,
        stems: List<String>.from(json["stems"].map((x) => x)),
        offensive: json["offensive"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uuid": uuid,
        "sort": sort,
        "src": srcValues.reverse[src],
        "section": sectionValues.reverse[section],
        "stems": List<dynamic>.from(stems.map((x) => x)),
        "offensive": offensive,
      };
}

enum Section { ALPHA }

final sectionValues = EnumValues({"alpha": Section.ALPHA});

enum Src { COLLEGIATE }

final srcValues = EnumValues({"collegiate": Src.COLLEGIATE});

class Vr {
  String vl;
  String va;

  Vr({
    required this.vl,
    required this.va,
  });

  factory Vr.fromJson(Map<String, dynamic> json) => Vr(
        vl: json["vl"],
        va: json["va"],
      );

  Map<String, dynamic> toJson() => {
        "vl": vl,
        "va": va,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
