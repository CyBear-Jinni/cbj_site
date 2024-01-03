// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewHomePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(double scrollPosition, int currentPage)
        scrollPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(double scrollPosition, int currentPage)? scrollPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(double scrollPosition, int currentPage)? scrollPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(ScrollPage value) scrollPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(ScrollPage value)? scrollPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(ScrollPage value)? scrollPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewHomePageEventCopyWith<$Res> {
  factory $NewHomePageEventCopyWith(
          NewHomePageEvent value, $Res Function(NewHomePageEvent) then) =
      _$NewHomePageEventCopyWithImpl<$Res, NewHomePageEvent>;
}

/// @nodoc
class _$NewHomePageEventCopyWithImpl<$Res, $Val extends NewHomePageEvent>
    implements $NewHomePageEventCopyWith<$Res> {
  _$NewHomePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$NewHomePageEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializedImpl implements Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'NewHomePageEvent.initialized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(double scrollPosition, int currentPage)
        scrollPage,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(double scrollPosition, int currentPage)? scrollPage,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(double scrollPosition, int currentPage)? scrollPage,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(ScrollPage value) scrollPage,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(ScrollPage value)? scrollPage,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(ScrollPage value)? scrollPage,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements NewHomePageEvent {
  const factory Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$ScrollPageImplCopyWith<$Res> {
  factory _$$ScrollPageImplCopyWith(
          _$ScrollPageImpl value, $Res Function(_$ScrollPageImpl) then) =
      __$$ScrollPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double scrollPosition, int currentPage});
}

/// @nodoc
class __$$ScrollPageImplCopyWithImpl<$Res>
    extends _$NewHomePageEventCopyWithImpl<$Res, _$ScrollPageImpl>
    implements _$$ScrollPageImplCopyWith<$Res> {
  __$$ScrollPageImplCopyWithImpl(
      _$ScrollPageImpl _value, $Res Function(_$ScrollPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollPosition = null,
    Object? currentPage = null,
  }) {
    return _then(_$ScrollPageImpl(
      null == scrollPosition
          ? _value.scrollPosition
          : scrollPosition // ignore: cast_nullable_to_non_nullable
              as double,
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScrollPageImpl implements ScrollPage {
  const _$ScrollPageImpl(this.scrollPosition, this.currentPage);

  @override
  final double scrollPosition;
  @override
  final int currentPage;

  @override
  String toString() {
    return 'NewHomePageEvent.scrollPage(scrollPosition: $scrollPosition, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrollPageImpl &&
            (identical(other.scrollPosition, scrollPosition) ||
                other.scrollPosition == scrollPosition) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scrollPosition, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrollPageImplCopyWith<_$ScrollPageImpl> get copyWith =>
      __$$ScrollPageImplCopyWithImpl<_$ScrollPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(double scrollPosition, int currentPage)
        scrollPage,
  }) {
    return scrollPage(scrollPosition, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(double scrollPosition, int currentPage)? scrollPage,
  }) {
    return scrollPage?.call(scrollPosition, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(double scrollPosition, int currentPage)? scrollPage,
    required TResult orElse(),
  }) {
    if (scrollPage != null) {
      return scrollPage(scrollPosition, currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(ScrollPage value) scrollPage,
  }) {
    return scrollPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(ScrollPage value)? scrollPage,
  }) {
    return scrollPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(ScrollPage value)? scrollPage,
    required TResult orElse(),
  }) {
    if (scrollPage != null) {
      return scrollPage(this);
    }
    return orElse();
  }
}

abstract class ScrollPage implements NewHomePageEvent {
  const factory ScrollPage(final double scrollPosition, final int currentPage) =
      _$ScrollPageImpl;

  double get scrollPosition;
  int get currentPage;
  @JsonKey(ignore: true)
  _$$ScrollPageImplCopyWith<_$ScrollPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewHomePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(double scrollPosition, int currentPage) loading,
    required TResult Function(double scrollPosition, int currentPage) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(double scrollPosition, int currentPage)? loading,
    TResult? Function(double scrollPosition, int currentPage)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(double scrollPosition, int currentPage)? loading,
    TResult Function(double scrollPosition, int currentPage)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NewHomePageState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NewHomePageState value)? $default, {
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NewHomePageState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewHomePageStateCopyWith<$Res> {
  factory $NewHomePageStateCopyWith(
          NewHomePageState value, $Res Function(NewHomePageState) then) =
      _$NewHomePageStateCopyWithImpl<$Res, NewHomePageState>;
}

/// @nodoc
class _$NewHomePageStateCopyWithImpl<$Res, $Val extends NewHomePageState>
    implements $NewHomePageStateCopyWith<$Res> {
  _$NewHomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewHomePageStateImplCopyWith<$Res> {
  factory _$$NewHomePageStateImplCopyWith(_$NewHomePageStateImpl value,
          $Res Function(_$NewHomePageStateImpl) then) =
      __$$NewHomePageStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewHomePageStateImplCopyWithImpl<$Res>
    extends _$NewHomePageStateCopyWithImpl<$Res, _$NewHomePageStateImpl>
    implements _$$NewHomePageStateImplCopyWith<$Res> {
  __$$NewHomePageStateImplCopyWithImpl(_$NewHomePageStateImpl _value,
      $Res Function(_$NewHomePageStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewHomePageStateImpl implements _NewHomePageState {
  const _$NewHomePageStateImpl();

  @override
  String toString() {
    return 'NewHomePageState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewHomePageStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(double scrollPosition, int currentPage) loading,
    required TResult Function(double scrollPosition, int currentPage) loaded,
    required TResult Function() error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(double scrollPosition, int currentPage)? loading,
    TResult? Function(double scrollPosition, int currentPage)? loaded,
    TResult? Function()? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(double scrollPosition, int currentPage)? loading,
    TResult Function(double scrollPosition, int currentPage)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NewHomePageState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NewHomePageState value)? $default, {
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NewHomePageState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _NewHomePageState implements NewHomePageState {
  const factory _NewHomePageState() = _$NewHomePageStateImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double scrollPosition, int currentPage});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$NewHomePageStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollPosition = null,
    Object? currentPage = null,
  }) {
    return _then(_$LoadingImpl(
      null == scrollPosition
          ? _value.scrollPosition
          : scrollPosition // ignore: cast_nullable_to_non_nullable
              as double,
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl(this.scrollPosition, this.currentPage);

  @override
  final double scrollPosition;
  @override
  final int currentPage;

  @override
  String toString() {
    return 'NewHomePageState.loading(scrollPosition: $scrollPosition, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.scrollPosition, scrollPosition) ||
                other.scrollPosition == scrollPosition) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scrollPosition, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(double scrollPosition, int currentPage) loading,
    required TResult Function(double scrollPosition, int currentPage) loaded,
    required TResult Function() error,
  }) {
    return loading(scrollPosition, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(double scrollPosition, int currentPage)? loading,
    TResult? Function(double scrollPosition, int currentPage)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call(scrollPosition, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(double scrollPosition, int currentPage)? loading,
    TResult Function(double scrollPosition, int currentPage)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(scrollPosition, currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NewHomePageState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NewHomePageState value)? $default, {
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NewHomePageState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements NewHomePageState {
  const factory Loading(final double scrollPosition, final int currentPage) =
      _$LoadingImpl;

  double get scrollPosition;
  int get currentPage;
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double scrollPosition, int currentPage});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$NewHomePageStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollPosition = null,
    Object? currentPage = null,
  }) {
    return _then(_$LoadedImpl(
      null == scrollPosition
          ? _value.scrollPosition
          : scrollPosition // ignore: cast_nullable_to_non_nullable
              as double,
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(this.scrollPosition, this.currentPage);

  @override
  final double scrollPosition;
  @override
  final int currentPage;

  @override
  String toString() {
    return 'NewHomePageState.loaded(scrollPosition: $scrollPosition, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.scrollPosition, scrollPosition) ||
                other.scrollPosition == scrollPosition) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scrollPosition, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(double scrollPosition, int currentPage) loading,
    required TResult Function(double scrollPosition, int currentPage) loaded,
    required TResult Function() error,
  }) {
    return loaded(scrollPosition, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(double scrollPosition, int currentPage)? loading,
    TResult? Function(double scrollPosition, int currentPage)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(scrollPosition, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(double scrollPosition, int currentPage)? loading,
    TResult Function(double scrollPosition, int currentPage)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(scrollPosition, currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NewHomePageState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NewHomePageState value)? $default, {
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NewHomePageState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements NewHomePageState {
  const factory Loaded(final double scrollPosition, final int currentPage) =
      _$LoadedImpl;

  double get scrollPosition;
  int get currentPage;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$NewHomePageStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'NewHomePageState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(double scrollPosition, int currentPage) loading,
    required TResult Function(double scrollPosition, int currentPage) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(double scrollPosition, int currentPage)? loading,
    TResult? Function(double scrollPosition, int currentPage)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(double scrollPosition, int currentPage)? loading,
    TResult Function(double scrollPosition, int currentPage)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NewHomePageState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NewHomePageState value)? $default, {
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NewHomePageState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements NewHomePageState {
  const factory Error() = _$ErrorImpl;
}
