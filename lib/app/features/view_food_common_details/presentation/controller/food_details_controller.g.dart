// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_details_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$foodDetailsControllerHash() =>
    r'0b925ef77c51ef4d419497d87d55af5a878f004b';

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

abstract class _$FoodDetailsController
    extends BuildlessAutoDisposeAsyncNotifier<FoodDetailsEntity> {
  late final Tuple2<String, DataSourceType> tuple2;

  FutureOr<FoodDetailsEntity> build(
    Tuple2<String, DataSourceType> tuple2,
  );
}

/// See also [FoodDetailsController].
@ProviderFor(FoodDetailsController)
const foodDetailsControllerProvider = FoodDetailsControllerFamily();

/// See also [FoodDetailsController].
class FoodDetailsControllerFamily
    extends Family<AsyncValue<FoodDetailsEntity>> {
  /// See also [FoodDetailsController].
  const FoodDetailsControllerFamily();

  /// See also [FoodDetailsController].
  FoodDetailsControllerProvider call(
    Tuple2<String, DataSourceType> tuple2,
  ) {
    return FoodDetailsControllerProvider(
      tuple2,
    );
  }

  @override
  FoodDetailsControllerProvider getProviderOverride(
    covariant FoodDetailsControllerProvider provider,
  ) {
    return call(
      provider.tuple2,
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
  String? get name => r'foodDetailsControllerProvider';
}

/// See also [FoodDetailsController].
class FoodDetailsControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<FoodDetailsController,
        FoodDetailsEntity> {
  /// See also [FoodDetailsController].
  FoodDetailsControllerProvider(
    Tuple2<String, DataSourceType> tuple2,
  ) : this._internal(
          () => FoodDetailsController()..tuple2 = tuple2,
          from: foodDetailsControllerProvider,
          name: r'foodDetailsControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$foodDetailsControllerHash,
          dependencies: FoodDetailsControllerFamily._dependencies,
          allTransitiveDependencies:
              FoodDetailsControllerFamily._allTransitiveDependencies,
          tuple2: tuple2,
        );

  FoodDetailsControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tuple2,
  }) : super.internal();

  final Tuple2<String, DataSourceType> tuple2;

  @override
  FutureOr<FoodDetailsEntity> runNotifierBuild(
    covariant FoodDetailsController notifier,
  ) {
    return notifier.build(
      tuple2,
    );
  }

  @override
  Override overrideWith(FoodDetailsController Function() create) {
    return ProviderOverride(
      origin: this,
      override: FoodDetailsControllerProvider._internal(
        () => create()..tuple2 = tuple2,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tuple2: tuple2,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<FoodDetailsController,
      FoodDetailsEntity> createElement() {
    return _FoodDetailsControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FoodDetailsControllerProvider && other.tuple2 == tuple2;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tuple2.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FoodDetailsControllerRef
    on AutoDisposeAsyncNotifierProviderRef<FoodDetailsEntity> {
  /// The parameter `tuple2` of this provider.
  Tuple2<String, DataSourceType> get tuple2;
}

class _FoodDetailsControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<FoodDetailsController,
        FoodDetailsEntity> with FoodDetailsControllerRef {
  _FoodDetailsControllerProviderElement(super.provider);

  @override
  Tuple2<String, DataSourceType> get tuple2 =>
      (origin as FoodDetailsControllerProvider).tuple2;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
