// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_selected_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$foodSelectedControllerHash() =>
    r'4e82f6409f085ce3cdbda12637a6ce21de014c3d';

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

abstract class _$FoodSelectedController
    extends BuildlessAutoDisposeAsyncNotifier<FoodDetailsEntity?> {
  late final String foodName;
  late final bool isSearch;
  late final DataSourceType dataSourceType;

  FutureOr<FoodDetailsEntity?> build(
    String foodName,
    bool isSearch,
    DataSourceType dataSourceType,
  );
}

/// See also [FoodSelectedController].
@ProviderFor(FoodSelectedController)
const foodSelectedControllerProvider = FoodSelectedControllerFamily();

/// See also [FoodSelectedController].
class FoodSelectedControllerFamily
    extends Family<AsyncValue<FoodDetailsEntity?>> {
  /// See also [FoodSelectedController].
  const FoodSelectedControllerFamily();

  /// See also [FoodSelectedController].
  FoodSelectedControllerProvider call(
    String foodName,
    bool isSearch,
    DataSourceType dataSourceType,
  ) {
    return FoodSelectedControllerProvider(
      foodName,
      isSearch,
      dataSourceType,
    );
  }

  @override
  FoodSelectedControllerProvider getProviderOverride(
    covariant FoodSelectedControllerProvider provider,
  ) {
    return call(
      provider.foodName,
      provider.isSearch,
      provider.dataSourceType,
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
  String? get name => r'foodSelectedControllerProvider';
}

/// See also [FoodSelectedController].
class FoodSelectedControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<FoodSelectedController,
        FoodDetailsEntity?> {
  /// See also [FoodSelectedController].
  FoodSelectedControllerProvider(
    String foodName,
    bool isSearch,
    DataSourceType dataSourceType,
  ) : this._internal(
          () => FoodSelectedController()
            ..foodName = foodName
            ..isSearch = isSearch
            ..dataSourceType = dataSourceType,
          from: foodSelectedControllerProvider,
          name: r'foodSelectedControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$foodSelectedControllerHash,
          dependencies: FoodSelectedControllerFamily._dependencies,
          allTransitiveDependencies:
              FoodSelectedControllerFamily._allTransitiveDependencies,
          foodName: foodName,
          isSearch: isSearch,
          dataSourceType: dataSourceType,
        );

  FoodSelectedControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.foodName,
    required this.isSearch,
    required this.dataSourceType,
  }) : super.internal();

  final String foodName;
  final bool isSearch;
  final DataSourceType dataSourceType;

  @override
  FutureOr<FoodDetailsEntity?> runNotifierBuild(
    covariant FoodSelectedController notifier,
  ) {
    return notifier.build(
      foodName,
      isSearch,
      dataSourceType,
    );
  }

  @override
  Override overrideWith(FoodSelectedController Function() create) {
    return ProviderOverride(
      origin: this,
      override: FoodSelectedControllerProvider._internal(
        () => create()
          ..foodName = foodName
          ..isSearch = isSearch
          ..dataSourceType = dataSourceType,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        foodName: foodName,
        isSearch: isSearch,
        dataSourceType: dataSourceType,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<FoodSelectedController,
      FoodDetailsEntity?> createElement() {
    return _FoodSelectedControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FoodSelectedControllerProvider &&
        other.foodName == foodName &&
        other.isSearch == isSearch &&
        other.dataSourceType == dataSourceType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, foodName.hashCode);
    hash = _SystemHash.combine(hash, isSearch.hashCode);
    hash = _SystemHash.combine(hash, dataSourceType.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FoodSelectedControllerRef
    on AutoDisposeAsyncNotifierProviderRef<FoodDetailsEntity?> {
  /// The parameter `foodName` of this provider.
  String get foodName;

  /// The parameter `isSearch` of this provider.
  bool get isSearch;

  /// The parameter `dataSourceType` of this provider.
  DataSourceType get dataSourceType;
}

class _FoodSelectedControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<FoodSelectedController,
        FoodDetailsEntity?> with FoodSelectedControllerRef {
  _FoodSelectedControllerProviderElement(super.provider);

  @override
  String get foodName => (origin as FoodSelectedControllerProvider).foodName;
  @override
  bool get isSearch => (origin as FoodSelectedControllerProvider).isSearch;
  @override
  DataSourceType get dataSourceType =>
      (origin as FoodSelectedControllerProvider).dataSourceType;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
