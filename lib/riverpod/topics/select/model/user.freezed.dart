// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call({required int id, required String name, required String age}) {
    return _User(
      id: id,
      name: name,
      age: age,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({int id, String name, String age});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String age});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  _$_User({required this.id, required this.name, required this.age});

  @override
  final int id;
  @override
  final String name;
  @override
  final String age;

  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(age);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  factory _User({required int id, required String name, required String age}) =
      _$_User;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get age => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$UsersTearOff {
  const _$UsersTearOff();

  _Users call({required List<User> users, required String next}) {
    return _Users(
      users: users,
      next: next,
    );
  }
}

/// @nodoc
const $Users = _$UsersTearOff();

/// @nodoc
mixin _$Users {
  List<User> get users => throw _privateConstructorUsedError;
  String get next => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersCopyWith<Users> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersCopyWith<$Res> {
  factory $UsersCopyWith(Users value, $Res Function(Users) then) =
      _$UsersCopyWithImpl<$Res>;
  $Res call({List<User> users, String next});
}

/// @nodoc
class _$UsersCopyWithImpl<$Res> implements $UsersCopyWith<$Res> {
  _$UsersCopyWithImpl(this._value, this._then);

  final Users _value;
  // ignore: unused_field
  final $Res Function(Users) _then;

  @override
  $Res call({
    Object? users = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UsersCopyWith<$Res> implements $UsersCopyWith<$Res> {
  factory _$UsersCopyWith(_Users value, $Res Function(_Users) then) =
      __$UsersCopyWithImpl<$Res>;
  @override
  $Res call({List<User> users, String next});
}

/// @nodoc
class __$UsersCopyWithImpl<$Res> extends _$UsersCopyWithImpl<$Res>
    implements _$UsersCopyWith<$Res> {
  __$UsersCopyWithImpl(_Users _value, $Res Function(_Users) _then)
      : super(_value, (v) => _then(v as _Users));

  @override
  _Users get _value => super._value as _Users;

  @override
  $Res call({
    Object? users = freezed,
    Object? next = freezed,
  }) {
    return _then(_Users(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Users implements _Users {
  _$_Users({required this.users, required this.next});

  @override
  final List<User> users;
  @override
  final String next;

  @override
  String toString() {
    return 'Users(users: $users, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Users &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(next);

  @JsonKey(ignore: true)
  @override
  _$UsersCopyWith<_Users> get copyWith =>
      __$UsersCopyWithImpl<_Users>(this, _$identity);
}

abstract class _Users implements Users {
  factory _Users({required List<User> users, required String next}) = _$_Users;

  @override
  List<User> get users => throw _privateConstructorUsedError;
  @override
  String get next => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UsersCopyWith<_Users> get copyWith => throw _privateConstructorUsedError;
}
