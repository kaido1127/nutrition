// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $FoodCommonLocalTable extends FoodCommonLocal
    with TableInfo<$FoodCommonLocalTable, FoodCommonLocalData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FoodCommonLocalTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _foodNameMeta =
      const VerificationMeta('foodName');
  @override
  late final GeneratedColumn<String> foodName = GeneratedColumn<String>(
      'food_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _brandNameMeta =
      const VerificationMeta('brandName');
  @override
  late final GeneratedColumn<String> brandName = GeneratedColumn<String>(
      'brand_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _servingQtyMeta =
      const VerificationMeta('servingQty');
  @override
  late final GeneratedColumn<double> servingQty = GeneratedColumn<double>(
      'serving_qty', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _servingUnitMeta =
      const VerificationMeta('servingUnit');
  @override
  late final GeneratedColumn<String> servingUnit = GeneratedColumn<String>(
      'serving_unit', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _servingWeightGramsMeta =
      const VerificationMeta('servingWeightGrams');
  @override
  late final GeneratedColumn<double> servingWeightGrams =
      GeneratedColumn<double>('serving_weight_grams', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _nfCaloriesMeta =
      const VerificationMeta('nfCalories');
  @override
  late final GeneratedColumn<double> nfCalories = GeneratedColumn<double>(
      'nf_calories', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _nfTotalFatMeta =
      const VerificationMeta('nfTotalFat');
  @override
  late final GeneratedColumn<double> nfTotalFat = GeneratedColumn<double>(
      'nf_total_fat', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _nfSaturatedFatMeta =
      const VerificationMeta('nfSaturatedFat');
  @override
  late final GeneratedColumn<double> nfSaturatedFat = GeneratedColumn<double>(
      'nf_saturated_fat', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _nfCholesterolMeta =
      const VerificationMeta('nfCholesterol');
  @override
  late final GeneratedColumn<double> nfCholesterol = GeneratedColumn<double>(
      'nf_cholesterol', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _nfSodiumMeta =
      const VerificationMeta('nfSodium');
  @override
  late final GeneratedColumn<double> nfSodium = GeneratedColumn<double>(
      'nf_sodium', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _nfTotalCarbohydrateMeta =
      const VerificationMeta('nfTotalCarbohydrate');
  @override
  late final GeneratedColumn<double> nfTotalCarbohydrate =
      GeneratedColumn<double>('nf_total_carbohydrate', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _nfDietaryFiberMeta =
      const VerificationMeta('nfDietaryFiber');
  @override
  late final GeneratedColumn<double> nfDietaryFiber = GeneratedColumn<double>(
      'nf_dietary_fiber', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _nfSugarsMeta =
      const VerificationMeta('nfSugars');
  @override
  late final GeneratedColumn<double> nfSugars = GeneratedColumn<double>(
      'nf_sugars', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _nfProteinMeta =
      const VerificationMeta('nfProtein');
  @override
  late final GeneratedColumn<double> nfProtein = GeneratedColumn<double>(
      'nf_protein', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _nfPotassiumMeta =
      const VerificationMeta('nfPotassium');
  @override
  late final GeneratedColumn<double> nfPotassium = GeneratedColumn<double>(
      'nf_potassium', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _nfPMeta = const VerificationMeta('nfP');
  @override
  late final GeneratedColumn<double> nfP = GeneratedColumn<double>(
      'nf_p', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _consumedAtMeta =
      const VerificationMeta('consumedAt');
  @override
  late final GeneratedColumn<String> consumedAt = GeneratedColumn<String>(
      'consumed_at', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<int> source = GeneratedColumn<int>(
      'source', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _ndbNoMeta = const VerificationMeta('ndbNo');
  @override
  late final GeneratedColumn<int> ndbNo = GeneratedColumn<int>(
      'ndb_no', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _mealTypeMeta =
      const VerificationMeta('mealType');
  @override
  late final GeneratedColumn<int> mealType = GeneratedColumn<int>(
      'meal_type', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _photoUrlMeta =
      const VerificationMeta('photoUrl');
  @override
  late final GeneratedColumn<String> photoUrl = GeneratedColumn<String>(
      'photo_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _listAltMeasureMeta =
      const VerificationMeta('listAltMeasure');
  @override
  late final GeneratedColumnWithTypeConverter<ListAltMeasure?, String>
      listAltMeasure = GeneratedColumn<String>(
              'list_alt_measure', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<ListAltMeasure?>(
              $FoodCommonLocalTable.$converterlistAltMeasuren);
  static const VerificationMeta _isFavoriteFoodMeta =
      const VerificationMeta('isFavoriteFood');
  @override
  late final GeneratedColumn<bool> isFavoriteFood = GeneratedColumn<bool>(
      'is_favorite_food', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_favorite_food" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        foodName,
        brandName,
        servingQty,
        servingUnit,
        servingWeightGrams,
        nfCalories,
        nfTotalFat,
        nfSaturatedFat,
        nfCholesterol,
        nfSodium,
        nfTotalCarbohydrate,
        nfDietaryFiber,
        nfSugars,
        nfProtein,
        nfPotassium,
        nfP,
        consumedAt,
        source,
        ndbNo,
        mealType,
        photoUrl,
        listAltMeasure,
        isFavoriteFood
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'food_common_local';
  @override
  VerificationContext validateIntegrity(
      Insertable<FoodCommonLocalData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('food_name')) {
      context.handle(_foodNameMeta,
          foodName.isAcceptableOrUnknown(data['food_name']!, _foodNameMeta));
    } else if (isInserting) {
      context.missing(_foodNameMeta);
    }
    if (data.containsKey('brand_name')) {
      context.handle(_brandNameMeta,
          brandName.isAcceptableOrUnknown(data['brand_name']!, _brandNameMeta));
    }
    if (data.containsKey('serving_qty')) {
      context.handle(
          _servingQtyMeta,
          servingQty.isAcceptableOrUnknown(
              data['serving_qty']!, _servingQtyMeta));
    }
    if (data.containsKey('serving_unit')) {
      context.handle(
          _servingUnitMeta,
          servingUnit.isAcceptableOrUnknown(
              data['serving_unit']!, _servingUnitMeta));
    }
    if (data.containsKey('serving_weight_grams')) {
      context.handle(
          _servingWeightGramsMeta,
          servingWeightGrams.isAcceptableOrUnknown(
              data['serving_weight_grams']!, _servingWeightGramsMeta));
    }
    if (data.containsKey('nf_calories')) {
      context.handle(
          _nfCaloriesMeta,
          nfCalories.isAcceptableOrUnknown(
              data['nf_calories']!, _nfCaloriesMeta));
    }
    if (data.containsKey('nf_total_fat')) {
      context.handle(
          _nfTotalFatMeta,
          nfTotalFat.isAcceptableOrUnknown(
              data['nf_total_fat']!, _nfTotalFatMeta));
    }
    if (data.containsKey('nf_saturated_fat')) {
      context.handle(
          _nfSaturatedFatMeta,
          nfSaturatedFat.isAcceptableOrUnknown(
              data['nf_saturated_fat']!, _nfSaturatedFatMeta));
    }
    if (data.containsKey('nf_cholesterol')) {
      context.handle(
          _nfCholesterolMeta,
          nfCholesterol.isAcceptableOrUnknown(
              data['nf_cholesterol']!, _nfCholesterolMeta));
    }
    if (data.containsKey('nf_sodium')) {
      context.handle(_nfSodiumMeta,
          nfSodium.isAcceptableOrUnknown(data['nf_sodium']!, _nfSodiumMeta));
    }
    if (data.containsKey('nf_total_carbohydrate')) {
      context.handle(
          _nfTotalCarbohydrateMeta,
          nfTotalCarbohydrate.isAcceptableOrUnknown(
              data['nf_total_carbohydrate']!, _nfTotalCarbohydrateMeta));
    }
    if (data.containsKey('nf_dietary_fiber')) {
      context.handle(
          _nfDietaryFiberMeta,
          nfDietaryFiber.isAcceptableOrUnknown(
              data['nf_dietary_fiber']!, _nfDietaryFiberMeta));
    }
    if (data.containsKey('nf_sugars')) {
      context.handle(_nfSugarsMeta,
          nfSugars.isAcceptableOrUnknown(data['nf_sugars']!, _nfSugarsMeta));
    }
    if (data.containsKey('nf_protein')) {
      context.handle(_nfProteinMeta,
          nfProtein.isAcceptableOrUnknown(data['nf_protein']!, _nfProteinMeta));
    }
    if (data.containsKey('nf_potassium')) {
      context.handle(
          _nfPotassiumMeta,
          nfPotassium.isAcceptableOrUnknown(
              data['nf_potassium']!, _nfPotassiumMeta));
    }
    if (data.containsKey('nf_p')) {
      context.handle(
          _nfPMeta, nfP.isAcceptableOrUnknown(data['nf_p']!, _nfPMeta));
    }
    if (data.containsKey('consumed_at')) {
      context.handle(
          _consumedAtMeta,
          consumedAt.isAcceptableOrUnknown(
              data['consumed_at']!, _consumedAtMeta));
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    }
    if (data.containsKey('ndb_no')) {
      context.handle(
          _ndbNoMeta, ndbNo.isAcceptableOrUnknown(data['ndb_no']!, _ndbNoMeta));
    }
    if (data.containsKey('meal_type')) {
      context.handle(_mealTypeMeta,
          mealType.isAcceptableOrUnknown(data['meal_type']!, _mealTypeMeta));
    }
    if (data.containsKey('photo_url')) {
      context.handle(_photoUrlMeta,
          photoUrl.isAcceptableOrUnknown(data['photo_url']!, _photoUrlMeta));
    } else if (isInserting) {
      context.missing(_photoUrlMeta);
    }
    context.handle(_listAltMeasureMeta, const VerificationResult.success());
    if (data.containsKey('is_favorite_food')) {
      context.handle(
          _isFavoriteFoodMeta,
          isFavoriteFood.isAcceptableOrUnknown(
              data['is_favorite_food']!, _isFavoriteFoodMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {foodName};
  @override
  FoodCommonLocalData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FoodCommonLocalData(
      foodName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}food_name'])!,
      brandName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}brand_name']),
      servingQty: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}serving_qty']),
      servingUnit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}serving_unit']),
      servingWeightGrams: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}serving_weight_grams']),
      nfCalories: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}nf_calories']),
      nfTotalFat: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}nf_total_fat']),
      nfSaturatedFat: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}nf_saturated_fat']),
      nfCholesterol: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}nf_cholesterol']),
      nfSodium: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}nf_sodium']),
      nfTotalCarbohydrate: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}nf_total_carbohydrate']),
      nfDietaryFiber: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}nf_dietary_fiber']),
      nfSugars: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}nf_sugars']),
      nfProtein: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}nf_protein']),
      nfPotassium: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}nf_potassium']),
      nfP: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}nf_p']),
      consumedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}consumed_at']),
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}source']),
      ndbNo: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ndb_no']),
      mealType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}meal_type']),
      photoUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}photo_url'])!,
      listAltMeasure: $FoodCommonLocalTable.$converterlistAltMeasuren.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}list_alt_measure'])),
      isFavoriteFood: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_favorite_food'])!,
    );
  }

  @override
  $FoodCommonLocalTable createAlias(String alias) {
    return $FoodCommonLocalTable(attachedDatabase, alias);
  }

  static TypeConverter<ListAltMeasure, String> $converterlistAltMeasure =
      const ListAltMeasureConverter();
  static TypeConverter<ListAltMeasure?, String?> $converterlistAltMeasuren =
      NullAwareTypeConverter.wrap($converterlistAltMeasure);
}

class FoodCommonLocalData extends DataClass
    implements Insertable<FoodCommonLocalData> {
  final String foodName;
  final String? brandName;
  final double? servingQty;
  final String? servingUnit;
  final double? servingWeightGrams;
  final double? nfCalories;
  final double? nfTotalFat;
  final double? nfSaturatedFat;
  final double? nfCholesterol;
  final double? nfSodium;
  final double? nfTotalCarbohydrate;
  final double? nfDietaryFiber;
  final double? nfSugars;
  final double? nfProtein;
  final double? nfPotassium;
  final double? nfP;
  final String? consumedAt;
  final int? source;
  final int? ndbNo;
  final int? mealType;
  final String photoUrl;
  final ListAltMeasure? listAltMeasure;
  final bool isFavoriteFood;
  const FoodCommonLocalData(
      {required this.foodName,
      this.brandName,
      this.servingQty,
      this.servingUnit,
      this.servingWeightGrams,
      this.nfCalories,
      this.nfTotalFat,
      this.nfSaturatedFat,
      this.nfCholesterol,
      this.nfSodium,
      this.nfTotalCarbohydrate,
      this.nfDietaryFiber,
      this.nfSugars,
      this.nfProtein,
      this.nfPotassium,
      this.nfP,
      this.consumedAt,
      this.source,
      this.ndbNo,
      this.mealType,
      required this.photoUrl,
      this.listAltMeasure,
      required this.isFavoriteFood});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['food_name'] = Variable<String>(foodName);
    if (!nullToAbsent || brandName != null) {
      map['brand_name'] = Variable<String>(brandName);
    }
    if (!nullToAbsent || servingQty != null) {
      map['serving_qty'] = Variable<double>(servingQty);
    }
    if (!nullToAbsent || servingUnit != null) {
      map['serving_unit'] = Variable<String>(servingUnit);
    }
    if (!nullToAbsent || servingWeightGrams != null) {
      map['serving_weight_grams'] = Variable<double>(servingWeightGrams);
    }
    if (!nullToAbsent || nfCalories != null) {
      map['nf_calories'] = Variable<double>(nfCalories);
    }
    if (!nullToAbsent || nfTotalFat != null) {
      map['nf_total_fat'] = Variable<double>(nfTotalFat);
    }
    if (!nullToAbsent || nfSaturatedFat != null) {
      map['nf_saturated_fat'] = Variable<double>(nfSaturatedFat);
    }
    if (!nullToAbsent || nfCholesterol != null) {
      map['nf_cholesterol'] = Variable<double>(nfCholesterol);
    }
    if (!nullToAbsent || nfSodium != null) {
      map['nf_sodium'] = Variable<double>(nfSodium);
    }
    if (!nullToAbsent || nfTotalCarbohydrate != null) {
      map['nf_total_carbohydrate'] = Variable<double>(nfTotalCarbohydrate);
    }
    if (!nullToAbsent || nfDietaryFiber != null) {
      map['nf_dietary_fiber'] = Variable<double>(nfDietaryFiber);
    }
    if (!nullToAbsent || nfSugars != null) {
      map['nf_sugars'] = Variable<double>(nfSugars);
    }
    if (!nullToAbsent || nfProtein != null) {
      map['nf_protein'] = Variable<double>(nfProtein);
    }
    if (!nullToAbsent || nfPotassium != null) {
      map['nf_potassium'] = Variable<double>(nfPotassium);
    }
    if (!nullToAbsent || nfP != null) {
      map['nf_p'] = Variable<double>(nfP);
    }
    if (!nullToAbsent || consumedAt != null) {
      map['consumed_at'] = Variable<String>(consumedAt);
    }
    if (!nullToAbsent || source != null) {
      map['source'] = Variable<int>(source);
    }
    if (!nullToAbsent || ndbNo != null) {
      map['ndb_no'] = Variable<int>(ndbNo);
    }
    if (!nullToAbsent || mealType != null) {
      map['meal_type'] = Variable<int>(mealType);
    }
    map['photo_url'] = Variable<String>(photoUrl);
    if (!nullToAbsent || listAltMeasure != null) {
      final converter = $FoodCommonLocalTable.$converterlistAltMeasuren;
      map['list_alt_measure'] =
          Variable<String>(converter.toSql(listAltMeasure));
    }
    map['is_favorite_food'] = Variable<bool>(isFavoriteFood);
    return map;
  }

  FoodCommonLocalCompanion toCompanion(bool nullToAbsent) {
    return FoodCommonLocalCompanion(
      foodName: Value(foodName),
      brandName: brandName == null && nullToAbsent
          ? const Value.absent()
          : Value(brandName),
      servingQty: servingQty == null && nullToAbsent
          ? const Value.absent()
          : Value(servingQty),
      servingUnit: servingUnit == null && nullToAbsent
          ? const Value.absent()
          : Value(servingUnit),
      servingWeightGrams: servingWeightGrams == null && nullToAbsent
          ? const Value.absent()
          : Value(servingWeightGrams),
      nfCalories: nfCalories == null && nullToAbsent
          ? const Value.absent()
          : Value(nfCalories),
      nfTotalFat: nfTotalFat == null && nullToAbsent
          ? const Value.absent()
          : Value(nfTotalFat),
      nfSaturatedFat: nfSaturatedFat == null && nullToAbsent
          ? const Value.absent()
          : Value(nfSaturatedFat),
      nfCholesterol: nfCholesterol == null && nullToAbsent
          ? const Value.absent()
          : Value(nfCholesterol),
      nfSodium: nfSodium == null && nullToAbsent
          ? const Value.absent()
          : Value(nfSodium),
      nfTotalCarbohydrate: nfTotalCarbohydrate == null && nullToAbsent
          ? const Value.absent()
          : Value(nfTotalCarbohydrate),
      nfDietaryFiber: nfDietaryFiber == null && nullToAbsent
          ? const Value.absent()
          : Value(nfDietaryFiber),
      nfSugars: nfSugars == null && nullToAbsent
          ? const Value.absent()
          : Value(nfSugars),
      nfProtein: nfProtein == null && nullToAbsent
          ? const Value.absent()
          : Value(nfProtein),
      nfPotassium: nfPotassium == null && nullToAbsent
          ? const Value.absent()
          : Value(nfPotassium),
      nfP: nfP == null && nullToAbsent ? const Value.absent() : Value(nfP),
      consumedAt: consumedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(consumedAt),
      source:
          source == null && nullToAbsent ? const Value.absent() : Value(source),
      ndbNo:
          ndbNo == null && nullToAbsent ? const Value.absent() : Value(ndbNo),
      mealType: mealType == null && nullToAbsent
          ? const Value.absent()
          : Value(mealType),
      photoUrl: Value(photoUrl),
      listAltMeasure: listAltMeasure == null && nullToAbsent
          ? const Value.absent()
          : Value(listAltMeasure),
      isFavoriteFood: Value(isFavoriteFood),
    );
  }

  factory FoodCommonLocalData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FoodCommonLocalData(
      foodName: serializer.fromJson<String>(json['foodName']),
      brandName: serializer.fromJson<String?>(json['brandName']),
      servingQty: serializer.fromJson<double?>(json['servingQty']),
      servingUnit: serializer.fromJson<String?>(json['servingUnit']),
      servingWeightGrams:
          serializer.fromJson<double?>(json['servingWeightGrams']),
      nfCalories: serializer.fromJson<double?>(json['nfCalories']),
      nfTotalFat: serializer.fromJson<double?>(json['nfTotalFat']),
      nfSaturatedFat: serializer.fromJson<double?>(json['nfSaturatedFat']),
      nfCholesterol: serializer.fromJson<double?>(json['nfCholesterol']),
      nfSodium: serializer.fromJson<double?>(json['nfSodium']),
      nfTotalCarbohydrate:
          serializer.fromJson<double?>(json['nfTotalCarbohydrate']),
      nfDietaryFiber: serializer.fromJson<double?>(json['nfDietaryFiber']),
      nfSugars: serializer.fromJson<double?>(json['nfSugars']),
      nfProtein: serializer.fromJson<double?>(json['nfProtein']),
      nfPotassium: serializer.fromJson<double?>(json['nfPotassium']),
      nfP: serializer.fromJson<double?>(json['nfP']),
      consumedAt: serializer.fromJson<String?>(json['consumedAt']),
      source: serializer.fromJson<int?>(json['source']),
      ndbNo: serializer.fromJson<int?>(json['ndbNo']),
      mealType: serializer.fromJson<int?>(json['mealType']),
      photoUrl: serializer.fromJson<String>(json['photoUrl']),
      listAltMeasure:
          serializer.fromJson<ListAltMeasure?>(json['listAltMeasure']),
      isFavoriteFood: serializer.fromJson<bool>(json['isFavoriteFood']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'foodName': serializer.toJson<String>(foodName),
      'brandName': serializer.toJson<String?>(brandName),
      'servingQty': serializer.toJson<double?>(servingQty),
      'servingUnit': serializer.toJson<String?>(servingUnit),
      'servingWeightGrams': serializer.toJson<double?>(servingWeightGrams),
      'nfCalories': serializer.toJson<double?>(nfCalories),
      'nfTotalFat': serializer.toJson<double?>(nfTotalFat),
      'nfSaturatedFat': serializer.toJson<double?>(nfSaturatedFat),
      'nfCholesterol': serializer.toJson<double?>(nfCholesterol),
      'nfSodium': serializer.toJson<double?>(nfSodium),
      'nfTotalCarbohydrate': serializer.toJson<double?>(nfTotalCarbohydrate),
      'nfDietaryFiber': serializer.toJson<double?>(nfDietaryFiber),
      'nfSugars': serializer.toJson<double?>(nfSugars),
      'nfProtein': serializer.toJson<double?>(nfProtein),
      'nfPotassium': serializer.toJson<double?>(nfPotassium),
      'nfP': serializer.toJson<double?>(nfP),
      'consumedAt': serializer.toJson<String?>(consumedAt),
      'source': serializer.toJson<int?>(source),
      'ndbNo': serializer.toJson<int?>(ndbNo),
      'mealType': serializer.toJson<int?>(mealType),
      'photoUrl': serializer.toJson<String>(photoUrl),
      'listAltMeasure': serializer.toJson<ListAltMeasure?>(listAltMeasure),
      'isFavoriteFood': serializer.toJson<bool>(isFavoriteFood),
    };
  }

  FoodCommonLocalData copyWith(
          {String? foodName,
          Value<String?> brandName = const Value.absent(),
          Value<double?> servingQty = const Value.absent(),
          Value<String?> servingUnit = const Value.absent(),
          Value<double?> servingWeightGrams = const Value.absent(),
          Value<double?> nfCalories = const Value.absent(),
          Value<double?> nfTotalFat = const Value.absent(),
          Value<double?> nfSaturatedFat = const Value.absent(),
          Value<double?> nfCholesterol = const Value.absent(),
          Value<double?> nfSodium = const Value.absent(),
          Value<double?> nfTotalCarbohydrate = const Value.absent(),
          Value<double?> nfDietaryFiber = const Value.absent(),
          Value<double?> nfSugars = const Value.absent(),
          Value<double?> nfProtein = const Value.absent(),
          Value<double?> nfPotassium = const Value.absent(),
          Value<double?> nfP = const Value.absent(),
          Value<String?> consumedAt = const Value.absent(),
          Value<int?> source = const Value.absent(),
          Value<int?> ndbNo = const Value.absent(),
          Value<int?> mealType = const Value.absent(),
          String? photoUrl,
          Value<ListAltMeasure?> listAltMeasure = const Value.absent(),
          bool? isFavoriteFood}) =>
      FoodCommonLocalData(
        foodName: foodName ?? this.foodName,
        brandName: brandName.present ? brandName.value : this.brandName,
        servingQty: servingQty.present ? servingQty.value : this.servingQty,
        servingUnit: servingUnit.present ? servingUnit.value : this.servingUnit,
        servingWeightGrams: servingWeightGrams.present
            ? servingWeightGrams.value
            : this.servingWeightGrams,
        nfCalories: nfCalories.present ? nfCalories.value : this.nfCalories,
        nfTotalFat: nfTotalFat.present ? nfTotalFat.value : this.nfTotalFat,
        nfSaturatedFat:
            nfSaturatedFat.present ? nfSaturatedFat.value : this.nfSaturatedFat,
        nfCholesterol:
            nfCholesterol.present ? nfCholesterol.value : this.nfCholesterol,
        nfSodium: nfSodium.present ? nfSodium.value : this.nfSodium,
        nfTotalCarbohydrate: nfTotalCarbohydrate.present
            ? nfTotalCarbohydrate.value
            : this.nfTotalCarbohydrate,
        nfDietaryFiber:
            nfDietaryFiber.present ? nfDietaryFiber.value : this.nfDietaryFiber,
        nfSugars: nfSugars.present ? nfSugars.value : this.nfSugars,
        nfProtein: nfProtein.present ? nfProtein.value : this.nfProtein,
        nfPotassium: nfPotassium.present ? nfPotassium.value : this.nfPotassium,
        nfP: nfP.present ? nfP.value : this.nfP,
        consumedAt: consumedAt.present ? consumedAt.value : this.consumedAt,
        source: source.present ? source.value : this.source,
        ndbNo: ndbNo.present ? ndbNo.value : this.ndbNo,
        mealType: mealType.present ? mealType.value : this.mealType,
        photoUrl: photoUrl ?? this.photoUrl,
        listAltMeasure:
            listAltMeasure.present ? listAltMeasure.value : this.listAltMeasure,
        isFavoriteFood: isFavoriteFood ?? this.isFavoriteFood,
      );
  @override
  String toString() {
    return (StringBuffer('FoodCommonLocalData(')
          ..write('foodName: $foodName, ')
          ..write('brandName: $brandName, ')
          ..write('servingQty: $servingQty, ')
          ..write('servingUnit: $servingUnit, ')
          ..write('servingWeightGrams: $servingWeightGrams, ')
          ..write('nfCalories: $nfCalories, ')
          ..write('nfTotalFat: $nfTotalFat, ')
          ..write('nfSaturatedFat: $nfSaturatedFat, ')
          ..write('nfCholesterol: $nfCholesterol, ')
          ..write('nfSodium: $nfSodium, ')
          ..write('nfTotalCarbohydrate: $nfTotalCarbohydrate, ')
          ..write('nfDietaryFiber: $nfDietaryFiber, ')
          ..write('nfSugars: $nfSugars, ')
          ..write('nfProtein: $nfProtein, ')
          ..write('nfPotassium: $nfPotassium, ')
          ..write('nfP: $nfP, ')
          ..write('consumedAt: $consumedAt, ')
          ..write('source: $source, ')
          ..write('ndbNo: $ndbNo, ')
          ..write('mealType: $mealType, ')
          ..write('photoUrl: $photoUrl, ')
          ..write('listAltMeasure: $listAltMeasure, ')
          ..write('isFavoriteFood: $isFavoriteFood')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        foodName,
        brandName,
        servingQty,
        servingUnit,
        servingWeightGrams,
        nfCalories,
        nfTotalFat,
        nfSaturatedFat,
        nfCholesterol,
        nfSodium,
        nfTotalCarbohydrate,
        nfDietaryFiber,
        nfSugars,
        nfProtein,
        nfPotassium,
        nfP,
        consumedAt,
        source,
        ndbNo,
        mealType,
        photoUrl,
        listAltMeasure,
        isFavoriteFood
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FoodCommonLocalData &&
          other.foodName == this.foodName &&
          other.brandName == this.brandName &&
          other.servingQty == this.servingQty &&
          other.servingUnit == this.servingUnit &&
          other.servingWeightGrams == this.servingWeightGrams &&
          other.nfCalories == this.nfCalories &&
          other.nfTotalFat == this.nfTotalFat &&
          other.nfSaturatedFat == this.nfSaturatedFat &&
          other.nfCholesterol == this.nfCholesterol &&
          other.nfSodium == this.nfSodium &&
          other.nfTotalCarbohydrate == this.nfTotalCarbohydrate &&
          other.nfDietaryFiber == this.nfDietaryFiber &&
          other.nfSugars == this.nfSugars &&
          other.nfProtein == this.nfProtein &&
          other.nfPotassium == this.nfPotassium &&
          other.nfP == this.nfP &&
          other.consumedAt == this.consumedAt &&
          other.source == this.source &&
          other.ndbNo == this.ndbNo &&
          other.mealType == this.mealType &&
          other.photoUrl == this.photoUrl &&
          other.listAltMeasure == this.listAltMeasure &&
          other.isFavoriteFood == this.isFavoriteFood);
}

class FoodCommonLocalCompanion extends UpdateCompanion<FoodCommonLocalData> {
  final Value<String> foodName;
  final Value<String?> brandName;
  final Value<double?> servingQty;
  final Value<String?> servingUnit;
  final Value<double?> servingWeightGrams;
  final Value<double?> nfCalories;
  final Value<double?> nfTotalFat;
  final Value<double?> nfSaturatedFat;
  final Value<double?> nfCholesterol;
  final Value<double?> nfSodium;
  final Value<double?> nfTotalCarbohydrate;
  final Value<double?> nfDietaryFiber;
  final Value<double?> nfSugars;
  final Value<double?> nfProtein;
  final Value<double?> nfPotassium;
  final Value<double?> nfP;
  final Value<String?> consumedAt;
  final Value<int?> source;
  final Value<int?> ndbNo;
  final Value<int?> mealType;
  final Value<String> photoUrl;
  final Value<ListAltMeasure?> listAltMeasure;
  final Value<bool> isFavoriteFood;
  final Value<int> rowid;
  const FoodCommonLocalCompanion({
    this.foodName = const Value.absent(),
    this.brandName = const Value.absent(),
    this.servingQty = const Value.absent(),
    this.servingUnit = const Value.absent(),
    this.servingWeightGrams = const Value.absent(),
    this.nfCalories = const Value.absent(),
    this.nfTotalFat = const Value.absent(),
    this.nfSaturatedFat = const Value.absent(),
    this.nfCholesterol = const Value.absent(),
    this.nfSodium = const Value.absent(),
    this.nfTotalCarbohydrate = const Value.absent(),
    this.nfDietaryFiber = const Value.absent(),
    this.nfSugars = const Value.absent(),
    this.nfProtein = const Value.absent(),
    this.nfPotassium = const Value.absent(),
    this.nfP = const Value.absent(),
    this.consumedAt = const Value.absent(),
    this.source = const Value.absent(),
    this.ndbNo = const Value.absent(),
    this.mealType = const Value.absent(),
    this.photoUrl = const Value.absent(),
    this.listAltMeasure = const Value.absent(),
    this.isFavoriteFood = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FoodCommonLocalCompanion.insert({
    required String foodName,
    this.brandName = const Value.absent(),
    this.servingQty = const Value.absent(),
    this.servingUnit = const Value.absent(),
    this.servingWeightGrams = const Value.absent(),
    this.nfCalories = const Value.absent(),
    this.nfTotalFat = const Value.absent(),
    this.nfSaturatedFat = const Value.absent(),
    this.nfCholesterol = const Value.absent(),
    this.nfSodium = const Value.absent(),
    this.nfTotalCarbohydrate = const Value.absent(),
    this.nfDietaryFiber = const Value.absent(),
    this.nfSugars = const Value.absent(),
    this.nfProtein = const Value.absent(),
    this.nfPotassium = const Value.absent(),
    this.nfP = const Value.absent(),
    this.consumedAt = const Value.absent(),
    this.source = const Value.absent(),
    this.ndbNo = const Value.absent(),
    this.mealType = const Value.absent(),
    required String photoUrl,
    this.listAltMeasure = const Value.absent(),
    this.isFavoriteFood = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : foodName = Value(foodName),
        photoUrl = Value(photoUrl);
  static Insertable<FoodCommonLocalData> custom({
    Expression<String>? foodName,
    Expression<String>? brandName,
    Expression<double>? servingQty,
    Expression<String>? servingUnit,
    Expression<double>? servingWeightGrams,
    Expression<double>? nfCalories,
    Expression<double>? nfTotalFat,
    Expression<double>? nfSaturatedFat,
    Expression<double>? nfCholesterol,
    Expression<double>? nfSodium,
    Expression<double>? nfTotalCarbohydrate,
    Expression<double>? nfDietaryFiber,
    Expression<double>? nfSugars,
    Expression<double>? nfProtein,
    Expression<double>? nfPotassium,
    Expression<double>? nfP,
    Expression<String>? consumedAt,
    Expression<int>? source,
    Expression<int>? ndbNo,
    Expression<int>? mealType,
    Expression<String>? photoUrl,
    Expression<String>? listAltMeasure,
    Expression<bool>? isFavoriteFood,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (foodName != null) 'food_name': foodName,
      if (brandName != null) 'brand_name': brandName,
      if (servingQty != null) 'serving_qty': servingQty,
      if (servingUnit != null) 'serving_unit': servingUnit,
      if (servingWeightGrams != null)
        'serving_weight_grams': servingWeightGrams,
      if (nfCalories != null) 'nf_calories': nfCalories,
      if (nfTotalFat != null) 'nf_total_fat': nfTotalFat,
      if (nfSaturatedFat != null) 'nf_saturated_fat': nfSaturatedFat,
      if (nfCholesterol != null) 'nf_cholesterol': nfCholesterol,
      if (nfSodium != null) 'nf_sodium': nfSodium,
      if (nfTotalCarbohydrate != null)
        'nf_total_carbohydrate': nfTotalCarbohydrate,
      if (nfDietaryFiber != null) 'nf_dietary_fiber': nfDietaryFiber,
      if (nfSugars != null) 'nf_sugars': nfSugars,
      if (nfProtein != null) 'nf_protein': nfProtein,
      if (nfPotassium != null) 'nf_potassium': nfPotassium,
      if (nfP != null) 'nf_p': nfP,
      if (consumedAt != null) 'consumed_at': consumedAt,
      if (source != null) 'source': source,
      if (ndbNo != null) 'ndb_no': ndbNo,
      if (mealType != null) 'meal_type': mealType,
      if (photoUrl != null) 'photo_url': photoUrl,
      if (listAltMeasure != null) 'list_alt_measure': listAltMeasure,
      if (isFavoriteFood != null) 'is_favorite_food': isFavoriteFood,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FoodCommonLocalCompanion copyWith(
      {Value<String>? foodName,
      Value<String?>? brandName,
      Value<double?>? servingQty,
      Value<String?>? servingUnit,
      Value<double?>? servingWeightGrams,
      Value<double?>? nfCalories,
      Value<double?>? nfTotalFat,
      Value<double?>? nfSaturatedFat,
      Value<double?>? nfCholesterol,
      Value<double?>? nfSodium,
      Value<double?>? nfTotalCarbohydrate,
      Value<double?>? nfDietaryFiber,
      Value<double?>? nfSugars,
      Value<double?>? nfProtein,
      Value<double?>? nfPotassium,
      Value<double?>? nfP,
      Value<String?>? consumedAt,
      Value<int?>? source,
      Value<int?>? ndbNo,
      Value<int?>? mealType,
      Value<String>? photoUrl,
      Value<ListAltMeasure?>? listAltMeasure,
      Value<bool>? isFavoriteFood,
      Value<int>? rowid}) {
    return FoodCommonLocalCompanion(
      foodName: foodName ?? this.foodName,
      brandName: brandName ?? this.brandName,
      servingQty: servingQty ?? this.servingQty,
      servingUnit: servingUnit ?? this.servingUnit,
      servingWeightGrams: servingWeightGrams ?? this.servingWeightGrams,
      nfCalories: nfCalories ?? this.nfCalories,
      nfTotalFat: nfTotalFat ?? this.nfTotalFat,
      nfSaturatedFat: nfSaturatedFat ?? this.nfSaturatedFat,
      nfCholesterol: nfCholesterol ?? this.nfCholesterol,
      nfSodium: nfSodium ?? this.nfSodium,
      nfTotalCarbohydrate: nfTotalCarbohydrate ?? this.nfTotalCarbohydrate,
      nfDietaryFiber: nfDietaryFiber ?? this.nfDietaryFiber,
      nfSugars: nfSugars ?? this.nfSugars,
      nfProtein: nfProtein ?? this.nfProtein,
      nfPotassium: nfPotassium ?? this.nfPotassium,
      nfP: nfP ?? this.nfP,
      consumedAt: consumedAt ?? this.consumedAt,
      source: source ?? this.source,
      ndbNo: ndbNo ?? this.ndbNo,
      mealType: mealType ?? this.mealType,
      photoUrl: photoUrl ?? this.photoUrl,
      listAltMeasure: listAltMeasure ?? this.listAltMeasure,
      isFavoriteFood: isFavoriteFood ?? this.isFavoriteFood,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (foodName.present) {
      map['food_name'] = Variable<String>(foodName.value);
    }
    if (brandName.present) {
      map['brand_name'] = Variable<String>(brandName.value);
    }
    if (servingQty.present) {
      map['serving_qty'] = Variable<double>(servingQty.value);
    }
    if (servingUnit.present) {
      map['serving_unit'] = Variable<String>(servingUnit.value);
    }
    if (servingWeightGrams.present) {
      map['serving_weight_grams'] = Variable<double>(servingWeightGrams.value);
    }
    if (nfCalories.present) {
      map['nf_calories'] = Variable<double>(nfCalories.value);
    }
    if (nfTotalFat.present) {
      map['nf_total_fat'] = Variable<double>(nfTotalFat.value);
    }
    if (nfSaturatedFat.present) {
      map['nf_saturated_fat'] = Variable<double>(nfSaturatedFat.value);
    }
    if (nfCholesterol.present) {
      map['nf_cholesterol'] = Variable<double>(nfCholesterol.value);
    }
    if (nfSodium.present) {
      map['nf_sodium'] = Variable<double>(nfSodium.value);
    }
    if (nfTotalCarbohydrate.present) {
      map['nf_total_carbohydrate'] =
          Variable<double>(nfTotalCarbohydrate.value);
    }
    if (nfDietaryFiber.present) {
      map['nf_dietary_fiber'] = Variable<double>(nfDietaryFiber.value);
    }
    if (nfSugars.present) {
      map['nf_sugars'] = Variable<double>(nfSugars.value);
    }
    if (nfProtein.present) {
      map['nf_protein'] = Variable<double>(nfProtein.value);
    }
    if (nfPotassium.present) {
      map['nf_potassium'] = Variable<double>(nfPotassium.value);
    }
    if (nfP.present) {
      map['nf_p'] = Variable<double>(nfP.value);
    }
    if (consumedAt.present) {
      map['consumed_at'] = Variable<String>(consumedAt.value);
    }
    if (source.present) {
      map['source'] = Variable<int>(source.value);
    }
    if (ndbNo.present) {
      map['ndb_no'] = Variable<int>(ndbNo.value);
    }
    if (mealType.present) {
      map['meal_type'] = Variable<int>(mealType.value);
    }
    if (photoUrl.present) {
      map['photo_url'] = Variable<String>(photoUrl.value);
    }
    if (listAltMeasure.present) {
      final converter = $FoodCommonLocalTable.$converterlistAltMeasuren;

      map['list_alt_measure'] =
          Variable<String>(converter.toSql(listAltMeasure.value));
    }
    if (isFavoriteFood.present) {
      map['is_favorite_food'] = Variable<bool>(isFavoriteFood.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodCommonLocalCompanion(')
          ..write('foodName: $foodName, ')
          ..write('brandName: $brandName, ')
          ..write('servingQty: $servingQty, ')
          ..write('servingUnit: $servingUnit, ')
          ..write('servingWeightGrams: $servingWeightGrams, ')
          ..write('nfCalories: $nfCalories, ')
          ..write('nfTotalFat: $nfTotalFat, ')
          ..write('nfSaturatedFat: $nfSaturatedFat, ')
          ..write('nfCholesterol: $nfCholesterol, ')
          ..write('nfSodium: $nfSodium, ')
          ..write('nfTotalCarbohydrate: $nfTotalCarbohydrate, ')
          ..write('nfDietaryFiber: $nfDietaryFiber, ')
          ..write('nfSugars: $nfSugars, ')
          ..write('nfProtein: $nfProtein, ')
          ..write('nfPotassium: $nfPotassium, ')
          ..write('nfP: $nfP, ')
          ..write('consumedAt: $consumedAt, ')
          ..write('source: $source, ')
          ..write('ndbNo: $ndbNo, ')
          ..write('mealType: $mealType, ')
          ..write('photoUrl: $photoUrl, ')
          ..write('listAltMeasure: $listAltMeasure, ')
          ..write('isFavoriteFood: $isFavoriteFood, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DishTable extends Dish with TableInfo<$DishTable, DishData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DishTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _foodNameMeta =
      const VerificationMeta('foodName');
  @override
  late final GeneratedColumn<String> foodName = GeneratedColumn<String>(
      'food_name', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'REFERENCES favorite_food_common(food_name)');
  static const VerificationMeta _mealTypeMeta =
      const VerificationMeta('mealType');
  @override
  late final GeneratedColumn<int> mealType = GeneratedColumn<int>(
      'meal_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isEatenMeta =
      const VerificationMeta('isEaten');
  @override
  late final GeneratedColumn<bool> isEaten = GeneratedColumn<bool>(
      'is_eaten', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_eaten" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _altMeasureMeta =
      const VerificationMeta('altMeasure');
  @override
  late final GeneratedColumnWithTypeConverter<AltMeasure?, String> altMeasure =
      GeneratedColumn<String>('alt_measure', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<AltMeasure?>($DishTable.$converteraltMeasuren);
  static const VerificationMeta _servingQtyMeta =
      const VerificationMeta('servingQty');
  @override
  late final GeneratedColumn<int> servingQty = GeneratedColumn<int>(
      'serving_qty', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, foodName, mealType, date, isEaten, altMeasure, servingQty];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dish';
  @override
  VerificationContext validateIntegrity(Insertable<DishData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('food_name')) {
      context.handle(_foodNameMeta,
          foodName.isAcceptableOrUnknown(data['food_name']!, _foodNameMeta));
    }
    if (data.containsKey('meal_type')) {
      context.handle(_mealTypeMeta,
          mealType.isAcceptableOrUnknown(data['meal_type']!, _mealTypeMeta));
    } else if (isInserting) {
      context.missing(_mealTypeMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('is_eaten')) {
      context.handle(_isEatenMeta,
          isEaten.isAcceptableOrUnknown(data['is_eaten']!, _isEatenMeta));
    }
    context.handle(_altMeasureMeta, const VerificationResult.success());
    if (data.containsKey('serving_qty')) {
      context.handle(
          _servingQtyMeta,
          servingQty.isAcceptableOrUnknown(
              data['serving_qty']!, _servingQtyMeta));
    } else if (isInserting) {
      context.missing(_servingQtyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DishData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DishData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      foodName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}food_name']),
      mealType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}meal_type'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      isEaten: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_eaten'])!,
      altMeasure: $DishTable.$converteraltMeasuren.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}alt_measure'])),
      servingQty: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}serving_qty'])!,
    );
  }

  @override
  $DishTable createAlias(String alias) {
    return $DishTable(attachedDatabase, alias);
  }

  static TypeConverter<AltMeasure, String> $converteraltMeasure =
      const AltMeasureConverter();
  static TypeConverter<AltMeasure?, String?> $converteraltMeasuren =
      NullAwareTypeConverter.wrap($converteraltMeasure);
}

class DishData extends DataClass implements Insertable<DishData> {
  final int id;
  final String? foodName;
  final int mealType;
  final DateTime date;
  final bool isEaten;
  final AltMeasure? altMeasure;
  final int servingQty;
  const DishData(
      {required this.id,
      this.foodName,
      required this.mealType,
      required this.date,
      required this.isEaten,
      this.altMeasure,
      required this.servingQty});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || foodName != null) {
      map['food_name'] = Variable<String>(foodName);
    }
    map['meal_type'] = Variable<int>(mealType);
    map['date'] = Variable<DateTime>(date);
    map['is_eaten'] = Variable<bool>(isEaten);
    if (!nullToAbsent || altMeasure != null) {
      final converter = $DishTable.$converteraltMeasuren;
      map['alt_measure'] = Variable<String>(converter.toSql(altMeasure));
    }
    map['serving_qty'] = Variable<int>(servingQty);
    return map;
  }

  DishCompanion toCompanion(bool nullToAbsent) {
    return DishCompanion(
      id: Value(id),
      foodName: foodName == null && nullToAbsent
          ? const Value.absent()
          : Value(foodName),
      mealType: Value(mealType),
      date: Value(date),
      isEaten: Value(isEaten),
      altMeasure: altMeasure == null && nullToAbsent
          ? const Value.absent()
          : Value(altMeasure),
      servingQty: Value(servingQty),
    );
  }

  factory DishData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DishData(
      id: serializer.fromJson<int>(json['id']),
      foodName: serializer.fromJson<String?>(json['foodName']),
      mealType: serializer.fromJson<int>(json['mealType']),
      date: serializer.fromJson<DateTime>(json['date']),
      isEaten: serializer.fromJson<bool>(json['isEaten']),
      altMeasure: serializer.fromJson<AltMeasure?>(json['altMeasure']),
      servingQty: serializer.fromJson<int>(json['servingQty']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'foodName': serializer.toJson<String?>(foodName),
      'mealType': serializer.toJson<int>(mealType),
      'date': serializer.toJson<DateTime>(date),
      'isEaten': serializer.toJson<bool>(isEaten),
      'altMeasure': serializer.toJson<AltMeasure?>(altMeasure),
      'servingQty': serializer.toJson<int>(servingQty),
    };
  }

  DishData copyWith(
          {int? id,
          Value<String?> foodName = const Value.absent(),
          int? mealType,
          DateTime? date,
          bool? isEaten,
          Value<AltMeasure?> altMeasure = const Value.absent(),
          int? servingQty}) =>
      DishData(
        id: id ?? this.id,
        foodName: foodName.present ? foodName.value : this.foodName,
        mealType: mealType ?? this.mealType,
        date: date ?? this.date,
        isEaten: isEaten ?? this.isEaten,
        altMeasure: altMeasure.present ? altMeasure.value : this.altMeasure,
        servingQty: servingQty ?? this.servingQty,
      );
  @override
  String toString() {
    return (StringBuffer('DishData(')
          ..write('id: $id, ')
          ..write('foodName: $foodName, ')
          ..write('mealType: $mealType, ')
          ..write('date: $date, ')
          ..write('isEaten: $isEaten, ')
          ..write('altMeasure: $altMeasure, ')
          ..write('servingQty: $servingQty')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, foodName, mealType, date, isEaten, altMeasure, servingQty);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DishData &&
          other.id == this.id &&
          other.foodName == this.foodName &&
          other.mealType == this.mealType &&
          other.date == this.date &&
          other.isEaten == this.isEaten &&
          other.altMeasure == this.altMeasure &&
          other.servingQty == this.servingQty);
}

class DishCompanion extends UpdateCompanion<DishData> {
  final Value<int> id;
  final Value<String?> foodName;
  final Value<int> mealType;
  final Value<DateTime> date;
  final Value<bool> isEaten;
  final Value<AltMeasure?> altMeasure;
  final Value<int> servingQty;
  const DishCompanion({
    this.id = const Value.absent(),
    this.foodName = const Value.absent(),
    this.mealType = const Value.absent(),
    this.date = const Value.absent(),
    this.isEaten = const Value.absent(),
    this.altMeasure = const Value.absent(),
    this.servingQty = const Value.absent(),
  });
  DishCompanion.insert({
    this.id = const Value.absent(),
    this.foodName = const Value.absent(),
    required int mealType,
    required DateTime date,
    this.isEaten = const Value.absent(),
    this.altMeasure = const Value.absent(),
    required int servingQty,
  })  : mealType = Value(mealType),
        date = Value(date),
        servingQty = Value(servingQty);
  static Insertable<DishData> custom({
    Expression<int>? id,
    Expression<String>? foodName,
    Expression<int>? mealType,
    Expression<DateTime>? date,
    Expression<bool>? isEaten,
    Expression<String>? altMeasure,
    Expression<int>? servingQty,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (foodName != null) 'food_name': foodName,
      if (mealType != null) 'meal_type': mealType,
      if (date != null) 'date': date,
      if (isEaten != null) 'is_eaten': isEaten,
      if (altMeasure != null) 'alt_measure': altMeasure,
      if (servingQty != null) 'serving_qty': servingQty,
    });
  }

  DishCompanion copyWith(
      {Value<int>? id,
      Value<String?>? foodName,
      Value<int>? mealType,
      Value<DateTime>? date,
      Value<bool>? isEaten,
      Value<AltMeasure?>? altMeasure,
      Value<int>? servingQty}) {
    return DishCompanion(
      id: id ?? this.id,
      foodName: foodName ?? this.foodName,
      mealType: mealType ?? this.mealType,
      date: date ?? this.date,
      isEaten: isEaten ?? this.isEaten,
      altMeasure: altMeasure ?? this.altMeasure,
      servingQty: servingQty ?? this.servingQty,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (foodName.present) {
      map['food_name'] = Variable<String>(foodName.value);
    }
    if (mealType.present) {
      map['meal_type'] = Variable<int>(mealType.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (isEaten.present) {
      map['is_eaten'] = Variable<bool>(isEaten.value);
    }
    if (altMeasure.present) {
      final converter = $DishTable.$converteraltMeasuren;

      map['alt_measure'] = Variable<String>(converter.toSql(altMeasure.value));
    }
    if (servingQty.present) {
      map['serving_qty'] = Variable<int>(servingQty.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DishCompanion(')
          ..write('id: $id, ')
          ..write('foodName: $foodName, ')
          ..write('mealType: $mealType, ')
          ..write('date: $date, ')
          ..write('isEaten: $isEaten, ')
          ..write('altMeasure: $altMeasure, ')
          ..write('servingQty: $servingQty')
          ..write(')'))
        .toString();
  }
}

class $UserTable extends User with TableInfo<$UserTable, UserData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _fullNameMeta =
      const VerificationMeta('fullName');
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
      'full_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _joinDateMeta =
      const VerificationMeta('joinDate');
  @override
  late final GeneratedColumn<int> joinDate = GeneratedColumn<int>(
      'join_date', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _sexMeta = const VerificationMeta('sex');
  @override
  late final GeneratedColumn<bool> sex = GeneratedColumn<bool>(
      'sex', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("sex" IN (0, 1))'));
  static const VerificationMeta _birthDayMeta =
      const VerificationMeta('birthDay');
  @override
  late final GeneratedColumn<DateTime> birthDay = GeneratedColumn<DateTime>(
      'birth_day', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<double> height = GeneratedColumn<double>(
      'height', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double> weight = GeneratedColumn<double>(
      'weight', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _activityLevelMeta =
      const VerificationMeta('activityLevel');
  @override
  late final GeneratedColumn<int> activityLevel = GeneratedColumn<int>(
      'activity_level', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _completeWeeksTargetMeta =
      const VerificationMeta('completeWeeksTarget');
  @override
  late final GeneratedColumn<int> completeWeeksTarget = GeneratedColumn<int>(
      'complete_weeks_target', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _weightTargetMeta =
      const VerificationMeta('weightTarget');
  @override
  late final GeneratedColumn<double> weightTarget = GeneratedColumn<double>(
      'weight_target', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _startTimeTargetMeta =
      const VerificationMeta('startTimeTarget');
  @override
  late final GeneratedColumn<DateTime> startTimeTarget =
      GeneratedColumn<DateTime>('start_time_target', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _countryMeta =
      const VerificationMeta('country');
  @override
  late final GeneratedColumnWithTypeConverter<CountryLocal?, String> country =
      GeneratedColumn<String>('country', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<CountryLocal?>($UserTable.$convertercountryn);
  @override
  List<GeneratedColumn> get $columns => [
        fullName,
        joinDate,
        sex,
        birthDay,
        height,
        weight,
        activityLevel,
        completeWeeksTarget,
        weightTarget,
        startTimeTarget,
        country
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user';
  @override
  VerificationContext validateIntegrity(Insertable<UserData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('join_date')) {
      context.handle(_joinDateMeta,
          joinDate.isAcceptableOrUnknown(data['join_date']!, _joinDateMeta));
    }
    if (data.containsKey('sex')) {
      context.handle(
          _sexMeta, sex.isAcceptableOrUnknown(data['sex']!, _sexMeta));
    } else if (isInserting) {
      context.missing(_sexMeta);
    }
    if (data.containsKey('birth_day')) {
      context.handle(_birthDayMeta,
          birthDay.isAcceptableOrUnknown(data['birth_day']!, _birthDayMeta));
    } else if (isInserting) {
      context.missing(_birthDayMeta);
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    } else if (isInserting) {
      context.missing(_heightMeta);
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight']!, _weightMeta));
    } else if (isInserting) {
      context.missing(_weightMeta);
    }
    if (data.containsKey('activity_level')) {
      context.handle(
          _activityLevelMeta,
          activityLevel.isAcceptableOrUnknown(
              data['activity_level']!, _activityLevelMeta));
    } else if (isInserting) {
      context.missing(_activityLevelMeta);
    }
    if (data.containsKey('complete_weeks_target')) {
      context.handle(
          _completeWeeksTargetMeta,
          completeWeeksTarget.isAcceptableOrUnknown(
              data['complete_weeks_target']!, _completeWeeksTargetMeta));
    } else if (isInserting) {
      context.missing(_completeWeeksTargetMeta);
    }
    if (data.containsKey('weight_target')) {
      context.handle(
          _weightTargetMeta,
          weightTarget.isAcceptableOrUnknown(
              data['weight_target']!, _weightTargetMeta));
    } else if (isInserting) {
      context.missing(_weightTargetMeta);
    }
    if (data.containsKey('start_time_target')) {
      context.handle(
          _startTimeTargetMeta,
          startTimeTarget.isAcceptableOrUnknown(
              data['start_time_target']!, _startTimeTargetMeta));
    } else if (isInserting) {
      context.missing(_startTimeTargetMeta);
    }
    context.handle(_countryMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {joinDate};
  @override
  UserData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserData(
      fullName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}full_name'])!,
      joinDate: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}join_date'])!,
      sex: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}sex'])!,
      birthDay: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}birth_day'])!,
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}height'])!,
      weight: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}weight'])!,
      activityLevel: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}activity_level'])!,
      completeWeeksTarget: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}complete_weeks_target'])!,
      weightTarget: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}weight_target'])!,
      startTimeTarget: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}start_time_target'])!,
      country: $UserTable.$convertercountryn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country'])),
    );
  }

  @override
  $UserTable createAlias(String alias) {
    return $UserTable(attachedDatabase, alias);
  }

  static TypeConverter<CountryLocal, String> $convertercountry =
      const CountryConverter();
  static TypeConverter<CountryLocal?, String?> $convertercountryn =
      NullAwareTypeConverter.wrap($convertercountry);
}

class UserData extends DataClass implements Insertable<UserData> {
  final String fullName;
  final int joinDate;
  final bool sex;
  final DateTime birthDay;
  final double height;
  final double weight;
  final int activityLevel;
  final int completeWeeksTarget;
  final double weightTarget;
  final DateTime startTimeTarget;
  final CountryLocal? country;
  const UserData(
      {required this.fullName,
      required this.joinDate,
      required this.sex,
      required this.birthDay,
      required this.height,
      required this.weight,
      required this.activityLevel,
      required this.completeWeeksTarget,
      required this.weightTarget,
      required this.startTimeTarget,
      this.country});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['full_name'] = Variable<String>(fullName);
    map['join_date'] = Variable<int>(joinDate);
    map['sex'] = Variable<bool>(sex);
    map['birth_day'] = Variable<DateTime>(birthDay);
    map['height'] = Variable<double>(height);
    map['weight'] = Variable<double>(weight);
    map['activity_level'] = Variable<int>(activityLevel);
    map['complete_weeks_target'] = Variable<int>(completeWeeksTarget);
    map['weight_target'] = Variable<double>(weightTarget);
    map['start_time_target'] = Variable<DateTime>(startTimeTarget);
    if (!nullToAbsent || country != null) {
      final converter = $UserTable.$convertercountryn;
      map['country'] = Variable<String>(converter.toSql(country));
    }
    return map;
  }

  UserCompanion toCompanion(bool nullToAbsent) {
    return UserCompanion(
      fullName: Value(fullName),
      joinDate: Value(joinDate),
      sex: Value(sex),
      birthDay: Value(birthDay),
      height: Value(height),
      weight: Value(weight),
      activityLevel: Value(activityLevel),
      completeWeeksTarget: Value(completeWeeksTarget),
      weightTarget: Value(weightTarget),
      startTimeTarget: Value(startTimeTarget),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
    );
  }

  factory UserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserData(
      fullName: serializer.fromJson<String>(json['fullName']),
      joinDate: serializer.fromJson<int>(json['joinDate']),
      sex: serializer.fromJson<bool>(json['sex']),
      birthDay: serializer.fromJson<DateTime>(json['birthDay']),
      height: serializer.fromJson<double>(json['height']),
      weight: serializer.fromJson<double>(json['weight']),
      activityLevel: serializer.fromJson<int>(json['activityLevel']),
      completeWeeksTarget:
          serializer.fromJson<int>(json['completeWeeksTarget']),
      weightTarget: serializer.fromJson<double>(json['weightTarget']),
      startTimeTarget: serializer.fromJson<DateTime>(json['startTimeTarget']),
      country: serializer.fromJson<CountryLocal?>(json['country']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'fullName': serializer.toJson<String>(fullName),
      'joinDate': serializer.toJson<int>(joinDate),
      'sex': serializer.toJson<bool>(sex),
      'birthDay': serializer.toJson<DateTime>(birthDay),
      'height': serializer.toJson<double>(height),
      'weight': serializer.toJson<double>(weight),
      'activityLevel': serializer.toJson<int>(activityLevel),
      'completeWeeksTarget': serializer.toJson<int>(completeWeeksTarget),
      'weightTarget': serializer.toJson<double>(weightTarget),
      'startTimeTarget': serializer.toJson<DateTime>(startTimeTarget),
      'country': serializer.toJson<CountryLocal?>(country),
    };
  }

  UserData copyWith(
          {String? fullName,
          int? joinDate,
          bool? sex,
          DateTime? birthDay,
          double? height,
          double? weight,
          int? activityLevel,
          int? completeWeeksTarget,
          double? weightTarget,
          DateTime? startTimeTarget,
          Value<CountryLocal?> country = const Value.absent()}) =>
      UserData(
        fullName: fullName ?? this.fullName,
        joinDate: joinDate ?? this.joinDate,
        sex: sex ?? this.sex,
        birthDay: birthDay ?? this.birthDay,
        height: height ?? this.height,
        weight: weight ?? this.weight,
        activityLevel: activityLevel ?? this.activityLevel,
        completeWeeksTarget: completeWeeksTarget ?? this.completeWeeksTarget,
        weightTarget: weightTarget ?? this.weightTarget,
        startTimeTarget: startTimeTarget ?? this.startTimeTarget,
        country: country.present ? country.value : this.country,
      );
  @override
  String toString() {
    return (StringBuffer('UserData(')
          ..write('fullName: $fullName, ')
          ..write('joinDate: $joinDate, ')
          ..write('sex: $sex, ')
          ..write('birthDay: $birthDay, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('activityLevel: $activityLevel, ')
          ..write('completeWeeksTarget: $completeWeeksTarget, ')
          ..write('weightTarget: $weightTarget, ')
          ..write('startTimeTarget: $startTimeTarget, ')
          ..write('country: $country')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      fullName,
      joinDate,
      sex,
      birthDay,
      height,
      weight,
      activityLevel,
      completeWeeksTarget,
      weightTarget,
      startTimeTarget,
      country);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserData &&
          other.fullName == this.fullName &&
          other.joinDate == this.joinDate &&
          other.sex == this.sex &&
          other.birthDay == this.birthDay &&
          other.height == this.height &&
          other.weight == this.weight &&
          other.activityLevel == this.activityLevel &&
          other.completeWeeksTarget == this.completeWeeksTarget &&
          other.weightTarget == this.weightTarget &&
          other.startTimeTarget == this.startTimeTarget &&
          other.country == this.country);
}

class UserCompanion extends UpdateCompanion<UserData> {
  final Value<String> fullName;
  final Value<int> joinDate;
  final Value<bool> sex;
  final Value<DateTime> birthDay;
  final Value<double> height;
  final Value<double> weight;
  final Value<int> activityLevel;
  final Value<int> completeWeeksTarget;
  final Value<double> weightTarget;
  final Value<DateTime> startTimeTarget;
  final Value<CountryLocal?> country;
  const UserCompanion({
    this.fullName = const Value.absent(),
    this.joinDate = const Value.absent(),
    this.sex = const Value.absent(),
    this.birthDay = const Value.absent(),
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
    this.activityLevel = const Value.absent(),
    this.completeWeeksTarget = const Value.absent(),
    this.weightTarget = const Value.absent(),
    this.startTimeTarget = const Value.absent(),
    this.country = const Value.absent(),
  });
  UserCompanion.insert({
    required String fullName,
    this.joinDate = const Value.absent(),
    required bool sex,
    required DateTime birthDay,
    required double height,
    required double weight,
    required int activityLevel,
    required int completeWeeksTarget,
    required double weightTarget,
    required DateTime startTimeTarget,
    this.country = const Value.absent(),
  })  : fullName = Value(fullName),
        sex = Value(sex),
        birthDay = Value(birthDay),
        height = Value(height),
        weight = Value(weight),
        activityLevel = Value(activityLevel),
        completeWeeksTarget = Value(completeWeeksTarget),
        weightTarget = Value(weightTarget),
        startTimeTarget = Value(startTimeTarget);
  static Insertable<UserData> custom({
    Expression<String>? fullName,
    Expression<int>? joinDate,
    Expression<bool>? sex,
    Expression<DateTime>? birthDay,
    Expression<double>? height,
    Expression<double>? weight,
    Expression<int>? activityLevel,
    Expression<int>? completeWeeksTarget,
    Expression<double>? weightTarget,
    Expression<DateTime>? startTimeTarget,
    Expression<String>? country,
  }) {
    return RawValuesInsertable({
      if (fullName != null) 'full_name': fullName,
      if (joinDate != null) 'join_date': joinDate,
      if (sex != null) 'sex': sex,
      if (birthDay != null) 'birth_day': birthDay,
      if (height != null) 'height': height,
      if (weight != null) 'weight': weight,
      if (activityLevel != null) 'activity_level': activityLevel,
      if (completeWeeksTarget != null)
        'complete_weeks_target': completeWeeksTarget,
      if (weightTarget != null) 'weight_target': weightTarget,
      if (startTimeTarget != null) 'start_time_target': startTimeTarget,
      if (country != null) 'country': country,
    });
  }

  UserCompanion copyWith(
      {Value<String>? fullName,
      Value<int>? joinDate,
      Value<bool>? sex,
      Value<DateTime>? birthDay,
      Value<double>? height,
      Value<double>? weight,
      Value<int>? activityLevel,
      Value<int>? completeWeeksTarget,
      Value<double>? weightTarget,
      Value<DateTime>? startTimeTarget,
      Value<CountryLocal?>? country}) {
    return UserCompanion(
      fullName: fullName ?? this.fullName,
      joinDate: joinDate ?? this.joinDate,
      sex: sex ?? this.sex,
      birthDay: birthDay ?? this.birthDay,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      activityLevel: activityLevel ?? this.activityLevel,
      completeWeeksTarget: completeWeeksTarget ?? this.completeWeeksTarget,
      weightTarget: weightTarget ?? this.weightTarget,
      startTimeTarget: startTimeTarget ?? this.startTimeTarget,
      country: country ?? this.country,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (joinDate.present) {
      map['join_date'] = Variable<int>(joinDate.value);
    }
    if (sex.present) {
      map['sex'] = Variable<bool>(sex.value);
    }
    if (birthDay.present) {
      map['birth_day'] = Variable<DateTime>(birthDay.value);
    }
    if (height.present) {
      map['height'] = Variable<double>(height.value);
    }
    if (weight.present) {
      map['weight'] = Variable<double>(weight.value);
    }
    if (activityLevel.present) {
      map['activity_level'] = Variable<int>(activityLevel.value);
    }
    if (completeWeeksTarget.present) {
      map['complete_weeks_target'] = Variable<int>(completeWeeksTarget.value);
    }
    if (weightTarget.present) {
      map['weight_target'] = Variable<double>(weightTarget.value);
    }
    if (startTimeTarget.present) {
      map['start_time_target'] = Variable<DateTime>(startTimeTarget.value);
    }
    if (country.present) {
      final converter = $UserTable.$convertercountryn;

      map['country'] = Variable<String>(converter.toSql(country.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserCompanion(')
          ..write('fullName: $fullName, ')
          ..write('joinDate: $joinDate, ')
          ..write('sex: $sex, ')
          ..write('birthDay: $birthDay, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('activityLevel: $activityLevel, ')
          ..write('completeWeeksTarget: $completeWeeksTarget, ')
          ..write('weightTarget: $weightTarget, ')
          ..write('startTimeTarget: $startTimeTarget, ')
          ..write('country: $country')
          ..write(')'))
        .toString();
  }
}

class $MealMenuSuggestionTable extends MealMenuSuggestion
    with TableInfo<$MealMenuSuggestionTable, MealMenuSuggestionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MealMenuSuggestionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  @override
  late final GeneratedColumn<int> createdTime = GeneratedColumn<int>(
      'created_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _mealTypeMeta =
      const VerificationMeta('mealType');
  @override
  late final GeneratedColumn<int> mealType = GeneratedColumn<int>(
      'meal_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _listFoodMeta =
      const VerificationMeta('listFood');
  @override
  late final GeneratedColumnWithTypeConverter<ListFoodSuggestionEntity, String>
      listFood = GeneratedColumn<String>('list_food', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<ListFoodSuggestionEntity>(
              $MealMenuSuggestionTable.$converterlistFood);
  @override
  List<GeneratedColumn> get $columns =>
      [name, note, createdTime, mealType, listFood];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'meal_menu_suggestion';
  @override
  VerificationContext validateIntegrity(
      Insertable<MealMenuSuggestionData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    }
    if (data.containsKey('meal_type')) {
      context.handle(_mealTypeMeta,
          mealType.isAcceptableOrUnknown(data['meal_type']!, _mealTypeMeta));
    } else if (isInserting) {
      context.missing(_mealTypeMeta);
    }
    context.handle(_listFoodMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {createdTime};
  @override
  MealMenuSuggestionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MealMenuSuggestionData(
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      createdTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}created_time'])!,
      mealType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}meal_type'])!,
      listFood: $MealMenuSuggestionTable.$converterlistFood.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}list_food'])!),
    );
  }

  @override
  $MealMenuSuggestionTable createAlias(String alias) {
    return $MealMenuSuggestionTable(attachedDatabase, alias);
  }

  static TypeConverter<ListFoodSuggestionEntity, String> $converterlistFood =
      const ListFoodSuggestionEntityConverter();
}

class MealMenuSuggestionData extends DataClass
    implements Insertable<MealMenuSuggestionData> {
  final String name;
  final String note;
  final int createdTime;
  final int mealType;
  final ListFoodSuggestionEntity listFood;
  const MealMenuSuggestionData(
      {required this.name,
      required this.note,
      required this.createdTime,
      required this.mealType,
      required this.listFood});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['name'] = Variable<String>(name);
    map['note'] = Variable<String>(note);
    map['created_time'] = Variable<int>(createdTime);
    map['meal_type'] = Variable<int>(mealType);
    {
      final converter = $MealMenuSuggestionTable.$converterlistFood;
      map['list_food'] = Variable<String>(converter.toSql(listFood));
    }
    return map;
  }

  MealMenuSuggestionCompanion toCompanion(bool nullToAbsent) {
    return MealMenuSuggestionCompanion(
      name: Value(name),
      note: Value(note),
      createdTime: Value(createdTime),
      mealType: Value(mealType),
      listFood: Value(listFood),
    );
  }

  factory MealMenuSuggestionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MealMenuSuggestionData(
      name: serializer.fromJson<String>(json['name']),
      note: serializer.fromJson<String>(json['note']),
      createdTime: serializer.fromJson<int>(json['createdTime']),
      mealType: serializer.fromJson<int>(json['mealType']),
      listFood: serializer.fromJson<ListFoodSuggestionEntity>(json['listFood']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
      'note': serializer.toJson<String>(note),
      'createdTime': serializer.toJson<int>(createdTime),
      'mealType': serializer.toJson<int>(mealType),
      'listFood': serializer.toJson<ListFoodSuggestionEntity>(listFood),
    };
  }

  MealMenuSuggestionData copyWith(
          {String? name,
          String? note,
          int? createdTime,
          int? mealType,
          ListFoodSuggestionEntity? listFood}) =>
      MealMenuSuggestionData(
        name: name ?? this.name,
        note: note ?? this.note,
        createdTime: createdTime ?? this.createdTime,
        mealType: mealType ?? this.mealType,
        listFood: listFood ?? this.listFood,
      );
  @override
  String toString() {
    return (StringBuffer('MealMenuSuggestionData(')
          ..write('name: $name, ')
          ..write('note: $note, ')
          ..write('createdTime: $createdTime, ')
          ..write('mealType: $mealType, ')
          ..write('listFood: $listFood')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(name, note, createdTime, mealType, listFood);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MealMenuSuggestionData &&
          other.name == this.name &&
          other.note == this.note &&
          other.createdTime == this.createdTime &&
          other.mealType == this.mealType &&
          other.listFood == this.listFood);
}

class MealMenuSuggestionCompanion
    extends UpdateCompanion<MealMenuSuggestionData> {
  final Value<String> name;
  final Value<String> note;
  final Value<int> createdTime;
  final Value<int> mealType;
  final Value<ListFoodSuggestionEntity> listFood;
  const MealMenuSuggestionCompanion({
    this.name = const Value.absent(),
    this.note = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.mealType = const Value.absent(),
    this.listFood = const Value.absent(),
  });
  MealMenuSuggestionCompanion.insert({
    required String name,
    required String note,
    this.createdTime = const Value.absent(),
    required int mealType,
    required ListFoodSuggestionEntity listFood,
  })  : name = Value(name),
        note = Value(note),
        mealType = Value(mealType),
        listFood = Value(listFood);
  static Insertable<MealMenuSuggestionData> custom({
    Expression<String>? name,
    Expression<String>? note,
    Expression<int>? createdTime,
    Expression<int>? mealType,
    Expression<String>? listFood,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (note != null) 'note': note,
      if (createdTime != null) 'created_time': createdTime,
      if (mealType != null) 'meal_type': mealType,
      if (listFood != null) 'list_food': listFood,
    });
  }

  MealMenuSuggestionCompanion copyWith(
      {Value<String>? name,
      Value<String>? note,
      Value<int>? createdTime,
      Value<int>? mealType,
      Value<ListFoodSuggestionEntity>? listFood}) {
    return MealMenuSuggestionCompanion(
      name: name ?? this.name,
      note: note ?? this.note,
      createdTime: createdTime ?? this.createdTime,
      mealType: mealType ?? this.mealType,
      listFood: listFood ?? this.listFood,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<int>(createdTime.value);
    }
    if (mealType.present) {
      map['meal_type'] = Variable<int>(mealType.value);
    }
    if (listFood.present) {
      final converter = $MealMenuSuggestionTable.$converterlistFood;

      map['list_food'] = Variable<String>(converter.toSql(listFood.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MealMenuSuggestionCompanion(')
          ..write('name: $name, ')
          ..write('note: $note, ')
          ..write('createdTime: $createdTime, ')
          ..write('mealType: $mealType, ')
          ..write('listFood: $listFood')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $FoodCommonLocalTable foodCommonLocal =
      $FoodCommonLocalTable(this);
  late final $DishTable dish = $DishTable(this);
  late final $UserTable user = $UserTable(this);
  late final $MealMenuSuggestionTable mealMenuSuggestion =
      $MealMenuSuggestionTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [foodCommonLocal, dish, user, mealMenuSuggestion];
}
