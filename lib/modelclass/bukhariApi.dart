class sahih_bukhariApi {
  var status;
  var message;
  var hadiths;

  sahih_bukhariApi({this.status, this.message, this.hadiths});

  sahih_bukhariApi.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    hadiths =
    json['hadiths'] != null ? new Hadiths.fromJson(json['hadiths']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.hadiths != null) {
      data['hadiths'] = this.hadiths!.toJson();
    }
    return data;
  }
}

class Hadiths {
  var currentPage;
  var data;
  var firstPageUrl;
  var from;
  var lastPage;
  var lastPageUrl;
  var links;
  var nextPageUrl;
  var path;
  var perPage;
  var prevPageUrl;
  var to;
  var total;

  Hadiths(
      {this.currentPage,
        this.data,
        this.firstPageUrl,
        this.from,
        this.lastPage,
        this.lastPageUrl,
        this.links,
        this.nextPageUrl,
        this.path,
        this.perPage,
        this.prevPageUrl,
        this.to,
        this.total});

  Hadiths.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(new Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = this.firstPageUrl;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['last_page_url'] = this.lastPageUrl;
    if (this.links != null) {
      data['links'] = this.links!.map((v) => v.toJson()).toList();
    }
    data['next_page_url'] = this.nextPageUrl;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['prev_page_url'] = this.prevPageUrl;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}

class Data {
  var id;
  var hadithNumber;
  var englishNarrator;
  var hadithEnglish;
  var hadithUrdu;
  var urduNarrator;
  var hadithArabic;
  var chapterId;
  var bookSlug;
  var volume;
  var book;
  var chapter;

  Data(
      {this.id,
        this.hadithNumber,
        this.englishNarrator,
        this.hadithEnglish,
        this.hadithUrdu,
        this.urduNarrator,
        this.hadithArabic,
        this.chapterId,
        this.bookSlug,
        this.volume,
        this.book,
        this.chapter});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    hadithNumber = json['hadithNumber'];
    englishNarrator = json['englishNarrator'];
    hadithEnglish = json['hadithEnglish'];
    hadithUrdu = json['hadithUrdu'];
    urduNarrator = json['urduNarrator'];
    hadithArabic = json['hadithArabic'];
    chapterId = json['chapterId'];
    bookSlug = json['bookSlug'];
    volume = json['volume'];
    book = json['book'] != null ? new Book.fromJson(json['book']) : null;
    chapter =
    json['chapter'] != null ? new Chapter.fromJson(json['chapter']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['hadithNumber'] = this.hadithNumber;
    data['englishNarrator'] = this.englishNarrator;
    data['hadithEnglish'] = this.hadithEnglish;
    data['hadithUrdu'] = this.hadithUrdu;
    data['urduNarrator'] = this.urduNarrator;
    data['hadithArabic'] = this.hadithArabic;
    data['chapterId'] = this.chapterId;
    data['bookSlug'] = this.bookSlug;
    data['volume'] = this.volume;
    if (this.book != null) {
      data['book'] = this.book!.toJson();
    }
    if (this.chapter != null) {
      data['chapter'] = this.chapter!.toJson();
    }
    return data;
  }
}

class Book {
  var id;
  var bookName;
  var writerName;
  var aboutWriter;
  var writerDeath;
  var bookSlug;

  Book(
      {this.id,
        this.bookName,
        this.writerName,
        this.aboutWriter,
        this.writerDeath,
        this.bookSlug});

  Book.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookName = json['bookName'];
    writerName = json['writerName'];
    aboutWriter = json['aboutWriter'];
    writerDeath = json['writerDeath'];
    bookSlug = json['bookSlug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['bookName'] = this.bookName;
    data['writerName'] = this.writerName;
    data['aboutWriter'] = this.aboutWriter;
    data['writerDeath'] = this.writerDeath;
    data['bookSlug'] = this.bookSlug;
    return data;
  }
}

class Chapter {
  var id;
  var chapterNumber;
  var chapterEnglish;
  var chapterUrdu;
  var chapterArabic;
  var bookSlug;

  Chapter(
      {this.id,
        this.chapterNumber,
        this.chapterEnglish,
        this.chapterUrdu,
        this.chapterArabic,
        this.bookSlug});

  Chapter.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    chapterNumber = json['chapterNumber'];
    chapterEnglish = json['chapterEnglish'];
    chapterUrdu = json['chapterUrdu'];
    chapterArabic = json['chapterArabic'];
    bookSlug = json['bookSlug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['chapterNumber'] = this.chapterNumber;
    data['chapterEnglish'] = this.chapterEnglish;
    data['chapterUrdu'] = this.chapterUrdu;
    data['chapterArabic'] = this.chapterArabic;
    data['bookSlug'] = this.bookSlug;
    return data;
  }
}

class Links {
  var url;
  var label;
  var active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['label'] = this.label;
    data['active'] = this.active;
    return data;
  }
}
