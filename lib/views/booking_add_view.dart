import 'package:courier_service/models/api_models/branch_api_model.dart';
import 'package:courier_service/models/api_models/customers_list_in_api_model.dart';
import 'package:courier_service/repos/branch_repo.dart';
import 'package:courier_service/res/defaults.dart';
import 'package:courier_service/res/dimens.dart';
import 'package:courier_service/shared/tables/customer_small_table.dart';
import 'package:fluent_ui/fluent_ui.dart';

import '../repos/customer_repo.dart';
import '../res/strings.dart';
import '../shared/default_page.dart';
import '../shared/default_page_header.dart';
import '../shared/tables/branch_small_table.dart';
import '../shared/widgets/back_button.dart';

class BookingCreate extends StatefulWidget {
  static const String routeName = "/bookingCreate";

  const BookingCreate({Key? key}) : super(key: key);

  @override
  State<BookingCreate> createState() => _BookingCreateState();
}

class _BookingCreateState extends State<BookingCreate> {
  final branchRepo = BranchRepository();
  final customerRepo = CustomerRepository();

  List<BranchListData> _branchList = [];
  List<CustomersListData> _customerList = [];

  final TextEditingController _branchSearch = TextEditingController();
  final TextEditingController _customerSearch = TextEditingController();

  final _descriptionF = TextEditingController();
  final _remarksF = TextEditingController();
  final _referenceF = TextEditingController();
  final _conditionAmountF = TextEditingController();
  final _serviceChargeF = TextEditingController();
  final _lotQuantityF = TextEditingController();
  final _deliveryInstructionsF = TextEditingController();
  final _senderNameF = TextEditingController();
  final _senderPrimaryContactF = TextEditingController();
  final _senderAddressLineOneF = TextEditingController();
  final _senderAddressLineTwoF = TextEditingController();
  final _senderAddressDistrictF = TextEditingController();
  final _receiverNameF = TextEditingController();
  final _receiverPrimaryContactF = TextEditingController();
  final _receiverAddressLineOneF = TextEditingController();
  final _receiverAddressLineTwoF = TextEditingController();
  final _receiverAddressDistrictF = TextEditingController();

  int branchSub = -1;
  int customerSub = -1;

  @override
  void initState() {
    _getAllBranches(_branchSearch.text.trim());
    _getAllCustomers(_customerSearch.text.trim());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: const DefaultPageHeader(
        headerText: bookingCreatePageHeader,
        actions: [BackButton()],
      ),
      content: DefaultPage(
        hasHorizontalScroll: false,
        hasVerticalScroll: true,
        child: Padding(
          padding: defaultSubPagePadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: dp350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Customer Data",
                      style: FluentTheme.of(context).typography.bodyLarge,
                    ),
                    defaultFormBetweenPadding,
                    const Divider(
                      style:
                          DividerThemeData(horizontalMargin: EdgeInsets.zero),
                    ),
                    defaultFormBetweenPadding,
                    defaultFormBetweenPadding,
                    TextFormBox(
                      controller: _senderNameF,
                      autofocus: true,
                      header: "Customer Contact Name",
                    ),
                    defaultFormBetweenPadding,
                    TextFormBox(
                      controller: _senderPrimaryContactF,
                      autofocus: true,
                      header: "Customer Contact Number",
                    ),
                    defaultFormBetweenPadding,
                    TextFormBox(
                      controller: _senderAddressLineOneF,
                      autofocus: true,
                      header: "Address Line One",
                    ),
                    defaultFormBetweenPadding,
                    TextFormBox(
                      controller: _senderAddressLineTwoF,
                      autofocus: true,
                      header: "Address Line Two",
                    ),
                    defaultFormBetweenPadding,
                    TextFormBox(
                      controller: _senderAddressDistrictF,
                      autofocus: true,
                      header: "Address District",
                    ),
                    defaultFormBetweenPadding,
                    defaultFormBetweenPadding,
                    Text(
                      "Receiver Data",
                      style: FluentTheme.of(context).typography.bodyLarge,
                    ),
                    defaultFormBetweenPadding,
                    const Divider(
                      style:
                          DividerThemeData(horizontalMargin: EdgeInsets.zero),
                    ),
                    defaultFormBetweenPadding,
                    defaultFormBetweenPadding,
                    TextFormBox(
                      controller: _receiverNameF,
                      autofocus: true,
                      header: "Receiver Contact Name",
                    ),
                    defaultFormBetweenPadding,
                    TextFormBox(
                      controller: _receiverPrimaryContactF,
                      autofocus: true,
                      header: "Receiver Contact Number",
                    ),
                    defaultFormBetweenPadding,
                    TextFormBox(
                      controller: _receiverAddressLineOneF,
                      autofocus: true,
                      header: "Address Line One",
                    ),
                    defaultFormBetweenPadding,
                    TextFormBox(
                      controller: _receiverAddressLineTwoF,
                      autofocus: true,
                      header: "Address Line Two",
                    ),
                    defaultFormBetweenPadding,
                    TextFormBox(
                      controller: _receiverAddressDistrictF,
                      autofocus: true,
                      header: "Address District",
                    ),
                  ],
                ),
              ),
              Container(
                constraints: const BoxConstraints(
                  maxWidth: dp1000
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormBox(
                              placeholder: "Search Customers...",
                              controller: _customerSearch,
                              onFieldSubmitted: (_) {
                                _getAllCustomers(_customerSearch.text.trim());
                              },
                              prefix: IconButton(
                                  icon: const Icon(FluentIcons.search),
                                  onPressed: () {
                                    _getAllCustomers(_customerSearch.text.trim());
                                  }
                              ),
                            ),
                            CustomerSmallTable(
                              customerList: _customerList,
                              selectedRowSub: customerSub,
                              onTap: (index) {
                                customerSub = _customerList[index].sub ?? -1;
                                _senderNameF.text = _customerList[index].name ?? "";
                                setState(() {});
                              },
                            )
                          ],
                        ),
                      ),
                      height: dp350,
                    ),
                    const SizedBox(height: 50,),
                    SizedBox(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormBox(
                              placeholder: "Search Branches...",
                              controller: _branchSearch,
                              onFieldSubmitted: (_) {
                                _getAllBranches(_branchSearch.text.trim());
                              },
                              prefix: IconButton(
                                  icon: const Icon(FluentIcons.search),
                                  onPressed: () {
                                    _getAllBranches(_branchSearch.text.trim());
                                  }
                              ),
                            ),
                            BranchSmallTable(
                              branchList: _branchList,
                              selectedRowSub: branchSub,
                              onTap: (sub) {
                                branchSub = sub;
                                setState(() {});
                              },
                            )
                          ],
                        ),
                      ),
                      height: dp350,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _getAllBranches(String? q) async {
    BranchApiModel data = await branchRepo.getAllBranches(q);
    _branchList = data.data ?? [];
    setState(() {});
  }

  Future<void> _getAllCustomers(String? q) async {
    CustomersListInApiModel data = await customerRepo.getCustomers(q);
    _customerList = data.data ?? [];
    setState(() {});
  }
}
