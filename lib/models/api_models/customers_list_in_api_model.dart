/// data : [{"sub":0,"created":"2022-03-31T03:31:28.167Z","last_updated":"2022-03-31T03:31:28.167Z","address_line_one":"string","address_line_two":"string","address_post_office":"string","address_zip_code":"string","address_sub_district":"string","address_district":"string","address_division":"string","primary_contact_number":"string","secondary_contact_number":"string","name":"string","slug":"string","description":"string","remarks":"string"}]

class CustomersListInApiModel {
  CustomersListInApiModel({
      List<CustomersListData>? data,}){
    _data = data;
}

  CustomersListInApiModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(CustomersListData.fromJson(v));
      });
    }
  }
  List<CustomersListData>? _data;
CustomersListInApiModel copyWith({  List<CustomersListData>? data,
}) => CustomersListInApiModel(  data: data ?? _data,
);
  List<CustomersListData>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// sub : 0
/// created : "2022-03-31T03:31:28.167Z"
/// last_updated : "2022-03-31T03:31:28.167Z"
/// address_line_one : "string"
/// address_line_two : "string"
/// address_post_office : "string"
/// address_zip_code : "string"
/// address_sub_district : "string"
/// address_district : "string"
/// address_division : "string"
/// primary_contact_number : "string"
/// secondary_contact_number : "string"
/// name : "string"
/// slug : "string"
/// description : "string"
/// remarks : "string"

class CustomersListData {
  CustomersListData({
      int? sub, 
      String? created, 
      String? lastUpdated, 
      String? addressLineOne, 
      String? addressLineTwo, 
      String? addressPostOffice, 
      String? addressZipCode, 
      String? addressSubDistrict, 
      String? addressDistrict, 
      String? addressDivision, 
      String? primaryContactNumber, 
      String? secondaryContactNumber, 
      String? name, 
      String? slug, 
      String? description, 
      String? remarks,}){
    _sub = sub;
    _created = created;
    _lastUpdated = lastUpdated;
    _addressLineOne = addressLineOne;
    _addressLineTwo = addressLineTwo;
    _addressPostOffice = addressPostOffice;
    _addressZipCode = addressZipCode;
    _addressSubDistrict = addressSubDistrict;
    _addressDistrict = addressDistrict;
    _addressDivision = addressDivision;
    _primaryContactNumber = primaryContactNumber;
    _secondaryContactNumber = secondaryContactNumber;
    _name = name;
    _slug = slug;
    _description = description;
    _remarks = remarks;
}

  CustomersListData.fromJson(dynamic json) {
    _sub = json['sub'];
    _created = json['created'];
    _lastUpdated = json['last_updated'];
    _addressLineOne = json['address_line_one'];
    _addressLineTwo = json['address_line_two'];
    _addressPostOffice = json['address_post_office'];
    _addressZipCode = json['address_zip_code'];
    _addressSubDistrict = json['address_sub_district'];
    _addressDistrict = json['address_district'];
    _addressDivision = json['address_division'];
    _primaryContactNumber = json['primary_contact_number'];
    _secondaryContactNumber = json['secondary_contact_number'];
    _name = json['name'];
    _slug = json['slug'];
    _description = json['description'];
    _remarks = json['remarks'];
  }
  int? _sub;
  String? _created;
  String? _lastUpdated;
  String? _addressLineOne;
  String? _addressLineTwo;
  String? _addressPostOffice;
  String? _addressZipCode;
  String? _addressSubDistrict;
  String? _addressDistrict;
  String? _addressDivision;
  String? _primaryContactNumber;
  String? _secondaryContactNumber;
  String? _name;
  String? _slug;
  String? _description;
  String? _remarks;
CustomersListData copyWith({  int? sub,
  String? created,
  String? lastUpdated,
  String? addressLineOne,
  String? addressLineTwo,
  String? addressPostOffice,
  String? addressZipCode,
  String? addressSubDistrict,
  String? addressDistrict,
  String? addressDivision,
  String? primaryContactNumber,
  String? secondaryContactNumber,
  String? name,
  String? slug,
  String? description,
  String? remarks,
}) => CustomersListData(  sub: sub ?? _sub,
  created: created ?? _created,
  lastUpdated: lastUpdated ?? _lastUpdated,
  addressLineOne: addressLineOne ?? _addressLineOne,
  addressLineTwo: addressLineTwo ?? _addressLineTwo,
  addressPostOffice: addressPostOffice ?? _addressPostOffice,
  addressZipCode: addressZipCode ?? _addressZipCode,
  addressSubDistrict: addressSubDistrict ?? _addressSubDistrict,
  addressDistrict: addressDistrict ?? _addressDistrict,
  addressDivision: addressDivision ?? _addressDivision,
  primaryContactNumber: primaryContactNumber ?? _primaryContactNumber,
  secondaryContactNumber: secondaryContactNumber ?? _secondaryContactNumber,
  name: name ?? _name,
  slug: slug ?? _slug,
  description: description ?? _description,
  remarks: remarks ?? _remarks,
);
  int? get sub => _sub;
  String? get created => _created;
  String? get lastUpdated => _lastUpdated;
  String? get addressLineOne => _addressLineOne;
  String? get addressLineTwo => _addressLineTwo;
  String? get addressPostOffice => _addressPostOffice;
  String? get addressZipCode => _addressZipCode;
  String? get addressSubDistrict => _addressSubDistrict;
  String? get addressDistrict => _addressDistrict;
  String? get addressDivision => _addressDivision;
  String? get primaryContactNumber => _primaryContactNumber;
  String? get secondaryContactNumber => _secondaryContactNumber;
  String? get name => _name;
  String? get slug => _slug;
  String? get description => _description;
  String? get remarks => _remarks;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sub'] = _sub;
    map['created'] = _created;
    map['last_updated'] = _lastUpdated;
    map['address_line_one'] = _addressLineOne;
    map['address_line_two'] = _addressLineTwo;
    map['address_post_office'] = _addressPostOffice;
    map['address_zip_code'] = _addressZipCode;
    map['address_sub_district'] = _addressSubDistrict;
    map['address_district'] = _addressDistrict;
    map['address_division'] = _addressDivision;
    map['primary_contact_number'] = _primaryContactNumber;
    map['secondary_contact_number'] = _secondaryContactNumber;
    map['name'] = _name;
    map['slug'] = _slug;
    map['description'] = _description;
    map['remarks'] = _remarks;
    return map;
  }

}