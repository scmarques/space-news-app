class ArticleModel {
  late final int id;
  late final String title;
  late final String url;
  late final String imageUrl;
  late final String newsSite;
  late final String summary;
  late final String publishedAt;
  late final String updatedAt;
  late final bool featured;

  ArticleModel({
    required this.id,
    required this.title,
    required this.url,
    required this.imageUrl,
    required this.newsSite,
    required this.summary,
    required this.publishedAt,
    required this.updatedAt,
    required this.featured,
  });

  ArticleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    url = json['url'];
    imageUrl = json['imageUrl'];
    newsSite = json['newsSite'];
    summary = json['summary'];
    publishedAt = json['publishedAt'];
    updatedAt = json['updatedAt'];
    featured = json['featured'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['url'] = url;
    data['imageUrl'] = imageUrl;
    data['newsSite'] = newsSite;
    data['summary'] = summary;
    data['publishedAt'] = publishedAt;
    data['updatedAt'] = updatedAt;
    data['featured'] = featured;
    return data;
  }
}
