// import 'package:get_storage/get_storage.dart';
// class SLocalStorage{
//   static final SLocalStorage _instance=SLocalStorage._internal();
//
//   factory SLocalStorage(){
//     return _instance;
//   }
//   SLocalStorage._internal();
//   final _storage=GetStorage();
//
//   ///Generic method to save data
// Future<void> saveData<T>(String key,T value) async {
//   await _storage.write(key, value);
// }
//   ///A method to read data
// T? readData<T>(String key){
//   return _storage.read<T>(key);
// }
// ///A Method to remove data
// Future<void> removeData(String key) async {
//   await _storage.remove(key);
// }
// Future<void> clearAll() async {
//   await _storage.erase();
// }
// }