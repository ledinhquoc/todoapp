class Todo {
  int? _id ;
  String? _content ;

  Todo(int id, String content) {
    this._id = id;
    this._content = content;
  }

  String? get content => _content;

  set content(String? value) {
    _content = value;
  }

  int? get id => _id;

  set id(int? value) {
    _id = value;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': _id,
      'content': _content,
    };
  }

}
