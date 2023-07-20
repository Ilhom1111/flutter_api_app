// To parse this JSON data, do
//
//     final image = imageFromJson(jsonString);

import 'dart:convert';

List<Image> imageFromJson(String str) => List<Image>.from(json.decode(str).map((x) => Image.fromJson(x)));

String imageToJson(List<Image> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Image {
    List<Breed> breeds;
    List<Category>? categories;
    String id;
    String url;
    int width;
    int height;

    Image({
        required this.breeds,
        this.categories,
        required this.id,
        required this.url,
        required this.width,
        required this.height,
    });

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        breeds: List<Breed>.from(json["breeds"].map((x) => Breed.fromJson(x))),
        categories: json["categories"] == null ? [] : List<Category>.from(json["categories"]!.map((x) => Category.fromJson(x))),
        id: json["id"],
        url: json["url"],
        width: json["width"],
        height: json["height"],
    );

    Map<String, dynamic> toJson() => {
        "breeds": List<dynamic>.from(breeds.map((x) => x.toJson())),
        "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x.toJson())),
        "id": id,
        "url": url,
        "width": width,
        "height": height,
    };
}

class Breed {
    Weight weight;
    String id;
    String name;
    String vcahospitalsUrl;
    String temperament;
    String origin;
    String countryCodes;
    String countryCode;
    String description;
    String lifeSpan;
    int indoor;
    String altNames;
    int adaptability;
    int affectionLevel;
    int childFriendly;
    int dogFriendly;
    int energyLevel;
    int grooming;
    int healthIssues;
    int intelligence;
    int sheddingLevel;
    int socialNeeds;
    int strangerFriendly;
    int vocalisation;
    int experimental;
    int hairless;
    int natural;
    int rare;
    int rex;
    int suppressedTail;
    int shortLegs;
    String wikipediaUrl;
    int hypoallergenic;
    String referenceImageId;
    String? cfaUrl;
    String? vetstreetUrl;
    int? lap;
    int? catFriendly;

    Breed({
        required this.weight,
        required this.id,
        required this.name,
        required this.vcahospitalsUrl,
        required this.temperament,
        required this.origin,
        required this.countryCodes,
        required this.countryCode,
        required this.description,
        required this.lifeSpan,
        required this.indoor,
        required this.altNames,
        required this.adaptability,
        required this.affectionLevel,
        required this.childFriendly,
        required this.dogFriendly,
        required this.energyLevel,
        required this.grooming,
        required this.healthIssues,
        required this.intelligence,
        required this.sheddingLevel,
        required this.socialNeeds,
        required this.strangerFriendly,
        required this.vocalisation,
        required this.experimental,
        required this.hairless,
        required this.natural,
        required this.rare,
        required this.rex,
        required this.suppressedTail,
        required this.shortLegs,
        required this.wikipediaUrl,
        required this.hypoallergenic,
        required this.referenceImageId,
        this.cfaUrl,
        this.vetstreetUrl,
        this.lap,
        this.catFriendly,
    });

    factory Breed.fromJson(Map<String, dynamic> json) => Breed(
        weight: Weight.fromJson(json["weight"]),
        id: json["id"],
        name: json["name"],
        vcahospitalsUrl: json["vcahospitals_url"],
        temperament: json["temperament"],
        origin: json["origin"],
        countryCodes: json["country_codes"],
        countryCode: json["country_code"],
        description: json["description"],
        lifeSpan: json["life_span"],
        indoor: json["indoor"],
        altNames: json["alt_names"],
        adaptability: json["adaptability"],
        affectionLevel: json["affection_level"],
        childFriendly: json["child_friendly"],
        dogFriendly: json["dog_friendly"],
        energyLevel: json["energy_level"],
        grooming: json["grooming"],
        healthIssues: json["health_issues"],
        intelligence: json["intelligence"],
        sheddingLevel: json["shedding_level"],
        socialNeeds: json["social_needs"],
        strangerFriendly: json["stranger_friendly"],
        vocalisation: json["vocalisation"],
        experimental: json["experimental"],
        hairless: json["hairless"],
        natural: json["natural"],
        rare: json["rare"],
        rex: json["rex"],
        suppressedTail: json["suppressed_tail"],
        shortLegs: json["short_legs"],
        wikipediaUrl: json["wikipedia_url"],
        hypoallergenic: json["hypoallergenic"],
        referenceImageId: json["reference_image_id"],
        cfaUrl: json["cfa_url"],
        vetstreetUrl: json["vetstreet_url"],
        lap: json["lap"],
        catFriendly: json["cat_friendly"],
    );

    Map<String, dynamic> toJson() => {
        "weight": weight.toJson(),
        "id": id,
        "name": name,
        "vcahospitals_url": vcahospitalsUrl,
        "temperament": temperament,
        "origin": origin,
        "country_codes": countryCodes,
        "country_code": countryCode,
        "description": description,
        "life_span": lifeSpan,
        "indoor": indoor,
        "alt_names": altNames,
        "adaptability": adaptability,
        "affection_level": affectionLevel,
        "child_friendly": childFriendly,
        "dog_friendly": dogFriendly,
        "energy_level": energyLevel,
        "grooming": grooming,
        "health_issues": healthIssues,
        "intelligence": intelligence,
        "shedding_level": sheddingLevel,
        "social_needs": socialNeeds,
        "stranger_friendly": strangerFriendly,
        "vocalisation": vocalisation,
        "experimental": experimental,
        "hairless": hairless,
        "natural": natural,
        "rare": rare,
        "rex": rex,
        "suppressed_tail": suppressedTail,
        "short_legs": shortLegs,
        "wikipedia_url": wikipediaUrl,
        "hypoallergenic": hypoallergenic,
        "reference_image_id": referenceImageId,
        "cfa_url": cfaUrl,
        "vetstreet_url": vetstreetUrl,
        "lap": lap,
        "cat_friendly": catFriendly,
    };
}

class Weight {
    String imperial;
    String metric;

    Weight({
        required this.imperial,
        required this.metric,
    });

    factory Weight.fromJson(Map<String, dynamic> json) => Weight(
        imperial: json["imperial"],
        metric: json["metric"],
    );

    Map<String, dynamic> toJson() => {
        "imperial": imperial,
        "metric": metric,
    };
}

class Category {
    int id;
    String name;

    Category({
        required this.id,
        required this.name,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
