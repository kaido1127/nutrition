// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_suggestion_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mealSuggestionControllerHash() =>
    r'f2dd2e6378144a32f76ea7e943d9c7bdc456eca0';

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

abstract class _$MealSuggestionController
    extends BuildlessAutoDisposeAsyncNotifier<List<MealSuggestionEntity>> {
  late final MealType mealType;

  FutureOr<List<MealSuggestionEntity>> build(
    MealType mealType,
  );
}

/// See also [MealSuggestionController].
@ProviderFor(MealSuggestionController)
const mealSuggestionControllerProvider = MealSuggestionControllerFamily();

/// See also [MealSuggestionController].
class MealSuggestionControllerFamily
    extends Family<AsyncValue<List<MealSuggestionEntity>>> {
  /// See also [MealSuggestionController].
  const MealSuggestionControllerFamily();

  /// See also [MealSuggestionController].
  MealSuggestionControllerProvider call(
    MealType mealType,
  ) {
    return MealSuggestionControllerProvider(
      mealType,
    );
  }

  @override
  MealSuggestionControllerProvider getProviderOverride(
    covariant MealSuggestionControllerProvider provider,
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
  String? get name => r'mealSuggestionControllerProvider';
}

/// See also [MealSuggestionController].
class MealSuggestionControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<MealSuggestionController,
        List<MealSuggestionEntity>> {
  /// See also [MealSuggestionController].
  MealSuggestionControllerProvider(
    MealType mealType,
  ) : this._internal(
          () => MealSuggestionController()..mealType = mealType,
          from: mealSuggestionControllerProvider,
          name: r'mealSuggestionControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mealSuggestionControllerHash,
          dependencies: MealSuggestionControllerFamily._dependencies,
          allTransitiveDependencies:
              MealSuggestionControllerFamily._allTransitiveDependencies,
          mealType: mealType,
        );

  MealSuggestionControllerProvider._internal(
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
  FutureOr<List<MealSuggestionEntity>> runNotifierBuild(
    covariant MealSuggestionController notifier,
  ) {
    return notifier.build(
      mealType,
    );
  }

  @override
  Override overrideWith(MealSuggestionController Function() create) {
    return ProviderOverride(
      origin: this,
      override: MealSuggestionControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<MealSuggestionController,
      List<MealSuggestionEntity>> createElement() {
    return _MealSuggestionControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MealSuggestionControllerProvider &&
        other.mealType == mealType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mealType.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MealSuggestionControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<MealSuggestionEntity>> {
  /// The parameter `mealType` of this provider.
  MealType get mealType;
}

class _MealSuggestionControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MealSuggestionController,
        List<MealSuggestionEntity>> with MealSuggestionControllerRef {
  _MealSuggestionControllerProviderElement(super.provider);

  @override
  MealType get mealType =>
      (origin as MealSuggestionControllerProvider).mealType;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
