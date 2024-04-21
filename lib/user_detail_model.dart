class UserDetails {
  String? respcode;
  String? respmsg;
  RespString? respString;

  UserDetails({this.respcode, this.respmsg, this.respString});

  UserDetails.fromJson(Map<String, dynamic> json) {
    respcode = json['respcode'];
    respmsg = json['respmsg'];
    respString = json['respString'] != null ? new RespString.fromJson(json['respString']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['respcode'] = this.respcode;
    data['respmsg'] = this.respmsg;
    if (this.respString != null) {
      data['respString'] = this.respString!.toJson();
    }
    return data;
  }
}

class RespString {
  int? merchantId;
  String? merchantName;
  String? companyName;
  String? password;
  String? email;
  String? mobileNo;
  String? branchId;
  String? gstNo;
  String? companyAddress;
  String? companyEmail;
  String? panNo;
  String? ipAddress;
  String? deviceid;
  String? gender;
  String? dob;
  double? balance;

  RespString({
    this.merchantId,
    this.merchantName,
    this.companyName,
    this.password,
    this.email,
    this.mobileNo,
    this.branchId,
    this.gstNo,
    this.companyAddress,
    this.companyEmail,
    this.panNo,
    this.ipAddress,
    this.deviceid,
    this.gender,
    this.dob,
    this.balance,
  });

  RespString.fromJson(Map<String, dynamic> json) {
    merchantId = json['merchant_id'];
    merchantName = json['merchant_name'];
    companyName = json['company_name'];
    password = json['password'];
    email = json['email'];
    mobileNo = json['mobile_no'];
    branchId = json['branch_id'];
    gstNo = json['gst_no'];
    companyAddress = json['company_address'];
    companyEmail = json['company_email'];
    panNo = json['pan_no'];
    ipAddress = json['ip_address'];
    deviceid = json['deviceid'];
    gender = json['gender'];
    dob = json['dob'];
    balance = json['balance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['merchant_id'] = this.merchantId;
    data['merchant_name'] = this.merchantName;
    data['company_name'] = this.companyName;
    data['password'] = this.password;
    data['email'] = this.email;
    data['mobile_no'] = this.mobileNo;
    data['branch_id'] = this.branchId;
    data['gst_no'] = this.gstNo;
    data['company_address'] = this.companyAddress;
    data['company_email'] = this.companyEmail;
    data['pan_no'] = this.panNo;
    data['ip_address'] = this.ipAddress;
    data['deviceid'] = this.deviceid;
    data['gender'] = this.gender;
    data['dob'] = this.dob;
    data['balance'] = this.balance;
    return data;
  }
}
