import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

const String _kTokenStorageKey = 'User bearer token';
const Duration _kExpireTimeout = Duration(days: 30);

class TokenManager {
  final storage = const FlutterSecureStorage();

  Future<bool> putToken(String token) async {
    final isValid = isTokenValid(token);
    if (!isValid) return false;
    await storage.write(key: _kTokenStorageKey, value: token);
    return true;
  }

  Future<void> deleteToken() async {
    await storage.delete(key: _kTokenStorageKey);
  }

  Future<String?> readToken() async {
    return await storage.read(key: _kTokenStorageKey);
  }

  bool isTokenValid(String? token) {
    if (token == null) return false;
    final decoded = JwtDecoder.decode(token);
    final creationTime = decoded['iat'] as int?;
    if (creationTime == null) return false;
    final expireDate = DateTime.fromMillisecondsSinceEpoch(creationTime * 1000 + _kExpireTimeout.inMilliseconds);
    if (!DateTime.now().isBefore(expireDate)) return false;
    return true;
  }
}
