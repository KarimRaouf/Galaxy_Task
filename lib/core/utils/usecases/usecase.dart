import 'package:dartz/dartz.dart';

import '../../networking/error/failures.dart';

abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

class NoParams {}