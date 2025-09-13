// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'featured_news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeaturedNewsModel {

 String? get imageUrl; String? get source; String? get headline; bool? get isBreakingNews;
/// Create a copy of FeaturedNewsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeaturedNewsModelCopyWith<FeaturedNewsModel> get copyWith => _$FeaturedNewsModelCopyWithImpl<FeaturedNewsModel>(this as FeaturedNewsModel, _$identity);

  /// Serializes this FeaturedNewsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeaturedNewsModel&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.source, source) || other.source == source)&&(identical(other.headline, headline) || other.headline == headline)&&(identical(other.isBreakingNews, isBreakingNews) || other.isBreakingNews == isBreakingNews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,source,headline,isBreakingNews);

@override
String toString() {
  return 'FeaturedNewsModel(imageUrl: $imageUrl, source: $source, headline: $headline, isBreakingNews: $isBreakingNews)';
}


}

/// @nodoc
abstract mixin class $FeaturedNewsModelCopyWith<$Res>  {
  factory $FeaturedNewsModelCopyWith(FeaturedNewsModel value, $Res Function(FeaturedNewsModel) _then) = _$FeaturedNewsModelCopyWithImpl;
@useResult
$Res call({
 String? imageUrl, String? source, String? headline, bool? isBreakingNews
});




}
/// @nodoc
class _$FeaturedNewsModelCopyWithImpl<$Res>
    implements $FeaturedNewsModelCopyWith<$Res> {
  _$FeaturedNewsModelCopyWithImpl(this._self, this._then);

  final FeaturedNewsModel _self;
  final $Res Function(FeaturedNewsModel) _then;

/// Create a copy of FeaturedNewsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = freezed,Object? source = freezed,Object? headline = freezed,Object? isBreakingNews = freezed,}) {
  return _then(_self.copyWith(
imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,headline: freezed == headline ? _self.headline : headline // ignore: cast_nullable_to_non_nullable
as String?,isBreakingNews: freezed == isBreakingNews ? _self.isBreakingNews : isBreakingNews // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [FeaturedNewsModel].
extension FeaturedNewsModelPatterns on FeaturedNewsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeaturedNewsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeaturedNewsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeaturedNewsModel value)  $default,){
final _that = this;
switch (_that) {
case _FeaturedNewsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeaturedNewsModel value)?  $default,){
final _that = this;
switch (_that) {
case _FeaturedNewsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? imageUrl,  String? source,  String? headline,  bool? isBreakingNews)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeaturedNewsModel() when $default != null:
return $default(_that.imageUrl,_that.source,_that.headline,_that.isBreakingNews);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? imageUrl,  String? source,  String? headline,  bool? isBreakingNews)  $default,) {final _that = this;
switch (_that) {
case _FeaturedNewsModel():
return $default(_that.imageUrl,_that.source,_that.headline,_that.isBreakingNews);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? imageUrl,  String? source,  String? headline,  bool? isBreakingNews)?  $default,) {final _that = this;
switch (_that) {
case _FeaturedNewsModel() when $default != null:
return $default(_that.imageUrl,_that.source,_that.headline,_that.isBreakingNews);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeaturedNewsModel implements FeaturedNewsModel {
  const _FeaturedNewsModel({this.imageUrl, this.source, this.headline, this.isBreakingNews = false});
  factory _FeaturedNewsModel.fromJson(Map<String, dynamic> json) => _$FeaturedNewsModelFromJson(json);

@override final  String? imageUrl;
@override final  String? source;
@override final  String? headline;
@override@JsonKey() final  bool? isBreakingNews;

/// Create a copy of FeaturedNewsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeaturedNewsModelCopyWith<_FeaturedNewsModel> get copyWith => __$FeaturedNewsModelCopyWithImpl<_FeaturedNewsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeaturedNewsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeaturedNewsModel&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.source, source) || other.source == source)&&(identical(other.headline, headline) || other.headline == headline)&&(identical(other.isBreakingNews, isBreakingNews) || other.isBreakingNews == isBreakingNews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,source,headline,isBreakingNews);

@override
String toString() {
  return 'FeaturedNewsModel(imageUrl: $imageUrl, source: $source, headline: $headline, isBreakingNews: $isBreakingNews)';
}


}

/// @nodoc
abstract mixin class _$FeaturedNewsModelCopyWith<$Res> implements $FeaturedNewsModelCopyWith<$Res> {
  factory _$FeaturedNewsModelCopyWith(_FeaturedNewsModel value, $Res Function(_FeaturedNewsModel) _then) = __$FeaturedNewsModelCopyWithImpl;
@override @useResult
$Res call({
 String? imageUrl, String? source, String? headline, bool? isBreakingNews
});




}
/// @nodoc
class __$FeaturedNewsModelCopyWithImpl<$Res>
    implements _$FeaturedNewsModelCopyWith<$Res> {
  __$FeaturedNewsModelCopyWithImpl(this._self, this._then);

  final _FeaturedNewsModel _self;
  final $Res Function(_FeaturedNewsModel) _then;

/// Create a copy of FeaturedNewsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = freezed,Object? source = freezed,Object? headline = freezed,Object? isBreakingNews = freezed,}) {
  return _then(_FeaturedNewsModel(
imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,headline: freezed == headline ? _self.headline : headline // ignore: cast_nullable_to_non_nullable
as String?,isBreakingNews: freezed == isBreakingNews ? _self.isBreakingNews : isBreakingNews // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
