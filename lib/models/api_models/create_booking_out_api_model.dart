/// description : "string"
/// remarks : "string"
/// sender_sub : 0
/// reference : "string"
/// service_type : "EX/S"
/// condition_amount : 0
/// service_charge : 0
/// delivery : {"address_line_one":"string","address_line_two":"string","address_post_office":"string","address_zip_code":"string","address_sub_district":"string","address_district":"string","address_division":"string","primary_contact_number":"string","secondary_contact_number":"string","destination_branch_sub":0,"lot_quantity":1,"is_dangerous_goods":false,"attached_insurance":"string","delivery_instructions":"string","delivery_mode":"O/D"}
/// sender : {"customer":{"address_line_one":"string","address_line_two":"string","address_post_office":"string","address_zip_code":"string","address_sub_district":"string","address_district":"string","address_division":"string","primary_contact_number":"string","secondary_contact_number":"string","name":"string","slug":"string"},"contact_name":"string"}
/// receiver : {"contact_name":"string"}
/// parcels : [{"description":"string","remarks":"string","width":0,"length":0,"height":0,"weight":0,"quantity":0,"unit":"PCS","parcel_content_type":"string","charge":0}]

class CreateBookingOutApiModel {
  CreateBookingOutApiModel({
      this.description, 
      this.remarks, 
      this.senderSub, 
      this.reference, 
      this.serviceType, 
      this.conditionAmount, 
      this.serviceCharge, 
      this.delivery, 
      this.sender, 
      this.receiver, 
      this.parcels,});

  CreateBookingOutApiModel.fromJson(dynamic json) {
    description = json['description'];
    remarks = json['remarks'];
    senderSub = json['sender_sub'];
    reference = json['reference'];
    serviceType = json['service_type'];
    conditionAmount = json['condition_amount'];
    serviceCharge = json['service_charge'];
    delivery = json['delivery'] != null ? Delivery.fromJson(json['delivery']) : null;
    sender = json['sender'] != null ? Sender.fromJson(json['sender']) : null;
    receiver = json['receiver'] != null ? Receiver.fromJson(json['receiver']) : null;
    if (json['parcels'] != null) {
      parcels = [];
      json['parcels'].forEach((v) {
        parcels?.add(Parcels.fromJson(v));
      });
    }
  }
  String? description;
  String? remarks;
  int? senderSub;
  String? reference;
  String? serviceType;
  double? conditionAmount;
  double? serviceCharge;
  Delivery? delivery;
  Sender? sender;
  Receiver? receiver;
  List<Parcels>? parcels;
CreateBookingOutApiModel copyWith({  String? description,
  String? remarks,
  int? senderSub,
  String? reference,
  String? serviceType,
  double? conditionAmount,
  double? serviceCharge,
  Delivery? delivery,
  Sender? sender,
  Receiver? receiver,
  List<Parcels>? parcels,
}) => CreateBookingOutApiModel(  description: description ?? this.description,
  remarks: remarks ?? this.remarks,
  senderSub: senderSub ?? this.senderSub,
  reference: reference ?? this.reference,
  serviceType: serviceType ?? this.serviceType,
  conditionAmount: conditionAmount ?? this.conditionAmount,
  serviceCharge: serviceCharge ?? this.serviceCharge,
  delivery: delivery ?? this.delivery,
  sender: sender ?? this.sender,
  receiver: receiver ?? this.receiver,
  parcels: parcels ?? this.parcels,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['remarks'] = remarks;
    map['sender_sub'] = senderSub;
    map['reference'] = reference;
    map['service_type'] = serviceType;
    map['condition_amount'] = conditionAmount;
    map['service_charge'] = serviceCharge;
    if (delivery != null) {
      map['delivery'] = delivery?.toJson();
    }
    if (sender != null) {
      map['sender'] = sender?.toJson();
    }
    if (receiver != null) {
      map['receiver'] = receiver?.toJson();
    }
    if (parcels != null) {
      map['parcels'] = parcels?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// description : "string"
/// remarks : "string"
/// width : 0
/// length : 0
/// height : 0
/// weight : 0
/// quantity : 0
/// unit : "PCS"
/// parcel_content_type : "string"
/// charge : 0

class Parcels {
  Parcels({
      this.description, 
      this.remarks, 
      this.width, 
      this.length, 
      this.height, 
      this.weight, 
      this.quantity, 
      this.unit, 
      this.parcelContentType, 
      this.charge,});

  Parcels.fromJson(dynamic json) {
    description = json['description'];
    remarks = json['remarks'];
    width = json['width'];
    length = json['length'];
    height = json['height'];
    weight = json['weight'];
    quantity = json['quantity'];
    unit = json['unit'];
    parcelContentType = json['parcel_content_type'];
    charge = json['charge'];
  }
  String? description;
  String? remarks;
  int? width;
  int? length;
  int? height;
  int? weight;
  int? quantity;
  String? unit;
  String? parcelContentType;
  int? charge;
Parcels copyWith({  String? description,
  String? remarks,
  int? width,
  int? length,
  int? height,
  int? weight,
  int? quantity,
  String? unit,
  String? parcelContentType,
  int? charge,
}) => Parcels(  description: description ?? this.description,
  remarks: remarks ?? this.remarks,
  width: width ?? this.width,
  length: length ?? this.length,
  height: height ?? this.height,
  weight: weight ?? this.weight,
  quantity: quantity ?? this.quantity,
  unit: unit ?? this.unit,
  parcelContentType: parcelContentType ?? this.parcelContentType,
  charge: charge ?? this.charge,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['remarks'] = remarks;
    map['width'] = width;
    map['length'] = length;
    map['height'] = height;
    map['weight'] = weight;
    map['quantity'] = quantity;
    map['unit'] = unit;
    map['parcel_content_type'] = parcelContentType;
    map['charge'] = charge;
    return map;
  }

}

/// contact_name : "string"

class Receiver {
  Receiver({
      this.contactName,});

  Receiver.fromJson(dynamic json) {
    contactName = json['contact_name'];
  }
  String? contactName;
Receiver copyWith({  String? contactName,
}) => Receiver(  contactName: contactName ?? this.contactName,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['contact_name'] = contactName;
    return map;
  }

}

/// customer : {"address_line_one":"string","address_line_two":"string","address_post_office":"string","address_zip_code":"string","address_sub_district":"string","address_district":"string","address_division":"string","primary_contact_number":"string","secondary_contact_number":"string","name":"string","slug":"string"}
/// contact_name : "string"

class Sender {
  Sender({
      this.customer, 
      this.contactName,});

  Sender.fromJson(dynamic json) {
    customer = json['customer'] != null ? Customer.fromJson(json['customer']) : null;
    contactName = json['contact_name'];
  }
  Customer? customer;
  String? contactName;
Sender copyWith({  Customer? customer,
  String? contactName,
}) => Sender(  customer: customer ?? this.customer,
  contactName: contactName ?? this.contactName,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (customer != null) {
      map['customer'] = customer?.toJson();
    }
    map['contact_name'] = contactName;
    return map;
  }

}

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

class Customer {
  Customer({
      this.addressLineOne, 
      this.addressLineTwo, 
      this.addressPostOffice, 
      this.addressZipCode, 
      this.addressSubDistrict, 
      this.addressDistrict, 
      this.addressDivision, 
      this.primaryContactNumber, 
      this.secondaryContactNumber, 
      this.name, 
      this.slug,});

  Customer.fromJson(dynamic json) {
    addressLineOne = json['address_line_one'];
    addressLineTwo = json['address_line_two'];
    addressPostOffice = json['address_post_office'];
    addressZipCode = json['address_zip_code'];
    addressSubDistrict = json['address_sub_district'];
    addressDistrict = json['address_district'];
    addressDivision = json['address_division'];
    primaryContactNumber = json['primary_contact_number'];
    secondaryContactNumber = json['secondary_contact_number'];
    name = json['name'];
    slug = json['slug'];
  }
  String? addressLineOne;
  String? addressLineTwo;
  String? addressPostOffice;
  String? addressZipCode;
  String? addressSubDistrict;
  String? addressDistrict;
  String? addressDivision;
  String? primaryContactNumber;
  String? secondaryContactNumber;
  String? name;
  String? slug;
Customer copyWith({  String? addressLineOne,
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
}) => Customer(  addressLineOne: addressLineOne ?? this.addressLineOne,
  addressLineTwo: addressLineTwo ?? this.addressLineTwo,
  addressPostOffice: addressPostOffice ?? this.addressPostOffice,
  addressZipCode: addressZipCode ?? this.addressZipCode,
  addressSubDistrict: addressSubDistrict ?? this.addressSubDistrict,
  addressDistrict: addressDistrict ?? this.addressDistrict,
  addressDivision: addressDivision ?? this.addressDivision,
  primaryContactNumber: primaryContactNumber ?? this.primaryContactNumber,
  secondaryContactNumber: secondaryContactNumber ?? this.secondaryContactNumber,
  name: name ?? this.name,
  slug: slug ?? this.slug,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address_line_one'] = addressLineOne;
    map['address_line_two'] = addressLineTwo;
    map['address_post_office'] = addressPostOffice;
    map['address_zip_code'] = addressZipCode;
    map['address_sub_district'] = addressSubDistrict;
    map['address_district'] = addressDistrict;
    map['address_division'] = addressDivision;
    map['primary_contact_number'] = primaryContactNumber;
    map['secondary_contact_number'] = secondaryContactNumber;
    map['name'] = name;
    map['slug'] = slug;
    return map;
  }

}

/// address_line_one : "string"
/// address_line_two : "string"
/// address_post_office : "string"
/// address_zip_code : "string"
/// address_sub_district : "string"
/// address_district : "string"
/// address_division : "string"
/// primary_contact_number : "string"
/// secondary_contact_number : "string"
/// destination_branch_sub : 0
/// lot_quantity : 1
/// is_dangerous_goods : false
/// attached_insurance : "string"
/// delivery_instructions : "string"
/// delivery_mode : "O/D"

class Delivery {
  Delivery({
      this.addressLineOne, 
      this.addressLineTwo, 
      this.addressPostOffice, 
      this.addressZipCode, 
      this.addressSubDistrict, 
      this.addressDistrict, 
      this.addressDivision, 
      this.primaryContactNumber, 
      this.secondaryContactNumber, 
      this.destinationBranchId,
      this.lotQuantity, 
      this.isDangerousGoods, 
      this.attachedInsurance, 
      this.deliveryInstructions, 
      this.deliveryMode,});

  Delivery.fromJson(dynamic json) {
    addressLineOne = json['address_line_one'];
    addressLineTwo = json['address_line_two'];
    addressPostOffice = json['address_post_office'];
    addressZipCode = json['address_zip_code'];
    addressSubDistrict = json['address_sub_district'];
    addressDistrict = json['address_district'];
    addressDivision = json['address_division'];
    primaryContactNumber = json['primary_contact_number'];
    secondaryContactNumber = json['secondary_contact_number'];
    destinationBranchId = json['destination_branch_id'];
    lotQuantity = json['lot_quantity'];
    isDangerousGoods = json['is_dangerous_goods'];
    attachedInsurance = json['attached_insurance'];
    deliveryInstructions = json['delivery_instructions'];
    deliveryMode = json['delivery_mode'];
  }
  String? addressLineOne;
  String? addressLineTwo;
  String? addressPostOffice;
  String? addressZipCode;
  String? addressSubDistrict;
  String? addressDistrict;
  String? addressDivision;
  String? primaryContactNumber;
  String? secondaryContactNumber;
  int? destinationBranchId;
  int? lotQuantity;
  bool? isDangerousGoods;
  String? attachedInsurance;
  String? deliveryInstructions;
  String? deliveryMode;
Delivery copyWith({  String? addressLineOne,
  String? addressLineTwo,
  String? addressPostOffice,
  String? addressZipCode,
  String? addressSubDistrict,
  String? addressDistrict,
  String? addressDivision,
  String? primaryContactNumber,
  String? secondaryContactNumber,
  int? destinationBranchSub,
  int? lotQuantity,
  bool? isDangerousGoods,
  String? attachedInsurance,
  String? deliveryInstructions,
  String? deliveryMode,
}) => Delivery(  addressLineOne: addressLineOne ?? this.addressLineOne,
  addressLineTwo: addressLineTwo ?? this.addressLineTwo,
  addressPostOffice: addressPostOffice ?? this.addressPostOffice,
  addressZipCode: addressZipCode ?? this.addressZipCode,
  addressSubDistrict: addressSubDistrict ?? this.addressSubDistrict,
  addressDistrict: addressDistrict ?? this.addressDistrict,
  addressDivision: addressDivision ?? this.addressDivision,
  primaryContactNumber: primaryContactNumber ?? this.primaryContactNumber,
  secondaryContactNumber: secondaryContactNumber ?? this.secondaryContactNumber,
  destinationBranchId: destinationBranchSub ?? this.destinationBranchId,
  lotQuantity: lotQuantity ?? this.lotQuantity,
  isDangerousGoods: isDangerousGoods ?? this.isDangerousGoods,
  attachedInsurance: attachedInsurance ?? this.attachedInsurance,
  deliveryInstructions: deliveryInstructions ?? this.deliveryInstructions,
  deliveryMode: deliveryMode ?? this.deliveryMode,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address_line_one'] = addressLineOne;
    map['address_line_two'] = addressLineTwo;
    map['address_post_office'] = addressPostOffice;
    map['address_zip_code'] = addressZipCode;
    map['address_sub_district'] = addressSubDistrict;
    map['address_district'] = addressDistrict;
    map['address_division'] = addressDivision;
    map['primary_contact_number'] = primaryContactNumber;
    map['secondary_contact_number'] = secondaryContactNumber;
    map['destination_branch_id'] = destinationBranchId;
    map['lot_quantity'] = lotQuantity;
    map['is_dangerous_goods'] = isDangerousGoods;
    map['attached_insurance'] = attachedInsurance;
    map['delivery_instructions'] = deliveryInstructions;
    map['delivery_mode'] = deliveryMode;
    return map;
  }

}