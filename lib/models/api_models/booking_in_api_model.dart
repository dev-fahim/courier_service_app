/// sub : 0
/// created : "2022-03-31T04:28:08.379Z"
/// last_updated : "2022-03-31T04:28:08.379Z"
/// code : "string"
/// description : "string"
/// remarks : "string"
/// ops_by : {"sub":0,"created":"2022-03-31T04:28:08.379Z","last_updated":"2022-03-31T04:28:08.379Z","username":"string","first_name":"string","last_name":"string"}
/// booking_branch : {"sub":0,"created":"2022-03-31T04:28:08.379Z","last_updated":"2022-03-31T04:28:08.379Z","address_line_one":"string","address_line_two":"string","address_post_office":"string","address_zip_code":"string","address_sub_district":"string","address_district":"string","address_division":"string","code":"string","primary_contact_number":"string","secondary_contact_number":"string","name":"string","slug":"string","description":"string","remarks":"string"}
/// sender : {"sub":0,"created":"2022-03-31T04:28:08.379Z","last_updated":"2022-03-31T04:28:08.379Z","address_line_one":"string","address_line_two":"string","address_post_office":"string","address_zip_code":"string","address_sub_district":"string","address_district":"string","address_division":"string","primary_contact_number":"string","secondary_contact_number":"string","customer":{"sub":0,"created":"2022-03-31T04:28:08.380Z","last_updated":"2022-03-31T04:28:08.380Z","address_line_one":"string","address_line_two":"string","address_post_office":"string","address_zip_code":"string","address_sub_district":"string","address_district":"string","address_division":"string","primary_contact_number":"string","secondary_contact_number":"string","name":"string","slug":"string","description":"string","remarks":"string"},"contact_name":"string"}
/// receiver : {"sub":0,"created":"2022-03-31T04:28:08.380Z","last_updated":"2022-03-31T04:28:08.380Z","address_line_one":"string","address_line_two":"string","address_post_office":"string","address_zip_code":"string","address_sub_district":"string","address_district":"string","address_division":"string","primary_contact_number":"string","secondary_contact_number":"string","contact_name":"string"}
/// reference : "string"
/// service_type : "string"
/// delivery : {"sub":0,"created":"2022-03-31T04:28:08.380Z","last_updated":"2022-03-31T04:28:08.380Z","address_line_one":"string","address_line_two":"string","address_post_office":"string","address_zip_code":"string","address_sub_district":"string","address_district":"string","address_division":"string","primary_contact_number":"string","secondary_contact_number":"string","contact_name":"string","destination_branch":{"sub":0,"created":"2022-03-31T04:28:08.380Z","last_updated":"2022-03-31T04:28:08.380Z","address_line_one":"string","address_line_two":"string","address_post_office":"string","address_zip_code":"string","address_sub_district":"string","address_district":"string","address_division":"string","code":"string","primary_contact_number":"string","secondary_contact_number":"string","name":"string","slug":"string","description":"string","remarks":"string"},"is_dangerous_goods":true,"delivery_instructions":"string","attached_insurance":"string","delivery_mode":"string"}
/// condition_amount : 0
/// service_charge : 0

class BookingInApiModel {
  BookingInApiModel({
      int? sub, 
      String? created, 
      String? lastUpdated, 
      String? code, 
      String? description, 
      String? remarks, 
      OpsBy? opsBy, 
      BookingBranch? bookingBranch, 
      Sender? sender, 
      Receiver? receiver, 
      String? reference, 
      String? serviceType, 
      Delivery? delivery, 
      int? conditionAmount, 
      int? serviceCharge,}){
    _sub = sub;
    _created = created;
    _lastUpdated = lastUpdated;
    _code = code;
    _description = description;
    _remarks = remarks;
    _opsBy = opsBy;
    _bookingBranch = bookingBranch;
    _sender = sender;
    _receiver = receiver;
    _reference = reference;
    _serviceType = serviceType;
    _delivery = delivery;
    _conditionAmount = conditionAmount;
    _serviceCharge = serviceCharge;
}

  BookingInApiModel.fromJson(dynamic json) {
    _sub = json['sub'];
    _created = json['created'];
    _lastUpdated = json['last_updated'];
    _code = json['code'];
    _description = json['description'];
    _remarks = json['remarks'];
    _opsBy = json['ops_by'] != null ? OpsBy.fromJson(json['ops_by']) : null;
    _bookingBranch = json['booking_branch'] != null ? BookingBranch.fromJson(json['booking_branch']) : null;
    _sender = json['sender'] != null ? Sender.fromJson(json['sender']) : null;
    _receiver = json['receiver'] != null ? Receiver.fromJson(json['receiver']) : null;
    _reference = json['reference'];
    _serviceType = json['service_type'];
    _delivery = json['delivery'] != null ? Delivery.fromJson(json['delivery']) : null;
    _conditionAmount = json['condition_amount'];
    _serviceCharge = json['service_charge'];
  }
  int? _sub;
  String? _created;
  String? _lastUpdated;
  String? _code;
  String? _description;
  String? _remarks;
  OpsBy? _opsBy;
  BookingBranch? _bookingBranch;
  Sender? _sender;
  Receiver? _receiver;
  String? _reference;
  String? _serviceType;
  Delivery? _delivery;
  int? _conditionAmount;
  int? _serviceCharge;
BookingInApiModel copyWith({  int? sub,
  String? created,
  String? lastUpdated,
  String? code,
  String? description,
  String? remarks,
  OpsBy? opsBy,
  BookingBranch? bookingBranch,
  Sender? sender,
  Receiver? receiver,
  String? reference,
  String? serviceType,
  Delivery? delivery,
  int? conditionAmount,
  int? serviceCharge,
}) => BookingInApiModel(  sub: sub ?? _sub,
  created: created ?? _created,
  lastUpdated: lastUpdated ?? _lastUpdated,
  code: code ?? _code,
  description: description ?? _description,
  remarks: remarks ?? _remarks,
  opsBy: opsBy ?? _opsBy,
  bookingBranch: bookingBranch ?? _bookingBranch,
  sender: sender ?? _sender,
  receiver: receiver ?? _receiver,
  reference: reference ?? _reference,
  serviceType: serviceType ?? _serviceType,
  delivery: delivery ?? _delivery,
  conditionAmount: conditionAmount ?? _conditionAmount,
  serviceCharge: serviceCharge ?? _serviceCharge,
);
  int? get sub => _sub;
  String? get created => _created;
  String? get lastUpdated => _lastUpdated;
  String? get code => _code;
  String? get description => _description;
  String? get remarks => _remarks;
  OpsBy? get opsBy => _opsBy;
  BookingBranch? get bookingBranch => _bookingBranch;
  Sender? get sender => _sender;
  Receiver? get receiver => _receiver;
  String? get reference => _reference;
  String? get serviceType => _serviceType;
  Delivery? get delivery => _delivery;
  int? get conditionAmount => _conditionAmount;
  int? get serviceCharge => _serviceCharge;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sub'] = _sub;
    map['created'] = _created;
    map['last_updated'] = _lastUpdated;
    map['code'] = _code;
    map['description'] = _description;
    map['remarks'] = _remarks;
    if (_opsBy != null) {
      map['ops_by'] = _opsBy?.toJson();
    }
    if (_bookingBranch != null) {
      map['booking_branch'] = _bookingBranch?.toJson();
    }
    if (_sender != null) {
      map['sender'] = _sender?.toJson();
    }
    if (_receiver != null) {
      map['receiver'] = _receiver?.toJson();
    }
    map['reference'] = _reference;
    map['service_type'] = _serviceType;
    if (_delivery != null) {
      map['delivery'] = _delivery?.toJson();
    }
    map['condition_amount'] = _conditionAmount;
    map['service_charge'] = _serviceCharge;
    return map;
  }

}

/// sub : 0
/// created : "2022-03-31T04:28:08.380Z"
/// last_updated : "2022-03-31T04:28:08.380Z"
/// address_line_one : "string"
/// address_line_two : "string"
/// address_post_office : "string"
/// address_zip_code : "string"
/// address_sub_district : "string"
/// address_district : "string"
/// address_division : "string"
/// primary_contact_number : "string"
/// secondary_contact_number : "string"
/// contact_name : "string"
/// destination_branch : {"sub":0,"created":"2022-03-31T04:28:08.380Z","last_updated":"2022-03-31T04:28:08.380Z","address_line_one":"string","address_line_two":"string","address_post_office":"string","address_zip_code":"string","address_sub_district":"string","address_district":"string","address_division":"string","code":"string","primary_contact_number":"string","secondary_contact_number":"string","name":"string","slug":"string","description":"string","remarks":"string"}
/// is_dangerous_goods : true
/// delivery_instructions : "string"
/// attached_insurance : "string"
/// delivery_mode : "string"

class Delivery {
  Delivery({
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
      String? contactName, 
      DestinationBranch? destinationBranch, 
      bool? isDangerousGoods, 
      String? deliveryInstructions, 
      String? attachedInsurance, 
      String? deliveryMode,}){
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
    _contactName = contactName;
    _destinationBranch = destinationBranch;
    _isDangerousGoods = isDangerousGoods;
    _deliveryInstructions = deliveryInstructions;
    _attachedInsurance = attachedInsurance;
    _deliveryMode = deliveryMode;
}

  Delivery.fromJson(dynamic json) {
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
    _contactName = json['contact_name'];
    _destinationBranch = json['destination_branch'] != null ? DestinationBranch.fromJson(json['destination_branch']) : null;
    _isDangerousGoods = json['is_dangerous_goods'];
    _deliveryInstructions = json['delivery_instructions'];
    _attachedInsurance = json['attached_insurance'];
    _deliveryMode = json['delivery_mode'];
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
  String? _contactName;
  DestinationBranch? _destinationBranch;
  bool? _isDangerousGoods;
  String? _deliveryInstructions;
  String? _attachedInsurance;
  String? _deliveryMode;
Delivery copyWith({  int? sub,
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
  String? contactName,
  DestinationBranch? destinationBranch,
  bool? isDangerousGoods,
  String? deliveryInstructions,
  String? attachedInsurance,
  String? deliveryMode,
}) => Delivery(  sub: sub ?? _sub,
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
  contactName: contactName ?? _contactName,
  destinationBranch: destinationBranch ?? _destinationBranch,
  isDangerousGoods: isDangerousGoods ?? _isDangerousGoods,
  deliveryInstructions: deliveryInstructions ?? _deliveryInstructions,
  attachedInsurance: attachedInsurance ?? _attachedInsurance,
  deliveryMode: deliveryMode ?? _deliveryMode,
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
  String? get contactName => _contactName;
  DestinationBranch? get destinationBranch => _destinationBranch;
  bool? get isDangerousGoods => _isDangerousGoods;
  String? get deliveryInstructions => _deliveryInstructions;
  String? get attachedInsurance => _attachedInsurance;
  String? get deliveryMode => _deliveryMode;

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
    map['contact_name'] = _contactName;
    if (_destinationBranch != null) {
      map['destination_branch'] = _destinationBranch?.toJson();
    }
    map['is_dangerous_goods'] = _isDangerousGoods;
    map['delivery_instructions'] = _deliveryInstructions;
    map['attached_insurance'] = _attachedInsurance;
    map['delivery_mode'] = _deliveryMode;
    return map;
  }

}

/// sub : 0
/// created : "2022-03-31T04:28:08.380Z"
/// last_updated : "2022-03-31T04:28:08.380Z"
/// address_line_one : "string"
/// address_line_two : "string"
/// address_post_office : "string"
/// address_zip_code : "string"
/// address_sub_district : "string"
/// address_district : "string"
/// address_division : "string"
/// code : "string"
/// primary_contact_number : "string"
/// secondary_contact_number : "string"
/// name : "string"
/// slug : "string"
/// description : "string"
/// remarks : "string"

class DestinationBranch {
  DestinationBranch({
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
      String? code, 
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
    _code = code;
    _primaryContactNumber = primaryContactNumber;
    _secondaryContactNumber = secondaryContactNumber;
    _name = name;
    _slug = slug;
    _description = description;
    _remarks = remarks;
}

  DestinationBranch.fromJson(dynamic json) {
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
    _code = json['code'];
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
  String? _code;
  String? _primaryContactNumber;
  String? _secondaryContactNumber;
  String? _name;
  String? _slug;
  String? _description;
  String? _remarks;
DestinationBranch copyWith({  int? sub,
  String? created,
  String? lastUpdated,
  String? addressLineOne,
  String? addressLineTwo,
  String? addressPostOffice,
  String? addressZipCode,
  String? addressSubDistrict,
  String? addressDistrict,
  String? addressDivision,
  String? code,
  String? primaryContactNumber,
  String? secondaryContactNumber,
  String? name,
  String? slug,
  String? description,
  String? remarks,
}) => DestinationBranch(  sub: sub ?? _sub,
  created: created ?? _created,
  lastUpdated: lastUpdated ?? _lastUpdated,
  addressLineOne: addressLineOne ?? _addressLineOne,
  addressLineTwo: addressLineTwo ?? _addressLineTwo,
  addressPostOffice: addressPostOffice ?? _addressPostOffice,
  addressZipCode: addressZipCode ?? _addressZipCode,
  addressSubDistrict: addressSubDistrict ?? _addressSubDistrict,
  addressDistrict: addressDistrict ?? _addressDistrict,
  addressDivision: addressDivision ?? _addressDivision,
  code: code ?? _code,
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
  String? get code => _code;
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
    map['code'] = _code;
    map['primary_contact_number'] = _primaryContactNumber;
    map['secondary_contact_number'] = _secondaryContactNumber;
    map['name'] = _name;
    map['slug'] = _slug;
    map['description'] = _description;
    map['remarks'] = _remarks;
    return map;
  }

}

/// sub : 0
/// created : "2022-03-31T04:28:08.380Z"
/// last_updated : "2022-03-31T04:28:08.380Z"
/// address_line_one : "string"
/// address_line_two : "string"
/// address_post_office : "string"
/// address_zip_code : "string"
/// address_sub_district : "string"
/// address_district : "string"
/// address_division : "string"
/// primary_contact_number : "string"
/// secondary_contact_number : "string"
/// contact_name : "string"

class Receiver {
  Receiver({
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
      String? contactName,}){
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
    _contactName = contactName;
}

  Receiver.fromJson(dynamic json) {
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
    _contactName = json['contact_name'];
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
  String? _contactName;
Receiver copyWith({  int? sub,
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
  String? contactName,
}) => Receiver(  sub: sub ?? _sub,
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
  contactName: contactName ?? _contactName,
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
  String? get contactName => _contactName;

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
    map['contact_name'] = _contactName;
    return map;
  }

}

/// sub : 0
/// created : "2022-03-31T04:28:08.379Z"
/// last_updated : "2022-03-31T04:28:08.379Z"
/// address_line_one : "string"
/// address_line_two : "string"
/// address_post_office : "string"
/// address_zip_code : "string"
/// address_sub_district : "string"
/// address_district : "string"
/// address_division : "string"
/// primary_contact_number : "string"
/// secondary_contact_number : "string"
/// customer : {"sub":0,"created":"2022-03-31T04:28:08.380Z","last_updated":"2022-03-31T04:28:08.380Z","address_line_one":"string","address_line_two":"string","address_post_office":"string","address_zip_code":"string","address_sub_district":"string","address_district":"string","address_division":"string","primary_contact_number":"string","secondary_contact_number":"string","name":"string","slug":"string","description":"string","remarks":"string"}
/// contact_name : "string"

class Sender {
  Sender({
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
      Customer? customer, 
      String? contactName,}){
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
    _customer = customer;
    _contactName = contactName;
}

  Sender.fromJson(dynamic json) {
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
    _customer = json['customer'] != null ? Customer.fromJson(json['customer']) : null;
    _contactName = json['contact_name'];
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
  Customer? _customer;
  String? _contactName;
Sender copyWith({  int? sub,
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
  Customer? customer,
  String? contactName,
}) => Sender(  sub: sub ?? _sub,
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
  customer: customer ?? _customer,
  contactName: contactName ?? _contactName,
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
  Customer? get customer => _customer;
  String? get contactName => _contactName;

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
    if (_customer != null) {
      map['customer'] = _customer?.toJson();
    }
    map['contact_name'] = _contactName;
    return map;
  }

}

/// sub : 0
/// created : "2022-03-31T04:28:08.380Z"
/// last_updated : "2022-03-31T04:28:08.380Z"
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

class Customer {
  Customer({
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

  Customer.fromJson(dynamic json) {
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
Customer copyWith({  int? sub,
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
}) => Customer(  sub: sub ?? _sub,
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

/// sub : 0
/// created : "2022-03-31T04:28:08.379Z"
/// last_updated : "2022-03-31T04:28:08.379Z"
/// address_line_one : "string"
/// address_line_two : "string"
/// address_post_office : "string"
/// address_zip_code : "string"
/// address_sub_district : "string"
/// address_district : "string"
/// address_division : "string"
/// code : "string"
/// primary_contact_number : "string"
/// secondary_contact_number : "string"
/// name : "string"
/// slug : "string"
/// description : "string"
/// remarks : "string"

class BookingBranch {
  BookingBranch({
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
      String? code, 
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
    _code = code;
    _primaryContactNumber = primaryContactNumber;
    _secondaryContactNumber = secondaryContactNumber;
    _name = name;
    _slug = slug;
    _description = description;
    _remarks = remarks;
}

  BookingBranch.fromJson(dynamic json) {
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
    _code = json['code'];
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
  String? _code;
  String? _primaryContactNumber;
  String? _secondaryContactNumber;
  String? _name;
  String? _slug;
  String? _description;
  String? _remarks;
BookingBranch copyWith({  int? sub,
  String? created,
  String? lastUpdated,
  String? addressLineOne,
  String? addressLineTwo,
  String? addressPostOffice,
  String? addressZipCode,
  String? addressSubDistrict,
  String? addressDistrict,
  String? addressDivision,
  String? code,
  String? primaryContactNumber,
  String? secondaryContactNumber,
  String? name,
  String? slug,
  String? description,
  String? remarks,
}) => BookingBranch(  sub: sub ?? _sub,
  created: created ?? _created,
  lastUpdated: lastUpdated ?? _lastUpdated,
  addressLineOne: addressLineOne ?? _addressLineOne,
  addressLineTwo: addressLineTwo ?? _addressLineTwo,
  addressPostOffice: addressPostOffice ?? _addressPostOffice,
  addressZipCode: addressZipCode ?? _addressZipCode,
  addressSubDistrict: addressSubDistrict ?? _addressSubDistrict,
  addressDistrict: addressDistrict ?? _addressDistrict,
  addressDivision: addressDivision ?? _addressDivision,
  code: code ?? _code,
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
  String? get code => _code;
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
    map['code'] = _code;
    map['primary_contact_number'] = _primaryContactNumber;
    map['secondary_contact_number'] = _secondaryContactNumber;
    map['name'] = _name;
    map['slug'] = _slug;
    map['description'] = _description;
    map['remarks'] = _remarks;
    return map;
  }

}

/// sub : 0
/// created : "2022-03-31T04:28:08.379Z"
/// last_updated : "2022-03-31T04:28:08.379Z"
/// username : "string"
/// first_name : "string"
/// last_name : "string"

class OpsBy {
  OpsBy({
      int? sub, 
      String? created, 
      String? lastUpdated, 
      String? username, 
      String? firstName, 
      String? lastName,}){
    _sub = sub;
    _created = created;
    _lastUpdated = lastUpdated;
    _username = username;
    _firstName = firstName;
    _lastName = lastName;
}

  OpsBy.fromJson(dynamic json) {
    _sub = json['sub'];
    _created = json['created'];
    _lastUpdated = json['last_updated'];
    _username = json['username'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
  }
  int? _sub;
  String? _created;
  String? _lastUpdated;
  String? _username;
  String? _firstName;
  String? _lastName;
OpsBy copyWith({  int? sub,
  String? created,
  String? lastUpdated,
  String? username,
  String? firstName,
  String? lastName,
}) => OpsBy(  sub: sub ?? _sub,
  created: created ?? _created,
  lastUpdated: lastUpdated ?? _lastUpdated,
  username: username ?? _username,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
);
  int? get sub => _sub;
  String? get created => _created;
  String? get lastUpdated => _lastUpdated;
  String? get username => _username;
  String? get firstName => _firstName;
  String? get lastName => _lastName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sub'] = _sub;
    map['created'] = _created;
    map['last_updated'] = _lastUpdated;
    map['username'] = _username;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    return map;
  }

}