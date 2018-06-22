import 'dart:async';

// 参数
abstract class Params {}

// UseCase
abstract class UseCase<T extends Params, R> {

    Future<R> execute(T params);
}


