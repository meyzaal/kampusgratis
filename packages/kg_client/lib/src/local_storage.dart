import 'package:fresh_dio/fresh_dio.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Key for storing and retrieving data in the local storage box.
const _storageKey = 'local_storage_key';

/// A generic class implementing the [TokenStorage] interface for local storage.
///
/// This class uses the Hive package to interact with a local storage box.
/// It provides methods to delete, read, and write data of generic type [T] in 
/// the box.
///
/// Example usage:
/// ```dart
/// final localStorage = LocalStorage<MyData>('myDataBox');
///
/// // Writing data to local storage
/// await localStorage.write(myData);
///
/// // Reading data from local storage
/// final storedData = await localStorage.read();
///
/// // Deleting data from local storage
/// await localStorage.delete();
/// ```
class LocalStorage<T> implements TokenStorage<T> {
  /// Constructs a [LocalStorage] instance with the given [boxName].
  LocalStorage(this.boxName);

  /// The name of the Hive box used for local storage.
  late final String boxName;

  /// Opens the Hive box for local storage.
  Future<Box<T>> _openBox() => Hive.openBox<T>(boxName);

  /// Deletes the data stored in the local storage box.
  ///
  /// Returns a [Future] indicating the completion of the operation.
  @override
  Future<void> delete() async {
    final box = await _openBox();
    return box.delete(_storageKey);
  }

  /// Reads and retrieves data from the local storage box.
  ///
  /// Returns a [Future] with the retrieved data of type [T].
  @override
  Future<T?> read() async {
    final box = await _openBox();
    return box.get(_storageKey);
  }

  /// Writes data of type [T] to the local storage box.
  ///
  /// Returns a [Future] indicating the completion of the operation.
  @override
  Future<void> write(T value) async {
    final box = await _openBox();
    return box.put(_storageKey, value);
  }
}
