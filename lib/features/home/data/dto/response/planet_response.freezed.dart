// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'planet_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlanetResponse {
  @JsonKey(name: "msg")
  String get message;
  @JsonKey(name: "data")
  List<Planet> get data;

  /// Create a copy of PlanetResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlanetResponseCopyWith<PlanetResponse> get copyWith =>
      _$PlanetResponseCopyWithImpl<PlanetResponse>(
          this as PlanetResponse, _$identity);

  /// Serializes this PlanetResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlanetResponse &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'PlanetResponse(message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $PlanetResponseCopyWith<$Res> {
  factory $PlanetResponseCopyWith(
          PlanetResponse value, $Res Function(PlanetResponse) _then) =
      _$PlanetResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "msg") String message,
      @JsonKey(name: "data") List<Planet> data});
}

/// @nodoc
class _$PlanetResponseCopyWithImpl<$Res>
    implements $PlanetResponseCopyWith<$Res> {
  _$PlanetResponseCopyWithImpl(this._self, this._then);

  final PlanetResponse _self;
  final $Res Function(PlanetResponse) _then;

  /// Create a copy of PlanetResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Planet>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PlanetResponse implements PlanetResponse {
  const _PlanetResponse(
      {@JsonKey(name: "msg") required this.message,
      @JsonKey(name: "data") required final List<Planet> data})
      : _data = data;
  factory _PlanetResponse.fromJson(Map<String, dynamic> json) =>
      _$PlanetResponseFromJson(json);

  @override
  @JsonKey(name: "msg")
  final String message;
  final List<Planet> _data;
  @override
  @JsonKey(name: "data")
  List<Planet> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// Create a copy of PlanetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlanetResponseCopyWith<_PlanetResponse> get copyWith =>
      __$PlanetResponseCopyWithImpl<_PlanetResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlanetResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlanetResponse &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'PlanetResponse(message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$PlanetResponseCopyWith<$Res>
    implements $PlanetResponseCopyWith<$Res> {
  factory _$PlanetResponseCopyWith(
          _PlanetResponse value, $Res Function(_PlanetResponse) _then) =
      __$PlanetResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "msg") String message,
      @JsonKey(name: "data") List<Planet> data});
}

/// @nodoc
class __$PlanetResponseCopyWithImpl<$Res>
    implements _$PlanetResponseCopyWith<$Res> {
  __$PlanetResponseCopyWithImpl(this._self, this._then);

  final _PlanetResponse _self;
  final $Res Function(_PlanetResponse) _then;

  /// Create a copy of PlanetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_PlanetResponse(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Planet>,
    ));
  }
}

/// @nodoc
mixin _$Planet {
  @JsonKey(name: "name")
  String get name;
  @JsonKey(name: "image")
  String get image;
  @JsonKey(name: "description")
  String get description;

  /// Create a copy of Planet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlanetCopyWith<Planet> get copyWith =>
      _$PlanetCopyWithImpl<Planet>(this as Planet, _$identity);

  /// Serializes this Planet to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Planet &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, image, description);

  @override
  String toString() {
    return 'Planet(name: $name, image: $image, description: $description)';
  }
}

/// @nodoc
abstract mixin class $PlanetCopyWith<$Res> {
  factory $PlanetCopyWith(Planet value, $Res Function(Planet) _then) =
      _$PlanetCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class _$PlanetCopyWithImpl<$Res> implements $PlanetCopyWith<$Res> {
  _$PlanetCopyWithImpl(this._self, this._then);

  final Planet _self;
  final $Res Function(Planet) _then;

  /// Create a copy of Planet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Planet implements Planet {
  const _Planet(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "description") required this.description});
  factory _Planet.fromJson(Map<String, dynamic> json) => _$PlanetFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "image")
  final String image;
  @override
  @JsonKey(name: "description")
  final String description;

  /// Create a copy of Planet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlanetCopyWith<_Planet> get copyWith =>
      __$PlanetCopyWithImpl<_Planet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlanetToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Planet &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, image, description);

  @override
  String toString() {
    return 'Planet(name: $name, image: $image, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$PlanetCopyWith<$Res> implements $PlanetCopyWith<$Res> {
  factory _$PlanetCopyWith(_Planet value, $Res Function(_Planet) _then) =
      __$PlanetCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class __$PlanetCopyWithImpl<$Res> implements _$PlanetCopyWith<$Res> {
  __$PlanetCopyWithImpl(this._self, this._then);

  final _Planet _self;
  final $Res Function(_Planet) _then;

  /// Create a copy of Planet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_Planet(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
