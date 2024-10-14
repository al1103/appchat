mixin AuthRepository {
  Future<String> signIn(String email, String password);
  Future<String> signUp(String username, String email, String password);
}
