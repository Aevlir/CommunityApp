// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostModel {

 ContentModel? get contentModel; CommunityNewsModel? get communityNewsModel; PostType? get postType;
/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostModelCopyWith<PostModel> get copyWith => _$PostModelCopyWithImpl<PostModel>(this as PostModel, _$identity);

  /// Serializes this PostModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostModel&&(identical(other.contentModel, contentModel) || other.contentModel == contentModel)&&(identical(other.communityNewsModel, communityNewsModel) || other.communityNewsModel == communityNewsModel)&&(identical(other.postType, postType) || other.postType == postType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contentModel,communityNewsModel,postType);

@override
String toString() {
  return 'PostModel(contentModel: $contentModel, communityNewsModel: $communityNewsModel, postType: $postType)';
}


}

/// @nodoc
abstract mixin class $PostModelCopyWith<$Res>  {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) _then) = _$PostModelCopyWithImpl;
@useResult
$Res call({
 ContentModel? contentModel, CommunityNewsModel? communityNewsModel, PostType? postType
});


$ContentModelCopyWith<$Res>? get contentModel;$CommunityNewsModelCopyWith<$Res>? get communityNewsModel;

}
/// @nodoc
class _$PostModelCopyWithImpl<$Res>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._self, this._then);

  final PostModel _self;
  final $Res Function(PostModel) _then;

/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contentModel = freezed,Object? communityNewsModel = freezed,Object? postType = freezed,}) {
  return _then(_self.copyWith(
contentModel: freezed == contentModel ? _self.contentModel : contentModel // ignore: cast_nullable_to_non_nullable
as ContentModel?,communityNewsModel: freezed == communityNewsModel ? _self.communityNewsModel : communityNewsModel // ignore: cast_nullable_to_non_nullable
as CommunityNewsModel?,postType: freezed == postType ? _self.postType : postType // ignore: cast_nullable_to_non_nullable
as PostType?,
  ));
}
/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContentModelCopyWith<$Res>? get contentModel {
    if (_self.contentModel == null) {
    return null;
  }

  return $ContentModelCopyWith<$Res>(_self.contentModel!, (value) {
    return _then(_self.copyWith(contentModel: value));
  });
}/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommunityNewsModelCopyWith<$Res>? get communityNewsModel {
    if (_self.communityNewsModel == null) {
    return null;
  }

  return $CommunityNewsModelCopyWith<$Res>(_self.communityNewsModel!, (value) {
    return _then(_self.copyWith(communityNewsModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostModel].
extension PostModelPatterns on PostModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostModel value)  $default,){
final _that = this;
switch (_that) {
case _PostModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ContentModel? contentModel,  CommunityNewsModel? communityNewsModel,  PostType? postType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostModel() when $default != null:
return $default(_that.contentModel,_that.communityNewsModel,_that.postType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ContentModel? contentModel,  CommunityNewsModel? communityNewsModel,  PostType? postType)  $default,) {final _that = this;
switch (_that) {
case _PostModel():
return $default(_that.contentModel,_that.communityNewsModel,_that.postType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ContentModel? contentModel,  CommunityNewsModel? communityNewsModel,  PostType? postType)?  $default,) {final _that = this;
switch (_that) {
case _PostModel() when $default != null:
return $default(_that.contentModel,_that.communityNewsModel,_that.postType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostModel implements PostModel {
  const _PostModel({this.contentModel, this.communityNewsModel, this.postType});
  factory _PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);

@override final  ContentModel? contentModel;
@override final  CommunityNewsModel? communityNewsModel;
@override final  PostType? postType;

/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostModelCopyWith<_PostModel> get copyWith => __$PostModelCopyWithImpl<_PostModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostModel&&(identical(other.contentModel, contentModel) || other.contentModel == contentModel)&&(identical(other.communityNewsModel, communityNewsModel) || other.communityNewsModel == communityNewsModel)&&(identical(other.postType, postType) || other.postType == postType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contentModel,communityNewsModel,postType);

@override
String toString() {
  return 'PostModel(contentModel: $contentModel, communityNewsModel: $communityNewsModel, postType: $postType)';
}


}

/// @nodoc
abstract mixin class _$PostModelCopyWith<$Res> implements $PostModelCopyWith<$Res> {
  factory _$PostModelCopyWith(_PostModel value, $Res Function(_PostModel) _then) = __$PostModelCopyWithImpl;
@override @useResult
$Res call({
 ContentModel? contentModel, CommunityNewsModel? communityNewsModel, PostType? postType
});


@override $ContentModelCopyWith<$Res>? get contentModel;@override $CommunityNewsModelCopyWith<$Res>? get communityNewsModel;

}
/// @nodoc
class __$PostModelCopyWithImpl<$Res>
    implements _$PostModelCopyWith<$Res> {
  __$PostModelCopyWithImpl(this._self, this._then);

  final _PostModel _self;
  final $Res Function(_PostModel) _then;

/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contentModel = freezed,Object? communityNewsModel = freezed,Object? postType = freezed,}) {
  return _then(_PostModel(
contentModel: freezed == contentModel ? _self.contentModel : contentModel // ignore: cast_nullable_to_non_nullable
as ContentModel?,communityNewsModel: freezed == communityNewsModel ? _self.communityNewsModel : communityNewsModel // ignore: cast_nullable_to_non_nullable
as CommunityNewsModel?,postType: freezed == postType ? _self.postType : postType // ignore: cast_nullable_to_non_nullable
as PostType?,
  ));
}

/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContentModelCopyWith<$Res>? get contentModel {
    if (_self.contentModel == null) {
    return null;
  }

  return $ContentModelCopyWith<$Res>(_self.contentModel!, (value) {
    return _then(_self.copyWith(contentModel: value));
  });
}/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommunityNewsModelCopyWith<$Res>? get communityNewsModel {
    if (_self.communityNewsModel == null) {
    return null;
  }

  return $CommunityNewsModelCopyWith<$Res>(_self.communityNewsModel!, (value) {
    return _then(_self.copyWith(communityNewsModel: value));
  });
}
}


/// @nodoc
mixin _$ContentModel {

 String? get imageUrl; String? get videoUrl; String? get source; String? get timePosted; String? get headline;
/// Create a copy of ContentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentModelCopyWith<ContentModel> get copyWith => _$ContentModelCopyWithImpl<ContentModel>(this as ContentModel, _$identity);

  /// Serializes this ContentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentModel&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.source, source) || other.source == source)&&(identical(other.timePosted, timePosted) || other.timePosted == timePosted)&&(identical(other.headline, headline) || other.headline == headline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,videoUrl,source,timePosted,headline);

@override
String toString() {
  return 'ContentModel(imageUrl: $imageUrl, videoUrl: $videoUrl, source: $source, timePosted: $timePosted, headline: $headline)';
}


}

/// @nodoc
abstract mixin class $ContentModelCopyWith<$Res>  {
  factory $ContentModelCopyWith(ContentModel value, $Res Function(ContentModel) _then) = _$ContentModelCopyWithImpl;
@useResult
$Res call({
 String? imageUrl, String? videoUrl, String? source, String? timePosted, String? headline
});




}
/// @nodoc
class _$ContentModelCopyWithImpl<$Res>
    implements $ContentModelCopyWith<$Res> {
  _$ContentModelCopyWithImpl(this._self, this._then);

  final ContentModel _self;
  final $Res Function(ContentModel) _then;

/// Create a copy of ContentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = freezed,Object? videoUrl = freezed,Object? source = freezed,Object? timePosted = freezed,Object? headline = freezed,}) {
  return _then(_self.copyWith(
imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,timePosted: freezed == timePosted ? _self.timePosted : timePosted // ignore: cast_nullable_to_non_nullable
as String?,headline: freezed == headline ? _self.headline : headline // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContentModel].
extension ContentModelPatterns on ContentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContentModel value)  $default,){
final _that = this;
switch (_that) {
case _ContentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContentModel value)?  $default,){
final _that = this;
switch (_that) {
case _ContentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? imageUrl,  String? videoUrl,  String? source,  String? timePosted,  String? headline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContentModel() when $default != null:
return $default(_that.imageUrl,_that.videoUrl,_that.source,_that.timePosted,_that.headline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? imageUrl,  String? videoUrl,  String? source,  String? timePosted,  String? headline)  $default,) {final _that = this;
switch (_that) {
case _ContentModel():
return $default(_that.imageUrl,_that.videoUrl,_that.source,_that.timePosted,_that.headline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? imageUrl,  String? videoUrl,  String? source,  String? timePosted,  String? headline)?  $default,) {final _that = this;
switch (_that) {
case _ContentModel() when $default != null:
return $default(_that.imageUrl,_that.videoUrl,_that.source,_that.timePosted,_that.headline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContentModel implements ContentModel {
  const _ContentModel({this.imageUrl, this.videoUrl, this.source, this.timePosted, this.headline});
  factory _ContentModel.fromJson(Map<String, dynamic> json) => _$ContentModelFromJson(json);

@override final  String? imageUrl;
@override final  String? videoUrl;
@override final  String? source;
@override final  String? timePosted;
@override final  String? headline;

/// Create a copy of ContentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentModelCopyWith<_ContentModel> get copyWith => __$ContentModelCopyWithImpl<_ContentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentModel&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.source, source) || other.source == source)&&(identical(other.timePosted, timePosted) || other.timePosted == timePosted)&&(identical(other.headline, headline) || other.headline == headline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,videoUrl,source,timePosted,headline);

@override
String toString() {
  return 'ContentModel(imageUrl: $imageUrl, videoUrl: $videoUrl, source: $source, timePosted: $timePosted, headline: $headline)';
}


}

/// @nodoc
abstract mixin class _$ContentModelCopyWith<$Res> implements $ContentModelCopyWith<$Res> {
  factory _$ContentModelCopyWith(_ContentModel value, $Res Function(_ContentModel) _then) = __$ContentModelCopyWithImpl;
@override @useResult
$Res call({
 String? imageUrl, String? videoUrl, String? source, String? timePosted, String? headline
});




}
/// @nodoc
class __$ContentModelCopyWithImpl<$Res>
    implements _$ContentModelCopyWith<$Res> {
  __$ContentModelCopyWithImpl(this._self, this._then);

  final _ContentModel _self;
  final $Res Function(_ContentModel) _then;

/// Create a copy of ContentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = freezed,Object? videoUrl = freezed,Object? source = freezed,Object? timePosted = freezed,Object? headline = freezed,}) {
  return _then(_ContentModel(
imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,timePosted: freezed == timePosted ? _self.timePosted : timePosted // ignore: cast_nullable_to_non_nullable
as String?,headline: freezed == headline ? _self.headline : headline // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PublicServiceModel {

 String? get imageUrl; String? get videoUrl; String? get source; String? get timePosted; String? get headline;
/// Create a copy of PublicServiceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicServiceModelCopyWith<PublicServiceModel> get copyWith => _$PublicServiceModelCopyWithImpl<PublicServiceModel>(this as PublicServiceModel, _$identity);

  /// Serializes this PublicServiceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicServiceModel&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.source, source) || other.source == source)&&(identical(other.timePosted, timePosted) || other.timePosted == timePosted)&&(identical(other.headline, headline) || other.headline == headline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,videoUrl,source,timePosted,headline);

@override
String toString() {
  return 'PublicServiceModel(imageUrl: $imageUrl, videoUrl: $videoUrl, source: $source, timePosted: $timePosted, headline: $headline)';
}


}

/// @nodoc
abstract mixin class $PublicServiceModelCopyWith<$Res>  {
  factory $PublicServiceModelCopyWith(PublicServiceModel value, $Res Function(PublicServiceModel) _then) = _$PublicServiceModelCopyWithImpl;
@useResult
$Res call({
 String? imageUrl, String? videoUrl, String? source, String? timePosted, String? headline
});




}
/// @nodoc
class _$PublicServiceModelCopyWithImpl<$Res>
    implements $PublicServiceModelCopyWith<$Res> {
  _$PublicServiceModelCopyWithImpl(this._self, this._then);

  final PublicServiceModel _self;
  final $Res Function(PublicServiceModel) _then;

/// Create a copy of PublicServiceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = freezed,Object? videoUrl = freezed,Object? source = freezed,Object? timePosted = freezed,Object? headline = freezed,}) {
  return _then(_self.copyWith(
imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,timePosted: freezed == timePosted ? _self.timePosted : timePosted // ignore: cast_nullable_to_non_nullable
as String?,headline: freezed == headline ? _self.headline : headline // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PublicServiceModel].
extension PublicServiceModelPatterns on PublicServiceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicServiceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicServiceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicServiceModel value)  $default,){
final _that = this;
switch (_that) {
case _PublicServiceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicServiceModel value)?  $default,){
final _that = this;
switch (_that) {
case _PublicServiceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? imageUrl,  String? videoUrl,  String? source,  String? timePosted,  String? headline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicServiceModel() when $default != null:
return $default(_that.imageUrl,_that.videoUrl,_that.source,_that.timePosted,_that.headline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? imageUrl,  String? videoUrl,  String? source,  String? timePosted,  String? headline)  $default,) {final _that = this;
switch (_that) {
case _PublicServiceModel():
return $default(_that.imageUrl,_that.videoUrl,_that.source,_that.timePosted,_that.headline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? imageUrl,  String? videoUrl,  String? source,  String? timePosted,  String? headline)?  $default,) {final _that = this;
switch (_that) {
case _PublicServiceModel() when $default != null:
return $default(_that.imageUrl,_that.videoUrl,_that.source,_that.timePosted,_that.headline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PublicServiceModel implements PublicServiceModel {
  const _PublicServiceModel({this.imageUrl, this.videoUrl, this.source, this.timePosted, this.headline});
  factory _PublicServiceModel.fromJson(Map<String, dynamic> json) => _$PublicServiceModelFromJson(json);

@override final  String? imageUrl;
@override final  String? videoUrl;
@override final  String? source;
@override final  String? timePosted;
@override final  String? headline;

/// Create a copy of PublicServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicServiceModelCopyWith<_PublicServiceModel> get copyWith => __$PublicServiceModelCopyWithImpl<_PublicServiceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicServiceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicServiceModel&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.source, source) || other.source == source)&&(identical(other.timePosted, timePosted) || other.timePosted == timePosted)&&(identical(other.headline, headline) || other.headline == headline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,videoUrl,source,timePosted,headline);

@override
String toString() {
  return 'PublicServiceModel(imageUrl: $imageUrl, videoUrl: $videoUrl, source: $source, timePosted: $timePosted, headline: $headline)';
}


}

/// @nodoc
abstract mixin class _$PublicServiceModelCopyWith<$Res> implements $PublicServiceModelCopyWith<$Res> {
  factory _$PublicServiceModelCopyWith(_PublicServiceModel value, $Res Function(_PublicServiceModel) _then) = __$PublicServiceModelCopyWithImpl;
@override @useResult
$Res call({
 String? imageUrl, String? videoUrl, String? source, String? timePosted, String? headline
});




}
/// @nodoc
class __$PublicServiceModelCopyWithImpl<$Res>
    implements _$PublicServiceModelCopyWith<$Res> {
  __$PublicServiceModelCopyWithImpl(this._self, this._then);

  final _PublicServiceModel _self;
  final $Res Function(_PublicServiceModel) _then;

/// Create a copy of PublicServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = freezed,Object? videoUrl = freezed,Object? source = freezed,Object? timePosted = freezed,Object? headline = freezed,}) {
  return _then(_PublicServiceModel(
imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,timePosted: freezed == timePosted ? _self.timePosted : timePosted // ignore: cast_nullable_to_non_nullable
as String?,headline: freezed == headline ? _self.headline : headline // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CommunityNewsModel {

 String? get imageUrl; String? get videoUrl; String? get timePosted; String? get caption; String? get profileImageUrl; String? get name; int? get likes; int? get comments; int? get shares;
/// Create a copy of CommunityNewsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommunityNewsModelCopyWith<CommunityNewsModel> get copyWith => _$CommunityNewsModelCopyWithImpl<CommunityNewsModel>(this as CommunityNewsModel, _$identity);

  /// Serializes this CommunityNewsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommunityNewsModel&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.timePosted, timePosted) || other.timePosted == timePosted)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.name, name) || other.name == name)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.shares, shares) || other.shares == shares));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,videoUrl,timePosted,caption,profileImageUrl,name,likes,comments,shares);

@override
String toString() {
  return 'CommunityNewsModel(imageUrl: $imageUrl, videoUrl: $videoUrl, timePosted: $timePosted, caption: $caption, profileImageUrl: $profileImageUrl, name: $name, likes: $likes, comments: $comments, shares: $shares)';
}


}

/// @nodoc
abstract mixin class $CommunityNewsModelCopyWith<$Res>  {
  factory $CommunityNewsModelCopyWith(CommunityNewsModel value, $Res Function(CommunityNewsModel) _then) = _$CommunityNewsModelCopyWithImpl;
@useResult
$Res call({
 String? imageUrl, String? videoUrl, String? timePosted, String? caption, String? profileImageUrl, String? name, int? likes, int? comments, int? shares
});




}
/// @nodoc
class _$CommunityNewsModelCopyWithImpl<$Res>
    implements $CommunityNewsModelCopyWith<$Res> {
  _$CommunityNewsModelCopyWithImpl(this._self, this._then);

  final CommunityNewsModel _self;
  final $Res Function(CommunityNewsModel) _then;

/// Create a copy of CommunityNewsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = freezed,Object? videoUrl = freezed,Object? timePosted = freezed,Object? caption = freezed,Object? profileImageUrl = freezed,Object? name = freezed,Object? likes = freezed,Object? comments = freezed,Object? shares = freezed,}) {
  return _then(_self.copyWith(
imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,timePosted: freezed == timePosted ? _self.timePosted : timePosted // ignore: cast_nullable_to_non_nullable
as String?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,likes: freezed == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as int?,shares: freezed == shares ? _self.shares : shares // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommunityNewsModel].
extension CommunityNewsModelPatterns on CommunityNewsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommunityNewsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommunityNewsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommunityNewsModel value)  $default,){
final _that = this;
switch (_that) {
case _CommunityNewsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommunityNewsModel value)?  $default,){
final _that = this;
switch (_that) {
case _CommunityNewsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? imageUrl,  String? videoUrl,  String? timePosted,  String? caption,  String? profileImageUrl,  String? name,  int? likes,  int? comments,  int? shares)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommunityNewsModel() when $default != null:
return $default(_that.imageUrl,_that.videoUrl,_that.timePosted,_that.caption,_that.profileImageUrl,_that.name,_that.likes,_that.comments,_that.shares);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? imageUrl,  String? videoUrl,  String? timePosted,  String? caption,  String? profileImageUrl,  String? name,  int? likes,  int? comments,  int? shares)  $default,) {final _that = this;
switch (_that) {
case _CommunityNewsModel():
return $default(_that.imageUrl,_that.videoUrl,_that.timePosted,_that.caption,_that.profileImageUrl,_that.name,_that.likes,_that.comments,_that.shares);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? imageUrl,  String? videoUrl,  String? timePosted,  String? caption,  String? profileImageUrl,  String? name,  int? likes,  int? comments,  int? shares)?  $default,) {final _that = this;
switch (_that) {
case _CommunityNewsModel() when $default != null:
return $default(_that.imageUrl,_that.videoUrl,_that.timePosted,_that.caption,_that.profileImageUrl,_that.name,_that.likes,_that.comments,_that.shares);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommunityNewsModel implements CommunityNewsModel {
  const _CommunityNewsModel({this.imageUrl, this.videoUrl, this.timePosted, this.caption, this.profileImageUrl, this.name, this.likes, this.comments, this.shares});
  factory _CommunityNewsModel.fromJson(Map<String, dynamic> json) => _$CommunityNewsModelFromJson(json);

@override final  String? imageUrl;
@override final  String? videoUrl;
@override final  String? timePosted;
@override final  String? caption;
@override final  String? profileImageUrl;
@override final  String? name;
@override final  int? likes;
@override final  int? comments;
@override final  int? shares;

/// Create a copy of CommunityNewsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommunityNewsModelCopyWith<_CommunityNewsModel> get copyWith => __$CommunityNewsModelCopyWithImpl<_CommunityNewsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommunityNewsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommunityNewsModel&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.timePosted, timePosted) || other.timePosted == timePosted)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.name, name) || other.name == name)&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.comments, comments) || other.comments == comments)&&(identical(other.shares, shares) || other.shares == shares));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageUrl,videoUrl,timePosted,caption,profileImageUrl,name,likes,comments,shares);

@override
String toString() {
  return 'CommunityNewsModel(imageUrl: $imageUrl, videoUrl: $videoUrl, timePosted: $timePosted, caption: $caption, profileImageUrl: $profileImageUrl, name: $name, likes: $likes, comments: $comments, shares: $shares)';
}


}

/// @nodoc
abstract mixin class _$CommunityNewsModelCopyWith<$Res> implements $CommunityNewsModelCopyWith<$Res> {
  factory _$CommunityNewsModelCopyWith(_CommunityNewsModel value, $Res Function(_CommunityNewsModel) _then) = __$CommunityNewsModelCopyWithImpl;
@override @useResult
$Res call({
 String? imageUrl, String? videoUrl, String? timePosted, String? caption, String? profileImageUrl, String? name, int? likes, int? comments, int? shares
});




}
/// @nodoc
class __$CommunityNewsModelCopyWithImpl<$Res>
    implements _$CommunityNewsModelCopyWith<$Res> {
  __$CommunityNewsModelCopyWithImpl(this._self, this._then);

  final _CommunityNewsModel _self;
  final $Res Function(_CommunityNewsModel) _then;

/// Create a copy of CommunityNewsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = freezed,Object? videoUrl = freezed,Object? timePosted = freezed,Object? caption = freezed,Object? profileImageUrl = freezed,Object? name = freezed,Object? likes = freezed,Object? comments = freezed,Object? shares = freezed,}) {
  return _then(_CommunityNewsModel(
imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,timePosted: freezed == timePosted ? _self.timePosted : timePosted // ignore: cast_nullable_to_non_nullable
as String?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,likes: freezed == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as int?,shares: freezed == shares ? _self.shares : shares // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
