class HomeListModel {
  int? total;
  List<Hits>? hits;

  HomeListModel({this.total, this.hits});

  HomeListModel.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    if (json['hits'] != null) {
      hits = <Hits>[];
      json['hits'].forEach((v) {
        hits!.add(Hits.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total'] = total;
    if (hits != null) {
      data['hits'] = hits!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Hits {
  int? id;
  String? name;

  String? previewImage;
  Creator? creator;

  Hits({
    this.id,
    this.name,
    this.previewImage,
    this.creator,
  });

  Hits.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];

    previewImage = json['preview_image'];
    creator =
        json['creator'] != null ? Creator.fromJson(json['creator']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['preview_image'] = previewImage;
    data['creator'] = creator!.toJson();

    return data;
  }
}

class Creator {
  int? id;
  String? name;
  String? firstName;
  String? lastName;
  String? url;
  String? publicUrl;
  String? thumbnail;
  int? countOfFollowers;
  int? countOfFollowing;
  int? countOfDesigns;
  bool? acceptsTips;
  bool? isFollowing;
  String? location;
  String? cover;

  Creator(
      {this.id,
      this.name,
      this.firstName,
      this.lastName,
      this.url,
      this.publicUrl,
      this.thumbnail,
      this.countOfFollowers,
      this.countOfFollowing,
      this.countOfDesigns,
      this.acceptsTips,
      this.isFollowing,
      this.location,
      this.cover});

  Creator.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    url = json['url'];
    publicUrl = json['public_url'];
    thumbnail = json['thumbnail'];
    countOfFollowers = json['count_of_followers'];
    countOfFollowing = json['count_of_following'];
    countOfDesigns = json['count_of_designs'];
    acceptsTips = json['accepts_tips'];
    isFollowing = json['is_following'];
    location = json['location'];
    cover = json['cover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['url'] = url;
    data['public_url'] = publicUrl;
    data['thumbnail'] = thumbnail;
    data['count_of_followers'] = countOfFollowers;
    data['count_of_following'] = countOfFollowing;
    data['count_of_designs'] = countOfDesigns;
    data['accepts_tips'] = acceptsTips;
    data['is_following'] = isFollowing;
    data['location'] = location;
    data['cover'] = cover;
    return data;
  }
}

class Tags {
  String? name;
  String? tag;
  String? url;
  int? count;
  String? thingsUrl;
  String? absoluteUrl;

  Tags(
      {this.name,
      this.tag,
      this.url,
      this.count,
      this.thingsUrl,
      this.absoluteUrl});

  Tags.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    tag = json['tag'];
    url = json['url'];
    count = json['count'];
    thingsUrl = json['things_url'];
    absoluteUrl = json['absolute_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['tag'] = tag;
    data['url'] = url;
    data['count'] = count;
    data['things_url'] = thingsUrl;
    data['absolute_url'] = absoluteUrl;
    return data;
  }
}
