abstract class UseCaseFirestore<Type, Params> {
  Future<Type> call(Params params);
}

abstract class UseCaseFirestoreStream<Type, Params> {
  Stream<Type> call(Params params);
}

abstract class UseCaseFirestoreQuery<Type, Params> {
  Type call(Params params);
}

abstract class UseCaseFirebaseFuture<Type, Params> {
  Future<Type> call(Params params);
}

abstract class UseCaseFirebase<Type, Params> {
  Type call(Params params);
}

abstract class UseCaseLocal<Type, Params> {
  Type call(Params params);
}
