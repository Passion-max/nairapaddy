import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _fileUrl = await secureStorage.getString('ff_fileUrl') ?? _fileUrl;
    });
    await _safeInitAsync(() async {
      _balance = await secureStorage.getDouble('ff_balance') ?? _balance;
    });
    await _safeInitAsync(() async {
      _HouseRent = await secureStorage.getInt('ff_HouseRent') ?? _HouseRent;
    });
    await _safeInitAsync(() async {
      _Subscription =
          await secureStorage.getInt('ff_Subscription') ?? _Subscription;
    });
    await _safeInitAsync(() async {
      _Transport = await secureStorage.getInt('ff_Transport') ?? _Transport;
    });
    await _safeInitAsync(() async {
      _surname = await secureStorage.getString('ff_surname') ?? _surname;
    });
    await _safeInitAsync(() async {
      _email = await secureStorage.getString('ff_email') ?? _email;
    });
    await _safeInitAsync(() async {
      _phone = await secureStorage.getString('ff_phone') ?? _phone;
    });
    await _safeInitAsync(() async {
      _FirstName = await secureStorage.getString('ff_FirstName') ?? _FirstName;
    });
    await _safeInitAsync(() async {
      _expenses = (await secureStorage.getStringList('ff_expenses'))
              ?.map(int.parse)
              .toList() ??
          _expenses;
    });
    await _safeInitAsync(() async {
      _expenseLabel =
          await secureStorage.getStringList('ff_expenseLabel') ?? _expenseLabel;
    });
    await _safeInitAsync(() async {
      _Feeding = await secureStorage.getInt('ff_Feeding') ?? _Feeding;
    });
    await _safeInitAsync(() async {
      _balanceAmount = (await secureStorage.getStringList('ff_balanceAmount'))
              ?.map(double.parse)
              .toList() ??
          _balanceAmount;
    });
    await _safeInitAsync(() async {
      _balanceDay =
          await secureStorage.getStringList('ff_balanceDay') ?? _balanceDay;
    });
    await _safeInitAsync(() async {
      _balanceDate = (await secureStorage.getStringList('ff_balanceDate'))
              ?.map((x) => DateTime.fromMillisecondsSinceEpoch(int.parse(x)))
              .toList() ??
          _balanceDate;
    });
    await _safeInitAsync(() async {
      _incomeSource =
          await secureStorage.getStringList('ff_incomeSource') ?? _incomeSource;
    });
    await _safeInitAsync(() async {
      _incomeAmount = (await secureStorage.getStringList('ff_incomeAmount'))
              ?.map(double.parse)
              .toList() ??
          _incomeAmount;
    });
    await _safeInitAsync(() async {
      _Betking = await secureStorage.getInt('ff_Betking') ?? _Betking;
    });
    await _safeInitAsync(() async {
      _Salary = await secureStorage.getDouble('ff_Salary') ?? _Salary;
    });
    await _safeInitAsync(() async {
      _Job = await secureStorage.getDouble('ff_Job') ?? _Job;
    });
    await _safeInitAsync(() async {
      _Services = await secureStorage.getDouble('ff_Services') ?? _Services;
    });
    await _safeInitAsync(() async {
      _categories =
          await secureStorage.getStringList('ff_categories') ?? _categories;
    });
    await _safeInitAsync(() async {
      _Month = (await secureStorage.getStringList('ff_Month'))
              ?.map(int.parse)
              .toList() ??
          _Month;
    });
    await _safeInitAsync(() async {
      _monthIncome = (await secureStorage.getStringList('ff_monthIncome'))
              ?.map(double.parse)
              .toList() ??
          _monthIncome;
    });
    await _safeInitAsync(() async {
      _monthExpense = (await secureStorage.getStringList('ff_monthExpense'))
              ?.map(double.parse)
              .toList() ??
          _monthExpense;
    });
    await _safeInitAsync(() async {
      _imageUrl = await secureStorage.getString('ff_imageUrl') ?? _imageUrl;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _fileUrl = '';
  String get fileUrl => _fileUrl;
  set fileUrl(String _value) {
    _fileUrl = _value;
    secureStorage.setString('ff_fileUrl', _value);
  }

  void deleteFileUrl() {
    secureStorage.delete(key: 'ff_fileUrl');
  }

  double _balance = 356000;
  double get balance => _balance;
  set balance(double _value) {
    _balance = _value;
    secureStorage.setDouble('ff_balance', _value);
  }

  void deleteBalance() {
    secureStorage.delete(key: 'ff_balance');
  }

  int _HouseRent = 500000;
  int get HouseRent => _HouseRent;
  set HouseRent(int _value) {
    _HouseRent = _value;
    secureStorage.setInt('ff_HouseRent', _value);
  }

  void deleteHouseRent() {
    secureStorage.delete(key: 'ff_HouseRent');
  }

  int _Subscription = 40000;
  int get Subscription => _Subscription;
  set Subscription(int _value) {
    _Subscription = _value;
    secureStorage.setInt('ff_Subscription', _value);
  }

  void deleteSubscription() {
    secureStorage.delete(key: 'ff_Subscription');
  }

  int _Transport = 600000;
  int get Transport => _Transport;
  set Transport(int _value) {
    _Transport = _value;
    secureStorage.setInt('ff_Transport', _value);
  }

  void deleteTransport() {
    secureStorage.delete(key: 'ff_Transport');
  }

  String _surname = '';
  String get surname => _surname;
  set surname(String _value) {
    _surname = _value;
    secureStorage.setString('ff_surname', _value);
  }

  void deleteSurname() {
    secureStorage.delete(key: 'ff_surname');
  }

  String _email = '';
  String get email => _email;
  set email(String _value) {
    _email = _value;
    secureStorage.setString('ff_email', _value);
  }

  void deleteEmail() {
    secureStorage.delete(key: 'ff_email');
  }

  String _phone = '';
  String get phone => _phone;
  set phone(String _value) {
    _phone = _value;
    secureStorage.setString('ff_phone', _value);
  }

  void deletePhone() {
    secureStorage.delete(key: 'ff_phone');
  }

  String _FirstName = '';
  String get FirstName => _FirstName;
  set FirstName(String _value) {
    _FirstName = _value;
    secureStorage.setString('ff_FirstName', _value);
  }

  void deleteFirstName() {
    secureStorage.delete(key: 'ff_FirstName');
  }

  List<int> _expenses = [60000, 50000, 40000, 500000];
  List<int> get expenses => _expenses;
  set expenses(List<int> _value) {
    _expenses = _value;
    secureStorage.setStringList(
        'ff_expenses', _value.map((x) => x.toString()).toList());
  }

  void deleteExpenses() {
    secureStorage.delete(key: 'ff_expenses');
  }

  void addToExpenses(int _value) {
    _expenses.add(_value);
    secureStorage.setStringList(
        'ff_expenses', _expenses.map((x) => x.toString()).toList());
  }

  void removeFromExpenses(int _value) {
    _expenses.remove(_value);
    secureStorage.setStringList(
        'ff_expenses', _expenses.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromExpenses(int _index) {
    _expenses.removeAt(_index);
    secureStorage.setStringList(
        'ff_expenses', _expenses.map((x) => x.toString()).toList());
  }

  void updateExpensesAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _expenses[_index] = updateFn(_expenses[_index]);
    secureStorage.setStringList(
        'ff_expenses', _expenses.map((x) => x.toString()).toList());
  }

  void insertAtIndexInExpenses(int _index, int _value) {
    _expenses.insert(_index, _value);
    secureStorage.setStringList(
        'ff_expenses', _expenses.map((x) => x.toString()).toList());
  }

  List<String> _expenseLabel = [
    'Transport',
    'Feeding',
    'Subscriptions',
    'HouseRent'
  ];
  List<String> get expenseLabel => _expenseLabel;
  set expenseLabel(List<String> _value) {
    _expenseLabel = _value;
    secureStorage.setStringList('ff_expenseLabel', _value);
  }

  void deleteExpenseLabel() {
    secureStorage.delete(key: 'ff_expenseLabel');
  }

  void addToExpenseLabel(String _value) {
    _expenseLabel.add(_value);
    secureStorage.setStringList('ff_expenseLabel', _expenseLabel);
  }

  void removeFromExpenseLabel(String _value) {
    _expenseLabel.remove(_value);
    secureStorage.setStringList('ff_expenseLabel', _expenseLabel);
  }

  void removeAtIndexFromExpenseLabel(int _index) {
    _expenseLabel.removeAt(_index);
    secureStorage.setStringList('ff_expenseLabel', _expenseLabel);
  }

  void updateExpenseLabelAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _expenseLabel[_index] = updateFn(_expenseLabel[_index]);
    secureStorage.setStringList('ff_expenseLabel', _expenseLabel);
  }

  void insertAtIndexInExpenseLabel(int _index, String _value) {
    _expenseLabel.insert(_index, _value);
    secureStorage.setStringList('ff_expenseLabel', _expenseLabel);
  }

  int _Feeding = 50000;
  int get Feeding => _Feeding;
  set Feeding(int _value) {
    _Feeding = _value;
    secureStorage.setInt('ff_Feeding', _value);
  }

  void deleteFeeding() {
    secureStorage.delete(key: 'ff_Feeding');
  }

  List<double> _balanceAmount = [
    120000,
    135000,
    110000,
    150000,
    250000,
    200000,
    350000
  ];
  List<double> get balanceAmount => _balanceAmount;
  set balanceAmount(List<double> _value) {
    _balanceAmount = _value;
    secureStorage.setStringList(
        'ff_balanceAmount', _value.map((x) => x.toString()).toList());
  }

  void deleteBalanceAmount() {
    secureStorage.delete(key: 'ff_balanceAmount');
  }

  void addToBalanceAmount(double _value) {
    _balanceAmount.add(_value);
    secureStorage.setStringList(
        'ff_balanceAmount', _balanceAmount.map((x) => x.toString()).toList());
  }

  void removeFromBalanceAmount(double _value) {
    _balanceAmount.remove(_value);
    secureStorage.setStringList(
        'ff_balanceAmount', _balanceAmount.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromBalanceAmount(int _index) {
    _balanceAmount.removeAt(_index);
    secureStorage.setStringList(
        'ff_balanceAmount', _balanceAmount.map((x) => x.toString()).toList());
  }

  void updateBalanceAmountAtIndex(
    int _index,
    double Function(double) updateFn,
  ) {
    _balanceAmount[_index] = updateFn(_balanceAmount[_index]);
    secureStorage.setStringList(
        'ff_balanceAmount', _balanceAmount.map((x) => x.toString()).toList());
  }

  void insertAtIndexInBalanceAmount(int _index, double _value) {
    _balanceAmount.insert(_index, _value);
    secureStorage.setStringList(
        'ff_balanceAmount', _balanceAmount.map((x) => x.toString()).toList());
  }

  List<String> _balanceDay = ['Mon', 'Tue', 'Wed', 'Thur', 'Fri', 'Sat', 'Sun'];
  List<String> get balanceDay => _balanceDay;
  set balanceDay(List<String> _value) {
    _balanceDay = _value;
    secureStorage.setStringList('ff_balanceDay', _value);
  }

  void deleteBalanceDay() {
    secureStorage.delete(key: 'ff_balanceDay');
  }

  void addToBalanceDay(String _value) {
    _balanceDay.add(_value);
    secureStorage.setStringList('ff_balanceDay', _balanceDay);
  }

  void removeFromBalanceDay(String _value) {
    _balanceDay.remove(_value);
    secureStorage.setStringList('ff_balanceDay', _balanceDay);
  }

  void removeAtIndexFromBalanceDay(int _index) {
    _balanceDay.removeAt(_index);
    secureStorage.setStringList('ff_balanceDay', _balanceDay);
  }

  void updateBalanceDayAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _balanceDay[_index] = updateFn(_balanceDay[_index]);
    secureStorage.setStringList('ff_balanceDay', _balanceDay);
  }

  void insertAtIndexInBalanceDay(int _index, String _value) {
    _balanceDay.insert(_index, _value);
    secureStorage.setStringList('ff_balanceDay', _balanceDay);
  }

  List<DateTime> _balanceDate = [
    DateTime.fromMillisecondsSinceEpoch(1698015600000),
    DateTime.fromMillisecondsSinceEpoch(1698102000000),
    DateTime.fromMillisecondsSinceEpoch(1698188400000),
    DateTime.fromMillisecondsSinceEpoch(1698274800000),
    DateTime.fromMillisecondsSinceEpoch(1698361200000),
    DateTime.fromMillisecondsSinceEpoch(1698447600000),
    DateTime.fromMillisecondsSinceEpoch(1698534000000)
  ];
  List<DateTime> get balanceDate => _balanceDate;
  set balanceDate(List<DateTime> _value) {
    _balanceDate = _value;
    secureStorage.setStringList('ff_balanceDate',
        _value.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void deleteBalanceDate() {
    secureStorage.delete(key: 'ff_balanceDate');
  }

  void addToBalanceDate(DateTime _value) {
    _balanceDate.add(_value);
    secureStorage.setStringList('ff_balanceDate',
        _balanceDate.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void removeFromBalanceDate(DateTime _value) {
    _balanceDate.remove(_value);
    secureStorage.setStringList('ff_balanceDate',
        _balanceDate.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void removeAtIndexFromBalanceDate(int _index) {
    _balanceDate.removeAt(_index);
    secureStorage.setStringList('ff_balanceDate',
        _balanceDate.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void updateBalanceDateAtIndex(
    int _index,
    DateTime Function(DateTime) updateFn,
  ) {
    _balanceDate[_index] = updateFn(_balanceDate[_index]);
    secureStorage.setStringList('ff_balanceDate',
        _balanceDate.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void insertAtIndexInBalanceDate(int _index, DateTime _value) {
    _balanceDate.insert(_index, _value);
    secureStorage.setStringList('ff_balanceDate',
        _balanceDate.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  List<String> _incomeSource = ['Salary', 'Sales', 'Job', 'Betking'];
  List<String> get incomeSource => _incomeSource;
  set incomeSource(List<String> _value) {
    _incomeSource = _value;
    secureStorage.setStringList('ff_incomeSource', _value);
  }

  void deleteIncomeSource() {
    secureStorage.delete(key: 'ff_incomeSource');
  }

  void addToIncomeSource(String _value) {
    _incomeSource.add(_value);
    secureStorage.setStringList('ff_incomeSource', _incomeSource);
  }

  void removeFromIncomeSource(String _value) {
    _incomeSource.remove(_value);
    secureStorage.setStringList('ff_incomeSource', _incomeSource);
  }

  void removeAtIndexFromIncomeSource(int _index) {
    _incomeSource.removeAt(_index);
    secureStorage.setStringList('ff_incomeSource', _incomeSource);
  }

  void updateIncomeSourceAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _incomeSource[_index] = updateFn(_incomeSource[_index]);
    secureStorage.setStringList('ff_incomeSource', _incomeSource);
  }

  void insertAtIndexInIncomeSource(int _index, String _value) {
    _incomeSource.insert(_index, _value);
    secureStorage.setStringList('ff_incomeSource', _incomeSource);
  }

  List<double> _incomeAmount = [350000, 120000, 50000, 15000];
  List<double> get incomeAmount => _incomeAmount;
  set incomeAmount(List<double> _value) {
    _incomeAmount = _value;
    secureStorage.setStringList(
        'ff_incomeAmount', _value.map((x) => x.toString()).toList());
  }

  void deleteIncomeAmount() {
    secureStorage.delete(key: 'ff_incomeAmount');
  }

  void addToIncomeAmount(double _value) {
    _incomeAmount.add(_value);
    secureStorage.setStringList(
        'ff_incomeAmount', _incomeAmount.map((x) => x.toString()).toList());
  }

  void removeFromIncomeAmount(double _value) {
    _incomeAmount.remove(_value);
    secureStorage.setStringList(
        'ff_incomeAmount', _incomeAmount.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromIncomeAmount(int _index) {
    _incomeAmount.removeAt(_index);
    secureStorage.setStringList(
        'ff_incomeAmount', _incomeAmount.map((x) => x.toString()).toList());
  }

  void updateIncomeAmountAtIndex(
    int _index,
    double Function(double) updateFn,
  ) {
    _incomeAmount[_index] = updateFn(_incomeAmount[_index]);
    secureStorage.setStringList(
        'ff_incomeAmount', _incomeAmount.map((x) => x.toString()).toList());
  }

  void insertAtIndexInIncomeAmount(int _index, double _value) {
    _incomeAmount.insert(_index, _value);
    secureStorage.setStringList(
        'ff_incomeAmount', _incomeAmount.map((x) => x.toString()).toList());
  }

  int _Betking = 15000;
  int get Betking => _Betking;
  set Betking(int _value) {
    _Betking = _value;
    secureStorage.setInt('ff_Betking', _value);
  }

  void deleteBetking() {
    secureStorage.delete(key: 'ff_Betking');
  }

  double _Salary = 350000;
  double get Salary => _Salary;
  set Salary(double _value) {
    _Salary = _value;
    secureStorage.setDouble('ff_Salary', _value);
  }

  void deleteSalary() {
    secureStorage.delete(key: 'ff_Salary');
  }

  double _Job = 50000;
  double get Job => _Job;
  set Job(double _value) {
    _Job = _value;
    secureStorage.setDouble('ff_Job', _value);
  }

  void deleteJob() {
    secureStorage.delete(key: 'ff_Job');
  }

  double _Services = 120000;
  double get Services => _Services;
  set Services(double _value) {
    _Services = _value;
    secureStorage.setDouble('ff_Services', _value);
  }

  void deleteServices() {
    secureStorage.delete(key: 'ff_Services');
  }

  List<String> _categories = ['Cat1', 'Cat2', 'Cat3', 'Cat4'];
  List<String> get categories => _categories;
  set categories(List<String> _value) {
    _categories = _value;
    secureStorage.setStringList('ff_categories', _value);
  }

  void deleteCategories() {
    secureStorage.delete(key: 'ff_categories');
  }

  void addToCategories(String _value) {
    _categories.add(_value);
    secureStorage.setStringList('ff_categories', _categories);
  }

  void removeFromCategories(String _value) {
    _categories.remove(_value);
    secureStorage.setStringList('ff_categories', _categories);
  }

  void removeAtIndexFromCategories(int _index) {
    _categories.removeAt(_index);
    secureStorage.setStringList('ff_categories', _categories);
  }

  void updateCategoriesAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _categories[_index] = updateFn(_categories[_index]);
    secureStorage.setStringList('ff_categories', _categories);
  }

  void insertAtIndexInCategories(int _index, String _value) {
    _categories.insert(_index, _value);
    secureStorage.setStringList('ff_categories', _categories);
  }

  List<int> _Month = [1, 2, 3, 4];
  List<int> get Month => _Month;
  set Month(List<int> _value) {
    _Month = _value;
    secureStorage.setStringList(
        'ff_Month', _value.map((x) => x.toString()).toList());
  }

  void deleteMonth() {
    secureStorage.delete(key: 'ff_Month');
  }

  void addToMonth(int _value) {
    _Month.add(_value);
    secureStorage.setStringList(
        'ff_Month', _Month.map((x) => x.toString()).toList());
  }

  void removeFromMonth(int _value) {
    _Month.remove(_value);
    secureStorage.setStringList(
        'ff_Month', _Month.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromMonth(int _index) {
    _Month.removeAt(_index);
    secureStorage.setStringList(
        'ff_Month', _Month.map((x) => x.toString()).toList());
  }

  void updateMonthAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _Month[_index] = updateFn(_Month[_index]);
    secureStorage.setStringList(
        'ff_Month', _Month.map((x) => x.toString()).toList());
  }

  void insertAtIndexInMonth(int _index, int _value) {
    _Month.insert(_index, _value);
    secureStorage.setStringList(
        'ff_Month', _Month.map((x) => x.toString()).toList());
  }

  List<double> _monthIncome = [200000, 400000, 250000, 450000];
  List<double> get monthIncome => _monthIncome;
  set monthIncome(List<double> _value) {
    _monthIncome = _value;
    secureStorage.setStringList(
        'ff_monthIncome', _value.map((x) => x.toString()).toList());
  }

  void deleteMonthIncome() {
    secureStorage.delete(key: 'ff_monthIncome');
  }

  void addToMonthIncome(double _value) {
    _monthIncome.add(_value);
    secureStorage.setStringList(
        'ff_monthIncome', _monthIncome.map((x) => x.toString()).toList());
  }

  void removeFromMonthIncome(double _value) {
    _monthIncome.remove(_value);
    secureStorage.setStringList(
        'ff_monthIncome', _monthIncome.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromMonthIncome(int _index) {
    _monthIncome.removeAt(_index);
    secureStorage.setStringList(
        'ff_monthIncome', _monthIncome.map((x) => x.toString()).toList());
  }

  void updateMonthIncomeAtIndex(
    int _index,
    double Function(double) updateFn,
  ) {
    _monthIncome[_index] = updateFn(_monthIncome[_index]);
    secureStorage.setStringList(
        'ff_monthIncome', _monthIncome.map((x) => x.toString()).toList());
  }

  void insertAtIndexInMonthIncome(int _index, double _value) {
    _monthIncome.insert(_index, _value);
    secureStorage.setStringList(
        'ff_monthIncome', _monthIncome.map((x) => x.toString()).toList());
  }

  List<double> _monthExpense = [150000, 100000, 120000, 130000];
  List<double> get monthExpense => _monthExpense;
  set monthExpense(List<double> _value) {
    _monthExpense = _value;
    secureStorage.setStringList(
        'ff_monthExpense', _value.map((x) => x.toString()).toList());
  }

  void deleteMonthExpense() {
    secureStorage.delete(key: 'ff_monthExpense');
  }

  void addToMonthExpense(double _value) {
    _monthExpense.add(_value);
    secureStorage.setStringList(
        'ff_monthExpense', _monthExpense.map((x) => x.toString()).toList());
  }

  void removeFromMonthExpense(double _value) {
    _monthExpense.remove(_value);
    secureStorage.setStringList(
        'ff_monthExpense', _monthExpense.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromMonthExpense(int _index) {
    _monthExpense.removeAt(_index);
    secureStorage.setStringList(
        'ff_monthExpense', _monthExpense.map((x) => x.toString()).toList());
  }

  void updateMonthExpenseAtIndex(
    int _index,
    double Function(double) updateFn,
  ) {
    _monthExpense[_index] = updateFn(_monthExpense[_index]);
    secureStorage.setStringList(
        'ff_monthExpense', _monthExpense.map((x) => x.toString()).toList());
  }

  void insertAtIndexInMonthExpense(int _index, double _value) {
    _monthExpense.insert(_index, _value);
    secureStorage.setStringList(
        'ff_monthExpense', _monthExpense.map((x) => x.toString()).toList());
  }

  String _imageUrl = '';
  String get imageUrl => _imageUrl;
  set imageUrl(String _value) {
    _imageUrl = _value;
    secureStorage.setString('ff_imageUrl', _value);
  }

  void deleteImageUrl() {
    secureStorage.delete(key: 'ff_imageUrl');
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
