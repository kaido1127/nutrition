// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serving_qty_text_filed_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$servingQtyTextFiledControllerHash() =>
    r'804338b82f54d81490f8de0395631877db54c2fb';

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

abstract class _$ServingQtyTextFiledController
    extends BuildlessAutoDisposeNotifier<String> {
  late final FoodDetailsEntity foodCommon;

  String build(
    FoodDetailsEntity foodCommon,
  );
}

/// See also [ServingQtyTextFiledController].
@ProviderFor(ServingQtyTextFiledController)
const servingQtyTextFiledControllerProvider =
    ServingQtyTextFiledControllerFamily();

/// See also [ServingQtyTextFiledController].
class ServingQtyTextFiledControllerFamily extends Family<String> {
  /// See also [ServingQtyTextFiledController].
  const ServingQtyTextFiledControllerFamily();

  /// See also [ServingQtyTextFiledController].
  ServingQtyTextFiledControllerProvider call(
    FoodDetailsEntity foodCommon,
  ) {
    return ServingQtyTextFiledControllerProvider(
      foodCommon,
    );
  }

  @override
  ServingQtyTextFiledControllerProvider getProviderOverride(
    covariant ServingQtyTextFiledControllerProvider provider,
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
  String? get name => r'servingQtyTextFiledControllerProvider';
}

/// See also [ServingQtyTextFiledController].
class ServingQtyTextFiledControllerProvider
    extends AutoDisposeNotifierProviderImpl<ServingQtyTextFiledController,
        String> {
  /// See also [ServingQtyTextFiledController].
  ServingQtyTextFiledControllerProvider(
    FoodDetailsEntity foodCommon,
  ) : this._internal(
          () => ServingQtyTextFiledController()..foodCommon = foodCommon,
          from: servingQtyTextFiledControllerProvider,
          name: r'servingQtyTextFiledControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$servingQtyTextFiledControllerHash,
          dependencies: ServingQtyTextFiledControllerFamily._dependencies,
          allTransitiveDependencies:
              ServingQtyTextFiledControllerFamily._allTransitiveDependencies,
          foodCommon: foodCommon,
        );

  ServingQtyTextFiledControllerProvider._internal(
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
  String runNotifierBuild(
    covariant ServingQtyTextFiledController notifier,
  ) {
    return notifier.build(
      foodCommon,
    );
  }

  @override
  Override overrideWith(ServingQtyTextFiledController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ServingQtyTextFiledControllerProvider._internal(
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
  AutoDisposeNotifierProviderElement<ServingQtyTextFiledController, String>
      createElement() {
    return _ServingQtyTextFiledControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ServingQtyTextFiledControllerProvider &&
        other.foodCommon == foodCommon;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, foodCommon.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ServingQtyTextFiledControllerRef
    on AutoDisposeNotifierProviderRef<String> {
  /// The parameter `foodCommon` of this provider.
  FoodDetailsEntity get foodCommon;
}

class _ServingQtyTextFiledControllerProviderElement
    extends AutoDisposeNotifierProviderElement<ServingQtyTextFiledController,
        String> with ServingQtyTextFiledControllerRef {
  _ServingQtyTextFiledControllerProviderElement(super.provider);

  @override
  FoodDetailsEntity get foodCommon =>
      (origin as ServingQtyTextFiledControllerProvider).foodCommon;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
