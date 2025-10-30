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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SpecializationsDataLoading value)?  specializationsDataLoading,TResult Function( SpecializationsDataSuccess value)?  specializationsDataSuccess,TResult Function( SpecializationsDataError value)?  specializationsDataError,TResult Function( DoctorsDataSuccess value)?  doctorsDataSuccess,TResult Function( DoctorsDataError value)?  doctorsDataError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationsDataLoading() when specializationsDataLoading != null:
return specializationsDataLoading(_that);case SpecializationsDataSuccess() when specializationsDataSuccess != null:
return specializationsDataSuccess(_that);case SpecializationsDataError() when specializationsDataError != null:
return specializationsDataError(_that);case DoctorsDataSuccess() when doctorsDataSuccess != null:
return doctorsDataSuccess(_that);case DoctorsDataError() when doctorsDataError != null:
return doctorsDataError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SpecializationsDataLoading value)  specializationsDataLoading,required TResult Function( SpecializationsDataSuccess value)  specializationsDataSuccess,required TResult Function( SpecializationsDataError value)  specializationsDataError,required TResult Function( DoctorsDataSuccess value)  doctorsDataSuccess,required TResult Function( DoctorsDataError value)  doctorsDataError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SpecializationsDataLoading():
return specializationsDataLoading(_that);case SpecializationsDataSuccess():
return specializationsDataSuccess(_that);case SpecializationsDataError():
return specializationsDataError(_that);case DoctorsDataSuccess():
return doctorsDataSuccess(_that);case DoctorsDataError():
return doctorsDataError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SpecializationsDataLoading value)?  specializationsDataLoading,TResult? Function( SpecializationsDataSuccess value)?  specializationsDataSuccess,TResult? Function( SpecializationsDataError value)?  specializationsDataError,TResult? Function( DoctorsDataSuccess value)?  doctorsDataSuccess,TResult? Function( DoctorsDataError value)?  doctorsDataError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationsDataLoading() when specializationsDataLoading != null:
return specializationsDataLoading(_that);case SpecializationsDataSuccess() when specializationsDataSuccess != null:
return specializationsDataSuccess(_that);case SpecializationsDataError() when specializationsDataError != null:
return specializationsDataError(_that);case DoctorsDataSuccess() when doctorsDataSuccess != null:
return doctorsDataSuccess(_that);case DoctorsDataError() when doctorsDataError != null:
return doctorsDataError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  specializationsDataLoading,TResult Function( List<SpecializationData?>? specializationsDataList)?  specializationsDataSuccess,TResult Function( ApiErrorModel apiErrorModel)?  specializationsDataError,TResult Function( List<Doctors?>? doctorsDataList)?  doctorsDataSuccess,TResult Function( ApiErrorModel apiErrorModel)?  doctorsDataError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationsDataLoading() when specializationsDataLoading != null:
return specializationsDataLoading();case SpecializationsDataSuccess() when specializationsDataSuccess != null:
return specializationsDataSuccess(_that.specializationsDataList);case SpecializationsDataError() when specializationsDataError != null:
return specializationsDataError(_that.apiErrorModel);case DoctorsDataSuccess() when doctorsDataSuccess != null:
return doctorsDataSuccess(_that.doctorsDataList);case DoctorsDataError() when doctorsDataError != null:
return doctorsDataError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  specializationsDataLoading,required TResult Function( List<SpecializationData?>? specializationsDataList)  specializationsDataSuccess,required TResult Function( ApiErrorModel apiErrorModel)  specializationsDataError,required TResult Function( List<Doctors?>? doctorsDataList)  doctorsDataSuccess,required TResult Function( ApiErrorModel apiErrorModel)  doctorsDataError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SpecializationsDataLoading():
return specializationsDataLoading();case SpecializationsDataSuccess():
return specializationsDataSuccess(_that.specializationsDataList);case SpecializationsDataError():
return specializationsDataError(_that.apiErrorModel);case DoctorsDataSuccess():
return doctorsDataSuccess(_that.doctorsDataList);case DoctorsDataError():
return doctorsDataError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  specializationsDataLoading,TResult? Function( List<SpecializationData?>? specializationsDataList)?  specializationsDataSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  specializationsDataError,TResult? Function( List<Doctors?>? doctorsDataList)?  doctorsDataSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  doctorsDataError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationsDataLoading() when specializationsDataLoading != null:
return specializationsDataLoading();case SpecializationsDataSuccess() when specializationsDataSuccess != null:
return specializationsDataSuccess(_that.specializationsDataList);case SpecializationsDataError() when specializationsDataError != null:
return specializationsDataError(_that.apiErrorModel);case DoctorsDataSuccess() when doctorsDataSuccess != null:
return doctorsDataSuccess(_that.doctorsDataList);case DoctorsDataError() when doctorsDataError != null:
return doctorsDataError(_that.apiErrorModel);case _:
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
  const SpecializationsDataSuccess(final  List<SpecializationData?>? specializationsDataList): _specializationsDataList = specializationsDataList;
  

 final  List<SpecializationData?>? _specializationsDataList;
 List<SpecializationData?>? get specializationsDataList {
  final value = _specializationsDataList;
  if (value == null) return null;
  if (_specializationsDataList is EqualUnmodifiableListView) return _specializationsDataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsDataSuccessCopyWith<SpecializationsDataSuccess> get copyWith => _$SpecializationsDataSuccessCopyWithImpl<SpecializationsDataSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsDataSuccess&&const DeepCollectionEquality().equals(other._specializationsDataList, _specializationsDataList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_specializationsDataList));

@override
String toString() {
  return 'HomeState.specializationsDataSuccess(specializationsDataList: $specializationsDataList)';
}


}

/// @nodoc
abstract mixin class $SpecializationsDataSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SpecializationsDataSuccessCopyWith(SpecializationsDataSuccess value, $Res Function(SpecializationsDataSuccess) _then) = _$SpecializationsDataSuccessCopyWithImpl;
@useResult
$Res call({
 List<SpecializationData?>? specializationsDataList
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
@pragma('vm:prefer-inline') $Res call({Object? specializationsDataList = freezed,}) {
  return _then(SpecializationsDataSuccess(
freezed == specializationsDataList ? _self._specializationsDataList : specializationsDataList // ignore: cast_nullable_to_non_nullable
as List<SpecializationData?>?,
  ));
}


}

/// @nodoc


class SpecializationsDataError implements HomeState {
  const SpecializationsDataError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsDataErrorCopyWith<SpecializationsDataError> get copyWith => _$SpecializationsDataErrorCopyWithImpl<SpecializationsDataError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsDataError&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'HomeState.specializationsDataError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $SpecializationsDataErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SpecializationsDataErrorCopyWith(SpecializationsDataError value, $Res Function(SpecializationsDataError) _then) = _$SpecializationsDataErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
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
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(SpecializationsDataError(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

/// @nodoc


class DoctorsDataSuccess implements HomeState {
  const DoctorsDataSuccess(final  List<Doctors?>? doctorsDataList): _doctorsDataList = doctorsDataList;
  

 final  List<Doctors?>? _doctorsDataList;
 List<Doctors?>? get doctorsDataList {
  final value = _doctorsDataList;
  if (value == null) return null;
  if (_doctorsDataList is EqualUnmodifiableListView) return _doctorsDataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsDataSuccessCopyWith<DoctorsDataSuccess> get copyWith => _$DoctorsDataSuccessCopyWithImpl<DoctorsDataSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsDataSuccess&&const DeepCollectionEquality().equals(other._doctorsDataList, _doctorsDataList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_doctorsDataList));

@override
String toString() {
  return 'HomeState.doctorsDataSuccess(doctorsDataList: $doctorsDataList)';
}


}

/// @nodoc
abstract mixin class $DoctorsDataSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $DoctorsDataSuccessCopyWith(DoctorsDataSuccess value, $Res Function(DoctorsDataSuccess) _then) = _$DoctorsDataSuccessCopyWithImpl;
@useResult
$Res call({
 List<Doctors?>? doctorsDataList
});




}
/// @nodoc
class _$DoctorsDataSuccessCopyWithImpl<$Res>
    implements $DoctorsDataSuccessCopyWith<$Res> {
  _$DoctorsDataSuccessCopyWithImpl(this._self, this._then);

  final DoctorsDataSuccess _self;
  final $Res Function(DoctorsDataSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? doctorsDataList = freezed,}) {
  return _then(DoctorsDataSuccess(
freezed == doctorsDataList ? _self._doctorsDataList : doctorsDataList // ignore: cast_nullable_to_non_nullable
as List<Doctors?>?,
  ));
}


}

/// @nodoc


class DoctorsDataError implements HomeState {
  const DoctorsDataError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsDataErrorCopyWith<DoctorsDataError> get copyWith => _$DoctorsDataErrorCopyWithImpl<DoctorsDataError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsDataError&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'HomeState.doctorsDataError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $DoctorsDataErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $DoctorsDataErrorCopyWith(DoctorsDataError value, $Res Function(DoctorsDataError) _then) = _$DoctorsDataErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$DoctorsDataErrorCopyWithImpl<$Res>
    implements $DoctorsDataErrorCopyWith<$Res> {
  _$DoctorsDataErrorCopyWithImpl(this._self, this._then);

  final DoctorsDataError _self;
  final $Res Function(DoctorsDataError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(DoctorsDataError(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
