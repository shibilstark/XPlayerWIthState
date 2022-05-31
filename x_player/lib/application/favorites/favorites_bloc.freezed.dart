// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(FavoritesModel model) addToFav,
    required TResult Function(FavoritesModel model, int index) removeFromFav,
    required TResult Function() getAllFavoriteVideos,
    required TResult Function() clearAllFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FavoritesModel model)? addToFav,
    TResult Function(FavoritesModel model, int index)? removeFromFav,
    TResult Function()? getAllFavoriteVideos,
    TResult Function()? clearAllFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FavoritesModel model)? addToFav,
    TResult Function(FavoritesModel model, int index)? removeFromFav,
    TResult Function()? getAllFavoriteVideos,
    TResult Function()? clearAllFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddToFav value) addToFav,
    required TResult Function(removeFromFav value) removeFromFav,
    required TResult Function(GetAllFavoriteVideos value) getAllFavoriteVideos,
    required TResult Function(ClearAllFavorites value) clearAllFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddToFav value)? addToFav,
    TResult Function(removeFromFav value)? removeFromFav,
    TResult Function(GetAllFavoriteVideos value)? getAllFavoriteVideos,
    TResult Function(ClearAllFavorites value)? clearAllFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddToFav value)? addToFav,
    TResult Function(removeFromFav value)? removeFromFav,
    TResult Function(GetAllFavoriteVideos value)? getAllFavoriteVideos,
    TResult Function(ClearAllFavorites value)? clearAllFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  final FavoritesEvent _value;
  // ignore: unused_field
  final $Res Function(FavoritesEvent) _then;
}

/// @nodoc
abstract class _$$InitializeCopyWith<$Res> {
  factory _$$InitializeCopyWith(
          _$Initialize value, $Res Function(_$Initialize) then) =
      __$$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res>
    implements _$$InitializeCopyWith<$Res> {
  __$$InitializeCopyWithImpl(
      _$Initialize _value, $Res Function(_$Initialize) _then)
      : super(_value, (v) => _then(v as _$Initialize));

  @override
  _$Initialize get _value => super._value as _$Initialize;
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'FavoritesEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(FavoritesModel model) addToFav,
    required TResult Function(FavoritesModel model, int index) removeFromFav,
    required TResult Function() getAllFavoriteVideos,
    required TResult Function() clearAllFavorites,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FavoritesModel model)? addToFav,
    TResult Function(FavoritesModel model, int index)? removeFromFav,
    TResult Function()? getAllFavoriteVideos,
    TResult Function()? clearAllFavorites,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FavoritesModel model)? addToFav,
    TResult Function(FavoritesModel model, int index)? removeFromFav,
    TResult Function()? getAllFavoriteVideos,
    TResult Function()? clearAllFavorites,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddToFav value) addToFav,
    required TResult Function(removeFromFav value) removeFromFav,
    required TResult Function(GetAllFavoriteVideos value) getAllFavoriteVideos,
    required TResult Function(ClearAllFavorites value) clearAllFavorites,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddToFav value)? addToFav,
    TResult Function(removeFromFav value)? removeFromFav,
    TResult Function(GetAllFavoriteVideos value)? getAllFavoriteVideos,
    TResult Function(ClearAllFavorites value)? clearAllFavorites,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddToFav value)? addToFav,
    TResult Function(removeFromFav value)? removeFromFav,
    TResult Function(GetAllFavoriteVideos value)? getAllFavoriteVideos,
    TResult Function(ClearAllFavorites value)? clearAllFavorites,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements FavoritesEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class _$$AddToFavCopyWith<$Res> {
  factory _$$AddToFavCopyWith(
          _$AddToFav value, $Res Function(_$AddToFav) then) =
      __$$AddToFavCopyWithImpl<$Res>;
  $Res call({FavoritesModel model});
}

/// @nodoc
class __$$AddToFavCopyWithImpl<$Res> extends _$FavoritesEventCopyWithImpl<$Res>
    implements _$$AddToFavCopyWith<$Res> {
  __$$AddToFavCopyWithImpl(_$AddToFav _value, $Res Function(_$AddToFav) _then)
      : super(_value, (v) => _then(v as _$AddToFav));

  @override
  _$AddToFav get _value => super._value as _$AddToFav;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$AddToFav(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FavoritesModel,
    ));
  }
}

/// @nodoc

class _$AddToFav implements AddToFav {
  const _$AddToFav({required this.model});

  @override
  final FavoritesModel model;

  @override
  String toString() {
    return 'FavoritesEvent.addToFav(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToFav &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$AddToFavCopyWith<_$AddToFav> get copyWith =>
      __$$AddToFavCopyWithImpl<_$AddToFav>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(FavoritesModel model) addToFav,
    required TResult Function(FavoritesModel model, int index) removeFromFav,
    required TResult Function() getAllFavoriteVideos,
    required TResult Function() clearAllFavorites,
  }) {
    return addToFav(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FavoritesModel model)? addToFav,
    TResult Function(FavoritesModel model, int index)? removeFromFav,
    TResult Function()? getAllFavoriteVideos,
    TResult Function()? clearAllFavorites,
  }) {
    return addToFav?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FavoritesModel model)? addToFav,
    TResult Function(FavoritesModel model, int index)? removeFromFav,
    TResult Function()? getAllFavoriteVideos,
    TResult Function()? clearAllFavorites,
    required TResult orElse(),
  }) {
    if (addToFav != null) {
      return addToFav(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddToFav value) addToFav,
    required TResult Function(removeFromFav value) removeFromFav,
    required TResult Function(GetAllFavoriteVideos value) getAllFavoriteVideos,
    required TResult Function(ClearAllFavorites value) clearAllFavorites,
  }) {
    return addToFav(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddToFav value)? addToFav,
    TResult Function(removeFromFav value)? removeFromFav,
    TResult Function(GetAllFavoriteVideos value)? getAllFavoriteVideos,
    TResult Function(ClearAllFavorites value)? clearAllFavorites,
  }) {
    return addToFav?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddToFav value)? addToFav,
    TResult Function(removeFromFav value)? removeFromFav,
    TResult Function(GetAllFavoriteVideos value)? getAllFavoriteVideos,
    TResult Function(ClearAllFavorites value)? clearAllFavorites,
    required TResult orElse(),
  }) {
    if (addToFav != null) {
      return addToFav(this);
    }
    return orElse();
  }
}

abstract class AddToFav implements FavoritesEvent {
  const factory AddToFav({required final FavoritesModel model}) = _$AddToFav;

  FavoritesModel get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AddToFavCopyWith<_$AddToFav> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$removeFromFavCopyWith<$Res> {
  factory _$$removeFromFavCopyWith(
          _$removeFromFav value, $Res Function(_$removeFromFav) then) =
      __$$removeFromFavCopyWithImpl<$Res>;
  $Res call({FavoritesModel model, int index});
}

/// @nodoc
class __$$removeFromFavCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res>
    implements _$$removeFromFavCopyWith<$Res> {
  __$$removeFromFavCopyWithImpl(
      _$removeFromFav _value, $Res Function(_$removeFromFav) _then)
      : super(_value, (v) => _then(v as _$removeFromFav));

  @override
  _$removeFromFav get _value => super._value as _$removeFromFav;

  @override
  $Res call({
    Object? model = freezed,
    Object? index = freezed,
  }) {
    return _then(_$removeFromFav(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FavoritesModel,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$removeFromFav implements removeFromFav {
  const _$removeFromFav({required this.model, required this.index});

  @override
  final FavoritesModel model;
  @override
  final int index;

  @override
  String toString() {
    return 'FavoritesEvent.removeFromFav(model: $model, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$removeFromFav &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$removeFromFavCopyWith<_$removeFromFav> get copyWith =>
      __$$removeFromFavCopyWithImpl<_$removeFromFav>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(FavoritesModel model) addToFav,
    required TResult Function(FavoritesModel model, int index) removeFromFav,
    required TResult Function() getAllFavoriteVideos,
    required TResult Function() clearAllFavorites,
  }) {
    return removeFromFav(model, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FavoritesModel model)? addToFav,
    TResult Function(FavoritesModel model, int index)? removeFromFav,
    TResult Function()? getAllFavoriteVideos,
    TResult Function()? clearAllFavorites,
  }) {
    return removeFromFav?.call(model, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FavoritesModel model)? addToFav,
    TResult Function(FavoritesModel model, int index)? removeFromFav,
    TResult Function()? getAllFavoriteVideos,
    TResult Function()? clearAllFavorites,
    required TResult orElse(),
  }) {
    if (removeFromFav != null) {
      return removeFromFav(model, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddToFav value) addToFav,
    required TResult Function(removeFromFav value) removeFromFav,
    required TResult Function(GetAllFavoriteVideos value) getAllFavoriteVideos,
    required TResult Function(ClearAllFavorites value) clearAllFavorites,
  }) {
    return removeFromFav(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddToFav value)? addToFav,
    TResult Function(removeFromFav value)? removeFromFav,
    TResult Function(GetAllFavoriteVideos value)? getAllFavoriteVideos,
    TResult Function(ClearAllFavorites value)? clearAllFavorites,
  }) {
    return removeFromFav?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddToFav value)? addToFav,
    TResult Function(removeFromFav value)? removeFromFav,
    TResult Function(GetAllFavoriteVideos value)? getAllFavoriteVideos,
    TResult Function(ClearAllFavorites value)? clearAllFavorites,
    required TResult orElse(),
  }) {
    if (removeFromFav != null) {
      return removeFromFav(this);
    }
    return orElse();
  }
}

abstract class removeFromFav implements FavoritesEvent {
  const factory removeFromFav(
      {required final FavoritesModel model,
      required final int index}) = _$removeFromFav;

  FavoritesModel get model => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$removeFromFavCopyWith<_$removeFromFav> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllFavoriteVideosCopyWith<$Res> {
  factory _$$GetAllFavoriteVideosCopyWith(_$GetAllFavoriteVideos value,
          $Res Function(_$GetAllFavoriteVideos) then) =
      __$$GetAllFavoriteVideosCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllFavoriteVideosCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res>
    implements _$$GetAllFavoriteVideosCopyWith<$Res> {
  __$$GetAllFavoriteVideosCopyWithImpl(_$GetAllFavoriteVideos _value,
      $Res Function(_$GetAllFavoriteVideos) _then)
      : super(_value, (v) => _then(v as _$GetAllFavoriteVideos));

  @override
  _$GetAllFavoriteVideos get _value => super._value as _$GetAllFavoriteVideos;
}

/// @nodoc

class _$GetAllFavoriteVideos implements GetAllFavoriteVideos {
  const _$GetAllFavoriteVideos();

  @override
  String toString() {
    return 'FavoritesEvent.getAllFavoriteVideos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllFavoriteVideos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(FavoritesModel model) addToFav,
    required TResult Function(FavoritesModel model, int index) removeFromFav,
    required TResult Function() getAllFavoriteVideos,
    required TResult Function() clearAllFavorites,
  }) {
    return getAllFavoriteVideos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FavoritesModel model)? addToFav,
    TResult Function(FavoritesModel model, int index)? removeFromFav,
    TResult Function()? getAllFavoriteVideos,
    TResult Function()? clearAllFavorites,
  }) {
    return getAllFavoriteVideos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FavoritesModel model)? addToFav,
    TResult Function(FavoritesModel model, int index)? removeFromFav,
    TResult Function()? getAllFavoriteVideos,
    TResult Function()? clearAllFavorites,
    required TResult orElse(),
  }) {
    if (getAllFavoriteVideos != null) {
      return getAllFavoriteVideos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddToFav value) addToFav,
    required TResult Function(removeFromFav value) removeFromFav,
    required TResult Function(GetAllFavoriteVideos value) getAllFavoriteVideos,
    required TResult Function(ClearAllFavorites value) clearAllFavorites,
  }) {
    return getAllFavoriteVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddToFav value)? addToFav,
    TResult Function(removeFromFav value)? removeFromFav,
    TResult Function(GetAllFavoriteVideos value)? getAllFavoriteVideos,
    TResult Function(ClearAllFavorites value)? clearAllFavorites,
  }) {
    return getAllFavoriteVideos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddToFav value)? addToFav,
    TResult Function(removeFromFav value)? removeFromFav,
    TResult Function(GetAllFavoriteVideos value)? getAllFavoriteVideos,
    TResult Function(ClearAllFavorites value)? clearAllFavorites,
    required TResult orElse(),
  }) {
    if (getAllFavoriteVideos != null) {
      return getAllFavoriteVideos(this);
    }
    return orElse();
  }
}

abstract class GetAllFavoriteVideos implements FavoritesEvent {
  const factory GetAllFavoriteVideos() = _$GetAllFavoriteVideos;
}

/// @nodoc
abstract class _$$ClearAllFavoritesCopyWith<$Res> {
  factory _$$ClearAllFavoritesCopyWith(
          _$ClearAllFavorites value, $Res Function(_$ClearAllFavorites) then) =
      __$$ClearAllFavoritesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAllFavoritesCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res>
    implements _$$ClearAllFavoritesCopyWith<$Res> {
  __$$ClearAllFavoritesCopyWithImpl(
      _$ClearAllFavorites _value, $Res Function(_$ClearAllFavorites) _then)
      : super(_value, (v) => _then(v as _$ClearAllFavorites));

  @override
  _$ClearAllFavorites get _value => super._value as _$ClearAllFavorites;
}

/// @nodoc

class _$ClearAllFavorites implements ClearAllFavorites {
  const _$ClearAllFavorites();

  @override
  String toString() {
    return 'FavoritesEvent.clearAllFavorites()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearAllFavorites);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(FavoritesModel model) addToFav,
    required TResult Function(FavoritesModel model, int index) removeFromFav,
    required TResult Function() getAllFavoriteVideos,
    required TResult Function() clearAllFavorites,
  }) {
    return clearAllFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FavoritesModel model)? addToFav,
    TResult Function(FavoritesModel model, int index)? removeFromFav,
    TResult Function()? getAllFavoriteVideos,
    TResult Function()? clearAllFavorites,
  }) {
    return clearAllFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(FavoritesModel model)? addToFav,
    TResult Function(FavoritesModel model, int index)? removeFromFav,
    TResult Function()? getAllFavoriteVideos,
    TResult Function()? clearAllFavorites,
    required TResult orElse(),
  }) {
    if (clearAllFavorites != null) {
      return clearAllFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddToFav value) addToFav,
    required TResult Function(removeFromFav value) removeFromFav,
    required TResult Function(GetAllFavoriteVideos value) getAllFavoriteVideos,
    required TResult Function(ClearAllFavorites value) clearAllFavorites,
  }) {
    return clearAllFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddToFav value)? addToFav,
    TResult Function(removeFromFav value)? removeFromFav,
    TResult Function(GetAllFavoriteVideos value)? getAllFavoriteVideos,
    TResult Function(ClearAllFavorites value)? clearAllFavorites,
  }) {
    return clearAllFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddToFav value)? addToFav,
    TResult Function(removeFromFav value)? removeFromFav,
    TResult Function(GetAllFavoriteVideos value)? getAllFavoriteVideos,
    TResult Function(ClearAllFavorites value)? clearAllFavorites,
    required TResult orElse(),
  }) {
    if (clearAllFavorites != null) {
      return clearAllFavorites(this);
    }
    return orElse();
  }
}

abstract class ClearAllFavorites implements FavoritesEvent {
  const factory ClearAllFavorites() = _$ClearAllFavorites;
}

/// @nodoc
mixin _$FavoritesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<FavoritesModel> get favoritesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesStateCopyWith<FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<FavoritesModel> favoritesList});
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  final FavoritesState _value;
  // ignore: unused_field
  final $Res Function(FavoritesState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? favoritesList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      favoritesList: favoritesList == freezed
          ? _value.favoritesList
          : favoritesList // ignore: cast_nullable_to_non_nullable
              as List<FavoritesModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_FavoritesStateCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$$_FavoritesStateCopyWith(
          _$_FavoritesState value, $Res Function(_$_FavoritesState) then) =
      __$$_FavoritesStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<FavoritesModel> favoritesList});
}

/// @nodoc
class __$$_FavoritesStateCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res>
    implements _$$_FavoritesStateCopyWith<$Res> {
  __$$_FavoritesStateCopyWithImpl(
      _$_FavoritesState _value, $Res Function(_$_FavoritesState) _then)
      : super(_value, (v) => _then(v as _$_FavoritesState));

  @override
  _$_FavoritesState get _value => super._value as _$_FavoritesState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? favoritesList = freezed,
  }) {
    return _then(_$_FavoritesState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      favoritesList: favoritesList == freezed
          ? _value._favoritesList
          : favoritesList // ignore: cast_nullable_to_non_nullable
              as List<FavoritesModel>,
    ));
  }
}

/// @nodoc

class _$_FavoritesState implements _FavoritesState {
  const _$_FavoritesState(
      {required this.isLoading,
      required final List<FavoritesModel> favoritesList})
      : _favoritesList = favoritesList;

  @override
  final bool isLoading;
  final List<FavoritesModel> _favoritesList;
  @override
  List<FavoritesModel> get favoritesList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoritesList);
  }

  @override
  String toString() {
    return 'FavoritesState(isLoading: $isLoading, favoritesList: $favoritesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoritesState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._favoritesList, _favoritesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_favoritesList));

  @JsonKey(ignore: true)
  @override
  _$$_FavoritesStateCopyWith<_$_FavoritesState> get copyWith =>
      __$$_FavoritesStateCopyWithImpl<_$_FavoritesState>(this, _$identity);
}

abstract class _FavoritesState implements FavoritesState {
  const factory _FavoritesState(
      {required final bool isLoading,
      required final List<FavoritesModel> favoritesList}) = _$_FavoritesState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<FavoritesModel> get favoritesList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FavoritesStateCopyWith<_$_FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}
