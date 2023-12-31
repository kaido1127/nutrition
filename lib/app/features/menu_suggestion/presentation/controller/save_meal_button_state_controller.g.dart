// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_meal_button_state_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$saveMealButtonStateControllerHash() =>
    r'adf4d74d1c432e56a7d23bf8081675797363bc9f';

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

abstract class _$SaveMealButtonStateController
    extends BuildlessAutoDisposeAsyncNotifier<bool> {
  late final MealType mealType;

  FutureOr<bool> build(
    MealType mealType,
  );
}

/// See also [SaveMealButtonStateController].
@ProviderFor(SaveMealButtonStateController)
const saveMealButtonStateControllerProvider =
    SaveMealButtonStateControllerFamily();

/// See also [SaveMealButtonStateController].
class SaveMealButtonStateControllerFamily extends Family<AsyncValue<bool>> {
  /// See also [SaveMealButtonStateController].
  const SaveMealButtonStateControllerFamily();

  /// See also [SaveMealButtonStateController].
  SaveMealButtonStateControllerProvider call(
    MealType mealType,
  ) {
    return SaveMealButtonStateControllerProvider(
      mealType,
    );
  }

  @override
  SaveMealButtonStateControllerProvider getProviderOverride(
    covariant SaveMealButtonStateControllerProvider provider,
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
  String? get name => r'saveMealButtonStateControllerProvider';
}

/// See also [SaveMealButtonStateController].
class SaveMealButtonStateControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SaveMealButtonStateController,
        bool> {
  /// See also [SaveMealButtonStateController].
  SaveMealButtonStateControllerProvider(
    MealType mealType,
  ) : this._internal(
          () => SaveMealButtonStateController()..mealType = mealType,
          from: saveMealButtonStateControllerProvider,
          name: r'saveMealButtonStateControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveMealButtonStateControllerHash,
          dependencies: SaveMealButtonStateControllerFamily._dependencies,
          allTransitiveDependencies:
              SaveMealButtonStateControllerFamily._allTransitiveDependencies,
          mealType: mealType,
        );

  SaveMealButtonStateControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mealType,
  }) : super.internal();

  final MealType mealType;

  @override
  FutureOr<bool> runNotifierBuild(
    covariant SaveMealButtonStateController notifier,
  ) {
    return notifier.build(
      mealType,
    );
  }

  @override
  Override overrideWith(SaveMealButtonStateController Function() create) {
    return ProviderOverride(
      origin: this,
      override: SaveMealButtonStateControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<SaveMealButtonStateController, bool>
      createElement() {
    return _SaveMealButtonStateControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveMealButtonStateControllerProvider &&
        other.mealType == mealType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mealType.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SaveMealButtonStateControllerRef
    on AutoDisposeAsyncNotifierProviderRef<bool> {
  /// The parameter `mealType` of this provider.
  MealType get mealType;
}

class _SaveMealButtonStateControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        SaveMealButtonStateController,
        bool> with SaveMealButtonStateControllerRef {
  _SaveMealButtonStateControllerProviderElement(super.provider);

  @override
  MealType get mealType =>
      (origin as SaveMealButtonStateControllerProvider).mealType;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
