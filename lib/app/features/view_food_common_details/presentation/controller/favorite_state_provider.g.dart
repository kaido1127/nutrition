// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$favoriteStateControllerHash() =>
    r'2701e0199f126b9e6a94ac5b3ff6a21b6bc68beb';

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

abstract class _$FavoriteStateController
    extends BuildlessAutoDisposeAsyncNotifier<bool> {
  late final Tuple2<String, DataSourceType> tuple2;

  FutureOr<bool> build(
    Tuple2<String, DataSourceType> tuple2,
  );
}

/// See also [FavoriteStateController].
@ProviderFor(FavoriteStateController)
const favoriteStateControllerProvider = FavoriteStateControllerFamily();

/// See also [FavoriteStateController].
class FavoriteStateControllerFamily extends Family<AsyncValue<bool>> {
  /// See also [FavoriteStateController].
  const FavoriteStateControllerFamily();

  /// See also [FavoriteStateController].
  FavoriteStateControllerProvider call(
    Tuple2<String, DataSourceType> tuple2,
  ) {
    return FavoriteStateControllerProvider(
      tuple2,
    );
  }

  @override
  FavoriteStateControllerProvider getProviderOverride(
    covariant FavoriteStateControllerProvider provider,
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
  String? get name => r'favoriteStateControllerProvider';
}

/// See also [FavoriteStateController].
class FavoriteStateControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<FavoriteStateController,
        bool> {
  /// See also [FavoriteStateController].
  FavoriteStateControllerProvider(
    Tuple2<String, DataSourceType> tuple2,
  ) : this._internal(
          () => FavoriteStateController()..tuple2 = tuple2,
          from: favoriteStateControllerProvider,
          name: r'favoriteStateControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$favoriteStateControllerHash,
          dependencies: FavoriteStateControllerFamily._dependencies,
          allTransitiveDependencies:
              FavoriteStateControllerFamily._allTransitiveDependencies,
          tuple2: tuple2,
        );

  FavoriteStateControllerProvider._internal(
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
  FutureOr<bool> runNotifierBuild(
    covariant FavoriteStateController notifier,
  ) {
    return notifier.build(
      tuple2,
    );
  }

  @override
  Override overrideWith(FavoriteStateController Function() create) {
    return ProviderOverride(
      origin: this,
      override: FavoriteStateControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<FavoriteStateController, bool>
      createElement() {
    return _FavoriteStateControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FavoriteStateControllerProvider && other.tuple2 == tuple2;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tuple2.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FavoriteStateControllerRef on AutoDisposeAsyncNotifierProviderRef<bool> {
  /// The parameter `tuple2` of this provider.
  Tuple2<String, DataSourceType> get tuple2;
}

class _FavoriteStateControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<FavoriteStateController,
        bool> with FavoriteStateControllerRef {
  _FavoriteStateControllerProviderElement(super.provider);

  @override
  Tuple2<String, DataSourceType> get tuple2 =>
      (origin as FavoriteStateControllerProvider).tuple2;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
