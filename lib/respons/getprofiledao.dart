class GetProfile {
  Data? data;
  String? message;
  bool? status;

  GetProfile({this.data, this.message, this.status});

  GetProfile.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}

class Data {
  String? id;
  String? name;
  String? email;
  String? password;
  String? tanggallahir;
  String? handphone;
  String? kelamin;

  Data(
      {this.id,
      this.name,
      this.email,
      this.password,
      this.tanggallahir,
      this.handphone,
      this.kelamin});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    tanggallahir = json['tanggallahir'];
    handphone = json['handphone'];
    kelamin = json['kelamin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['tanggallahir'] = this.tanggallahir;
    data['handphone'] = this.handphone;
    data['kelamin'] = this.kelamin;
    return data;
  }
}
