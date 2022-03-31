class BookingTableModel {
  final int id;
  final String code;
  final String customerName;
  final String customerContactNumber;
  final String recipientName;
  final String recipientContactNumber;
  final String parcelDescription;
  final String destination;

  BookingTableModel(
      this.id,
      this.code,
      this.customerName,
      this.customerContactNumber,
      this.recipientName,
      this.recipientContactNumber,
      this.parcelDescription,
      this.destination);
}
