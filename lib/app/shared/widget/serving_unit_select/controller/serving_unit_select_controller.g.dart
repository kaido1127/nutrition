// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serving_unit_select_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$servingUnitSelectControllerHash() =>
    r'2826ab697838f5513cedc9e69a722951035d0ae8';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ServingUnitSelectController
    extends BuildlessAutoDisposeNotifier<AltMeasure> {
  late final FoodDetailsEntity foodCommon;

  AltMeasure build(
    FoodDetailsEntity foodCommon,
  );
}

/// See also [ServingUnitSelectController].
@ProviderFor(ServingUnitSelectController)
const servingUnitSelectControllerProvider = ServingUnitSelectControllerFamily();

/// See also [ServingUnitSelectController].
class ServingUnitSelectControllerFamily extends Family<AltMeasure> {
  /// See also [ServingUnitSelectController].
  const ServingUnitSelectControllerFamily();

  /// See also [ServingUnitSelectController].
  ServingUnitSelectControllerProvider call(
    FoodDetailsEntity foodCommon,
  ) {
    return ServingUnitSelectControllerProvider(
      foodCommon,
    );
  }

  @override
  ServingUnitSelectControllerProvider getProviderOverride(
    covariant ServingUnitSelectControllerProvider provider,
  ) {
    return call(
      provider.foodCommon,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'servingUnitSelectControllerProvider';
}

/// See also [ServingUnitSelectController].
class ServingUnitSelectControllerProvider
    extends AutoDisposeNotifierProviderImpl<ServingUnitSelectController,
        AltMeasure> {
  /// See also [ServingUnitSelectController].
  ServingUnitSelectControllerProvider(
    FoodDetailsEntity foodCommon,
  ) : this._internal(
          () => ServingUnitSelectController()..foodCommon = foodCommon,
          from: servingUnitSelectControllerProvider,
          name: r'servingUnitSelectControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$servingUnitSelectControllerHash,
          dependencies: ServingUnitSelectControllerFamily._dependencies,
          allTransitiveDependencies:
              ServingUnitSelectControllerFamily._allTransitiveDependencies,
          foodCommon: foodCommon,
        );

  ServingUnitSelectControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.foodCommon,
  }) : super.internal();

  final FoodDetailsEntity foodCommon;

  @override
  AltMeasure runNotifierBuild(
    covariant ServingUnitSelectController notifier,
  ) {
    return notifier.build(
      foodCommon,
    );
  }

  @override
  Override overrideWith(ServingUnitSelectController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ServingUnitSelectControllerProvider._internal(
        () => create()..foodCommon = foodCommon,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        foodCommon: foodCommon,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ServingUnitSelectController, AltMeasure>
      createElement() {
    return _ServingUnitSelectControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ServingUnitSelectControllerProvider &&
        other.foodCommon == foodCommon;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, foodCommon.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ServingUnitSelectControllerRef
    on AutoDisposeNotifierProviderRef<AltMeasure> {
  /// The parameter `foodCommon` of this provider.
  FoodDetailsEntity get foodCommon;
}

class _ServingUnitSelectControllerProviderElement
    extends AutoDisposeNotifierProviderElement<ServingUnitSelectController,
        AltMeasure> with ServingUnitSelectControllerRef {
  _ServingUnitSelectControllerProviderElement(super.provider);

  @override
  FoodDetailsEntity get foodCommon =>
      (origin as ServingUnitSelectControllerProvider).foodCommon;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
