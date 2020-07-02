abstract class UseCaseFirestore<Type, Params> {
  Future<Type> call(Params params);
}

abstract class UseCaseFirestoreQuery<Type, Params> {
  Type call(Params params);
}

abstract class UseCaseFirebase<Type, Params> {
  Future<Type> call(Params params);
}

abstract class UseCaseFirebaseUser<Type, Params> {
  Type call(Params params);
}
