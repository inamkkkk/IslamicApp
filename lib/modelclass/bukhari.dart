class bukhari {
  var name;
  List<Books>? books;

  bukhari({this.name, this.books});

  bukhari.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['books'] != null) {
      books = <Books>[];
      json['books'].forEach((v) {
        books!.add(new Books.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.books != null) {
      data['books'] = this.books!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Books {
  var name;
  List<Hadiths>? hadiths;

  Books({this.name, this.hadiths});

  Books.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['hadiths'] != null) {
      hadiths = <Hadiths>[];
      json['hadiths'].forEach((v) {
        hadiths!.add(new Hadiths.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.hadiths != null) {
      data['hadiths'] = this.hadiths!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Hadiths {
  var info;
  var by;
  var text;

  Hadiths({this.info, this.by, this.text});

  Hadiths.fromJson(Map<String, dynamic> json) {
    info = json['info'];
    by = json['by'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['info'] = this.info;
    data['by'] = this.by;
    data['text'] = this.text;
    return data;
  }
}
