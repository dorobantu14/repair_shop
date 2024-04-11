// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repair_service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepairServiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitial) getRepairServices,
    required TResult Function(SortingOption sortingOption) sortRepairServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitial)? getRepairServices,
    TResult? Function(SortingOption sortingOption)? sortRepairServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitial)? getRepairServices,
    TResult Function(SortingOption sortingOption)? sortRepairServices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRepairServicesEvent value) getRepairServices,
    required TResult Function(_SortRepairServicesEvent value)
        sortRepairServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRepairServicesEvent value)? getRepairServices,
    TResult? Function(_SortRepairServicesEvent value)? sortRepairServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRepairServicesEvent value)? getRepairServices,
    TResult Function(_SortRepairServicesEvent value)? sortRepairServices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepairServiceEventCopyWith<$Res> {
  factory $RepairServiceEventCopyWith(
          RepairServiceEvent value, $Res Function(RepairServiceEvent) then) =
      _$RepairServiceEventCopyWithImpl<$Res, RepairServiceEvent>;
}

/// @nodoc
class _$RepairServiceEventCopyWithImpl<$Res, $Val extends RepairServiceEvent>
    implements $RepairServiceEventCopyWith<$Res> {
  _$RepairServiceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetRepairServicesEventImplCopyWith<$Res> {
  factory _$$GetRepairServicesEventImplCopyWith(
          _$GetRepairServicesEventImpl value,
          $Res Function(_$GetRepairServicesEventImpl) then) =
      __$$GetRepairServicesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isInitial});
}

/// @nodoc
class __$$GetRepairServicesEventImplCopyWithImpl<$Res>
    extends _$RepairServiceEventCopyWithImpl<$Res, _$GetRepairServicesEventImpl>
    implements _$$GetRepairServicesEventImplCopyWith<$Res> {
  __$$GetRepairServicesEventImplCopyWithImpl(
      _$GetRepairServicesEventImpl _value,
      $Res Function(_$GetRepairServicesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitial = null,
  }) {
    return _then(_$GetRepairServicesEventImpl(
      isInitial: null == isInitial
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetRepairServicesEventImpl implements _GetRepairServicesEvent {
  const _$GetRepairServicesEventImpl({this.isInitial = false});

  @override
  @JsonKey()
  final bool isInitial;

  @override
  String toString() {
    return 'RepairServiceEvent.getRepairServices(isInitial: $isInitial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRepairServicesEventImpl &&
            (identical(other.isInitial, isInitial) ||
                other.isInitial == isInitial));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInitial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRepairServicesEventImplCopyWith<_$GetRepairServicesEventImpl>
      get copyWith => __$$GetRepairServicesEventImplCopyWithImpl<
          _$GetRepairServicesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitial) getRepairServices,
    required TResult Function(SortingOption sortingOption) sortRepairServices,
  }) {
    return getRepairServices(isInitial);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitial)? getRepairServices,
    TResult? Function(SortingOption sortingOption)? sortRepairServices,
  }) {
    return getRepairServices?.call(isInitial);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitial)? getRepairServices,
    TResult Function(SortingOption sortingOption)? sortRepairServices,
    required TResult orElse(),
  }) {
    if (getRepairServices != null) {
      return getRepairServices(isInitial);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRepairServicesEvent value) getRepairServices,
    required TResult Function(_SortRepairServicesEvent value)
        sortRepairServices,
  }) {
    return getRepairServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRepairServicesEvent value)? getRepairServices,
    TResult? Function(_SortRepairServicesEvent value)? sortRepairServices,
  }) {
    return getRepairServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRepairServicesEvent value)? getRepairServices,
    TResult Function(_SortRepairServicesEvent value)? sortRepairServices,
    required TResult orElse(),
  }) {
    if (getRepairServices != null) {
      return getRepairServices(this);
    }
    return orElse();
  }
}

abstract class _GetRepairServicesEvent implements RepairServiceEvent {
  const factory _GetRepairServicesEvent({final bool isInitial}) =
      _$GetRepairServicesEventImpl;

  bool get isInitial;
  @JsonKey(ignore: true)
  _$$GetRepairServicesEventImplCopyWith<_$GetRepairServicesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortRepairServicesEventImplCopyWith<$Res> {
  factory _$$SortRepairServicesEventImplCopyWith(
          _$SortRepairServicesEventImpl value,
          $Res Function(_$SortRepairServicesEventImpl) then) =
      __$$SortRepairServicesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SortingOption sortingOption});
}

/// @nodoc
class __$$SortRepairServicesEventImplCopyWithImpl<$Res>
    extends _$RepairServiceEventCopyWithImpl<$Res,
        _$SortRepairServicesEventImpl>
    implements _$$SortRepairServicesEventImplCopyWith<$Res> {
  __$$SortRepairServicesEventImplCopyWithImpl(
      _$SortRepairServicesEventImpl _value,
      $Res Function(_$SortRepairServicesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortingOption = null,
  }) {
    return _then(_$SortRepairServicesEventImpl(
      sortingOption: null == sortingOption
          ? _value.sortingOption
          : sortingOption // ignore: cast_nullable_to_non_nullable
              as SortingOption,
    ));
  }
}

/// @nodoc

class _$SortRepairServicesEventImpl implements _SortRepairServicesEvent {
  const _$SortRepairServicesEventImpl({required this.sortingOption});

  @override
  final SortingOption sortingOption;

  @override
  String toString() {
    return 'RepairServiceEvent.sortRepairServices(sortingOption: $sortingOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortRepairServicesEventImpl &&
            (identical(other.sortingOption, sortingOption) ||
                other.sortingOption == sortingOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortingOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortRepairServicesEventImplCopyWith<_$SortRepairServicesEventImpl>
      get copyWith => __$$SortRepairServicesEventImplCopyWithImpl<
          _$SortRepairServicesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitial) getRepairServices,
    required TResult Function(SortingOption sortingOption) sortRepairServices,
  }) {
    return sortRepairServices(sortingOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitial)? getRepairServices,
    TResult? Function(SortingOption sortingOption)? sortRepairServices,
  }) {
    return sortRepairServices?.call(sortingOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitial)? getRepairServices,
    TResult Function(SortingOption sortingOption)? sortRepairServices,
    required TResult orElse(),
  }) {
    if (sortRepairServices != null) {
      return sortRepairServices(sortingOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRepairServicesEvent value) getRepairServices,
    required TResult Function(_SortRepairServicesEvent value)
        sortRepairServices,
  }) {
    return sortRepairServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRepairServicesEvent value)? getRepairServices,
    TResult? Function(_SortRepairServicesEvent value)? sortRepairServices,
  }) {
    return sortRepairServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRepairServicesEvent value)? getRepairServices,
    TResult Function(_SortRepairServicesEvent value)? sortRepairServices,
    required TResult orElse(),
  }) {
    if (sortRepairServices != null) {
      return sortRepairServices(this);
    }
    return orElse();
  }
}

abstract class _SortRepairServicesEvent implements RepairServiceEvent {
  const factory _SortRepairServicesEvent(
          {required final SortingOption sortingOption}) =
      _$SortRepairServicesEventImpl;

  SortingOption get sortingOption;
  @JsonKey(ignore: true)
  _$$SortRepairServicesEventImplCopyWith<_$SortRepairServicesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RepairServiceState {
  RepairServiceStatus get status => throw _privateConstructorUsedError;
  List<RepairServiceModel> get repairServices =>
      throw _privateConstructorUsedError;
  SortingOption? get selectedSortingOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepairServiceStateCopyWith<RepairServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepairServiceStateCopyWith<$Res> {
  factory $RepairServiceStateCopyWith(
          RepairServiceState value, $Res Function(RepairServiceState) then) =
      _$RepairServiceStateCopyWithImpl<$Res, RepairServiceState>;
  @useResult
  $Res call(
      {RepairServiceStatus status,
      List<RepairServiceModel> repairServices,
      SortingOption? selectedSortingOption});
}

/// @nodoc
class _$RepairServiceStateCopyWithImpl<$Res, $Val extends RepairServiceState>
    implements $RepairServiceStateCopyWith<$Res> {
  _$RepairServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? repairServices = null,
    Object? selectedSortingOption = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RepairServiceStatus,
      repairServices: null == repairServices
          ? _value.repairServices
          : repairServices // ignore: cast_nullable_to_non_nullable
              as List<RepairServiceModel>,
      selectedSortingOption: freezed == selectedSortingOption
          ? _value.selectedSortingOption
          : selectedSortingOption // ignore: cast_nullable_to_non_nullable
              as SortingOption?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepairServiceStateImplCopyWith<$Res>
    implements $RepairServiceStateCopyWith<$Res> {
  factory _$$RepairServiceStateImplCopyWith(_$RepairServiceStateImpl value,
          $Res Function(_$RepairServiceStateImpl) then) =
      __$$RepairServiceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RepairServiceStatus status,
      List<RepairServiceModel> repairServices,
      SortingOption? selectedSortingOption});
}

/// @nodoc
class __$$RepairServiceStateImplCopyWithImpl<$Res>
    extends _$RepairServiceStateCopyWithImpl<$Res, _$RepairServiceStateImpl>
    implements _$$RepairServiceStateImplCopyWith<$Res> {
  __$$RepairServiceStateImplCopyWithImpl(_$RepairServiceStateImpl _value,
      $Res Function(_$RepairServiceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? repairServices = null,
    Object? selectedSortingOption = freezed,
  }) {
    return _then(_$RepairServiceStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RepairServiceStatus,
      repairServices: null == repairServices
          ? _value._repairServices
          : repairServices // ignore: cast_nullable_to_non_nullable
              as List<RepairServiceModel>,
      selectedSortingOption: freezed == selectedSortingOption
          ? _value.selectedSortingOption
          : selectedSortingOption // ignore: cast_nullable_to_non_nullable
              as SortingOption?,
    ));
  }
}

/// @nodoc

class _$RepairServiceStateImpl implements _RepairServiceState {
  const _$RepairServiceStateImpl(
      {this.status = RepairServiceStatus.initial,
      final List<RepairServiceModel> repairServices =
          const <RepairServiceModel>[],
      this.selectedSortingOption})
      : _repairServices = repairServices;

  @override
  @JsonKey()
  final RepairServiceStatus status;
  final List<RepairServiceModel> _repairServices;
  @override
  @JsonKey()
  List<RepairServiceModel> get repairServices {
    if (_repairServices is EqualUnmodifiableListView) return _repairServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repairServices);
  }

  @override
  final SortingOption? selectedSortingOption;

  @override
  String toString() {
    return 'RepairServiceState(status: $status, repairServices: $repairServices, selectedSortingOption: $selectedSortingOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepairServiceStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._repairServices, _repairServices) &&
            (identical(other.selectedSortingOption, selectedSortingOption) ||
                other.selectedSortingOption == selectedSortingOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_repairServices),
      selectedSortingOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepairServiceStateImplCopyWith<_$RepairServiceStateImpl> get copyWith =>
      __$$RepairServiceStateImplCopyWithImpl<_$RepairServiceStateImpl>(
          this, _$identity);
}

abstract class _RepairServiceState implements RepairServiceState {
  const factory _RepairServiceState(
      {final RepairServiceStatus status,
      final List<RepairServiceModel> repairServices,
      final SortingOption? selectedSortingOption}) = _$RepairServiceStateImpl;

  @override
  RepairServiceStatus get status;
  @override
  List<RepairServiceModel> get repairServices;
  @override
  SortingOption? get selectedSortingOption;
  @override
  @JsonKey(ignore: true)
  _$$RepairServiceStateImplCopyWith<_$RepairServiceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
