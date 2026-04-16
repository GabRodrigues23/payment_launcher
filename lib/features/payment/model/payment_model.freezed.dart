// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentModel {

 PaymentTypes get type; DateTime get referenceId; double get amount; int? get installments; String? get installmentType;
/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentModelCopyWith<PaymentModel> get copyWith => _$PaymentModelCopyWithImpl<PaymentModel>(this as PaymentModel, _$identity);

  /// Serializes this PaymentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentModel&&(identical(other.type, type) || other.type == type)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.installments, installments) || other.installments == installments)&&(identical(other.installmentType, installmentType) || other.installmentType == installmentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,referenceId,amount,installments,installmentType);

@override
String toString() {
  return 'PaymentModel(type: $type, referenceId: $referenceId, amount: $amount, installments: $installments, installmentType: $installmentType)';
}


}

/// @nodoc
abstract mixin class $PaymentModelCopyWith<$Res>  {
  factory $PaymentModelCopyWith(PaymentModel value, $Res Function(PaymentModel) _then) = _$PaymentModelCopyWithImpl;
@useResult
$Res call({
 PaymentTypes type, DateTime referenceId, double amount, int? installments, String? installmentType
});




}
/// @nodoc
class _$PaymentModelCopyWithImpl<$Res>
    implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._self, this._then);

  final PaymentModel _self;
  final $Res Function(PaymentModel) _then;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? referenceId = null,Object? amount = null,Object? installments = freezed,Object? installmentType = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PaymentTypes,referenceId: null == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,installments: freezed == installments ? _self.installments : installments // ignore: cast_nullable_to_non_nullable
as int?,installmentType: freezed == installmentType ? _self.installmentType : installmentType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentModel].
extension PaymentModelPatterns on PaymentModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PaymentTypes type,  DateTime referenceId,  double amount,  int? installments,  String? installmentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
return $default(_that.type,_that.referenceId,_that.amount,_that.installments,_that.installmentType);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PaymentTypes type,  DateTime referenceId,  double amount,  int? installments,  String? installmentType)  $default,) {final _that = this;
switch (_that) {
case _PaymentModel():
return $default(_that.type,_that.referenceId,_that.amount,_that.installments,_that.installmentType);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PaymentTypes type,  DateTime referenceId,  double amount,  int? installments,  String? installmentType)?  $default,) {final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
return $default(_that.type,_that.referenceId,_that.amount,_that.installments,_that.installmentType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentModel implements PaymentModel {
  const _PaymentModel({required this.type, required this.referenceId, required this.amount, this.installments, this.installmentType});
  factory _PaymentModel.fromJson(Map<String, dynamic> json) => _$PaymentModelFromJson(json);

@override final  PaymentTypes type;
@override final  DateTime referenceId;
@override final  double amount;
@override final  int? installments;
@override final  String? installmentType;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentModelCopyWith<_PaymentModel> get copyWith => __$PaymentModelCopyWithImpl<_PaymentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentModel&&(identical(other.type, type) || other.type == type)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.installments, installments) || other.installments == installments)&&(identical(other.installmentType, installmentType) || other.installmentType == installmentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,referenceId,amount,installments,installmentType);

@override
String toString() {
  return 'PaymentModel(type: $type, referenceId: $referenceId, amount: $amount, installments: $installments, installmentType: $installmentType)';
}


}

/// @nodoc
abstract mixin class _$PaymentModelCopyWith<$Res> implements $PaymentModelCopyWith<$Res> {
  factory _$PaymentModelCopyWith(_PaymentModel value, $Res Function(_PaymentModel) _then) = __$PaymentModelCopyWithImpl;
@override @useResult
$Res call({
 PaymentTypes type, DateTime referenceId, double amount, int? installments, String? installmentType
});




}
/// @nodoc
class __$PaymentModelCopyWithImpl<$Res>
    implements _$PaymentModelCopyWith<$Res> {
  __$PaymentModelCopyWithImpl(this._self, this._then);

  final _PaymentModel _self;
  final $Res Function(_PaymentModel) _then;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? referenceId = null,Object? amount = null,Object? installments = freezed,Object? installmentType = freezed,}) {
  return _then(_PaymentModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PaymentTypes,referenceId: null == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,installments: freezed == installments ? _self.installments : installments // ignore: cast_nullable_to_non_nullable
as int?,installmentType: freezed == installmentType ? _self.installmentType : installmentType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
