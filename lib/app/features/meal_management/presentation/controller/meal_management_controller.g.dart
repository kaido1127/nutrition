// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_management_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mealManagementControllerHash() =>
    r'f6b5733c52c82032f6a355bcac811e0d4ed31d47';

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

abstract class _$MealManagementController
    extends BuildlessAutoDisposeStreamNotifier<List<DishTaskEntity>> {
  late final int mealType;

  Stream<List<DishTaskEntity>> build(
    int mealType,
  );
}

/// See also [MealManagementController].
@ProviderFor(MealManagementController)
const mealManagementControllerProvider = MealManagementControllerFamily();

/// See also [MealManagementController].
class MealManagementControllerFamily
    extends Family<AsyncValue<List<DishTaskEntity>>> {
  /// See also [MealManagementController].
  const MealManagementControllerFamily();

  /// See also [MealManagementController].
  MealManagementControllerProvider call(
    int mealType,
  ) {
    return MealManagementControllerProvider(
      mealType,
    );
  }

  @override
  MealManagementControllerProvider getProviderOverride(
    covariant MealManagementControllerProvider provider,
  ) {
    return call(
      provider.mealType,
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
  String? get name => r'mealManagementControllerProvider';
}

/// See also [MealManagementController].
class MealManagementControllerProvider
    extends AutoDisposeStreamNotifierProviderImpl<MealManagementController,
        List<DishTaskEntity>> {
  /// See also [MealManagementController].
  MealManagementControllerProvider(
    int mealType,
  ) : this._internal(
          () => MealManagementController()..mealType = mealType,
          from: mealManagementControllerProvider,
          name: r'mealManagementControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mealManagementControllerHash,
          dependencies: MealManagementControllerFamily._dependencies,
          allTransitiveDependencies:
              MealManagementControllerFamily._allTransitiveDependencies,
          mealType: mealType,
        );

  MealManagementControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mealType,
  }) : super.internal();

  final int mealType;

  @override
  Stream<List<DishTaskEntity>> runNotifierBuild(
    covariant MealManagementController notifier,
  ) {
    return notifier.build(
      mealType,
    );
  }

  @override
  Override overrideWith(MealManagementController Function() create) {
    return ProviderOverride(
      origin: this,
      override: MealManagementControllerProvider._internal(
        () => create()..mealType = mealType,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mealType: mealType,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<MealManagementController,
      List<DishTaskEntity>> createElement() {
    return _MealManagementControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MealManagementControllerProvider &&
        other.mealType == mealType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mealType.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MealManagementControllerRef
    on AutoDisposeStreamNotifierProviderRef<List<DishTaskEntity>> {
  /// The parameter `mealType` of this provider.
  int get mealType;
}

class _MealManagementControllerProviderElement
    extends AutoDisposeStreamNotifierProviderElement<MealManagementController,
        List<DishTaskEntity>> with MealManagementControllerRef {
  _MealManagementControllerProviderElement(super.provider);

  @override
  int get mealType => (origin as MealManagementControllerProvider).mealType;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
