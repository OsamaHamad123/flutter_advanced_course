// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SpecializationsDataLoading value)?  specializationsDataLoading,TResult Function( SpecializationsDataSuccess value)?  specializationsDataSuccess,TResult Function( SpecializationsDataError value)?  specializationsDataError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationsDataLoading() when specializationsDataLoading != null:
return specializationsDataLoading(_that);case SpecializationsDataSuccess() when specializationsDataSuccess != null:
return specializationsDataSuccess(_that);case SpecializationsDataError() when specializationsDataError != null:
return specializationsDataError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SpecializationsDataLoading value)  specializationsDataLoading,required TResult Function( SpecializationsDataSuccess value)  specializationsDataSuccess,required TResult Function( SpecializationsDataError value)  specializationsDataError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SpecializationsDataLoading():
return specializationsDataLoading(_that);case SpecializationsDataSuccess():
return specializationsDataSuccess(_that);case SpecializationsDataError():
return specializationsDataError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SpecializationsDataLoading value)?  specializationsDataLoading,TResult? Function( SpecializationsDataSuccess value)?  specializationsDataSuccess,TResult? Function( SpecializationsDataError value)?  specializationsDataError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationsDataLoading() when specializationsDataLoading != null:
return specializationsDataLoading(_that);case SpecializationsDataSuccess() when specializationsDataSuccess != null:
return specializationsDataSuccess(_that);case SpecializationsDataError() when specializationsDataError != null:
return specializationsDataError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  specializationsDataLoading,TResult Function( SpecializationResponseModel specializationResponseModel)?  specializationsDataSuccess,TResult Function( ErrorHandler errorHandler)?  specializationsDataError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationsDataLoading() when specializationsDataLoading != null:
return specializationsDataLoading();case SpecializationsDataSuccess() when specializationsDataSuccess != null:
return specializationsDataSuccess(_that.specializationResponseModel);case SpecializationsDataError() when specializationsDataError != null:
return specializationsDataError(_that.errorHandler);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  specializationsDataLoading,required TResult Function( SpecializationResponseModel specializationResponseModel)  specializationsDataSuccess,required TResult Function( ErrorHandler errorHandler)  specializationsDataError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SpecializationsDataLoading():
return specializationsDataLoading();case SpecializationsDataSuccess():
return specializationsDataSuccess(_that.specializationResponseModel);case SpecializationsDataError():
return specializationsDataError(_that.errorHandler);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  specializationsDataLoading,TResult? Function( SpecializationResponseModel specializationResponseModel)?  specializationsDataSuccess,TResult? Function( ErrorHandler errorHandler)?  specializationsDataError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationsDataLoading() when specializationsDataLoading != null:
return specializationsDataLoading();case SpecializationsDataSuccess() when specializationsDataSuccess != null:
return specializationsDataSuccess(_that.specializationResponseModel);case SpecializationsDataError() when specializationsDataError != null:
return specializationsDataError(_that.errorHandler);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class SpecializationsDataLoading implements HomeState {
  const SpecializationsDataLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsDataLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.specializationsDataLoading()';
}


}




/// @nodoc


class SpecializationsDataSuccess implements HomeState {
  const SpecializationsDataSuccess(this.specializationResponseModel);
  

 final  SpecializationResponseModel specializationResponseModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsDataSuccessCopyWith<SpecializationsDataSuccess> get copyWith => _$SpecializationsDataSuccessCopyWithImpl<SpecializationsDataSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsDataSuccess&&(identical(other.specializationResponseModel, specializationResponseModel) || other.specializationResponseModel == specializationResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,specializationResponseModel);

@override
String toString() {
  return 'HomeState.specializationsDataSuccess(specializationResponseModel: $specializationResponseModel)';
}


}

/// @nodoc
abstract mixin class $SpecializationsDataSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SpecializationsDataSuccessCopyWith(SpecializationsDataSuccess value, $Res Function(SpecializationsDataSuccess) _then) = _$SpecializationsDataSuccessCopyWithImpl;
@useResult
$Res call({
 SpecializationResponseModel specializationResponseModel
});




}
/// @nodoc
class _$SpecializationsDataSuccessCopyWithImpl<$Res>
    implements $SpecializationsDataSuccessCopyWith<$Res> {
  _$SpecializationsDataSuccessCopyWithImpl(this._self, this._then);

  final SpecializationsDataSuccess _self;
  final $Res Function(SpecializationsDataSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? specializationResponseModel = null,}) {
  return _then(SpecializationsDataSuccess(
null == specializationResponseModel ? _self.specializationResponseModel : specializationResponseModel // ignore: cast_nullable_to_non_nullable
as SpecializationResponseModel,
  ));
}


}

/// @nodoc


class SpecializationsDataError implements HomeState {
  const SpecializationsDataError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsDataErrorCopyWith<SpecializationsDataError> get copyWith => _$SpecializationsDataErrorCopyWithImpl<SpecializationsDataError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsDataError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'HomeState.specializationsDataError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $SpecializationsDataErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SpecializationsDataErrorCopyWith(SpecializationsDataError value, $Res Function(SpecializationsDataError) _then) = _$SpecializationsDataErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$SpecializationsDataErrorCopyWithImpl<$Res>
    implements $SpecializationsDataErrorCopyWith<$Res> {
  _$SpecializationsDataErrorCopyWithImpl(this._self, this._then);

  final SpecializationsDataError _self;
  final $Res Function(SpecializationsDataError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(SpecializationsDataError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
