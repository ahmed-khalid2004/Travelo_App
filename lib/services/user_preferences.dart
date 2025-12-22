import 'package:flutter/foundation.dart';

class UserData {
  String email;
  String password;

  UserData({required this.email, required this.password});
}

class UserPreferences extends ChangeNotifier {
  static final UserPreferences _instance = UserPreferences._internal();
  factory UserPreferences() => _instance;
  UserPreferences._internal();

  final List<UserData> _registeredUsers = [];
  
  final Set<String> _favoriteIds = {};
  
  UserData? _currentUser;

  Set<String> get favoriteIds => _favoriteIds;
  UserData? get currentUser => _currentUser;
  List<UserData> get registeredUsers => _registeredUsers;

  bool registerUser(String email, String password) {
    bool userExists = _registeredUsers.any((user) => user.email == email);
    
    if (!userExists) {
      _registeredUsers.add(UserData(email: email, password: password));
      notifyListeners();
      return true;
    }
    return false;
  }

  bool loginUser(String email, String password) {
    try {
      _currentUser = _registeredUsers.firstWhere(
        (user) => user.email == email && user.password == password,
      );
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }

  void logoutUser() {
    _currentUser = null;
    notifyListeners();
  }

  void toggleFavorite(String destinationId) {
    if (_favoriteIds.contains(destinationId)) {
      _favoriteIds.remove(destinationId);
    } else {
      _favoriteIds.add(destinationId);
    }
    notifyListeners();
  }

  bool isFavorite(String destinationId) {
    return _favoriteIds.contains(destinationId);
  }

  int get favoritesCount => _favoriteIds.length;
}