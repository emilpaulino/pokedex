// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $PokemonSpeciesTable extends PokemonSpecies
    with TableInfo<$PokemonSpeciesTable, PokemonSpeciesRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonSpeciesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _displayNameMeta = const VerificationMeta(
    'displayName',
  );
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
    'display_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nationalDexNumberMeta = const VerificationMeta(
    'nationalDexNumber',
  );
  @override
  late final GeneratedColumn<int> nationalDexNumber = GeneratedColumn<int>(
    'national_dex_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _generationIdMeta = const VerificationMeta(
    'generationId',
  );
  @override
  late final GeneratedColumn<int> generationId = GeneratedColumn<int>(
    'generation_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _evolutionChainIdMeta = const VerificationMeta(
    'evolutionChainId',
  );
  @override
  late final GeneratedColumn<int> evolutionChainId = GeneratedColumn<int>(
    'evolution_chain_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    displayName,
    nationalDexNumber,
    generationId,
    evolutionChainId,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_species';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonSpeciesRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('display_name')) {
      context.handle(
        _displayNameMeta,
        displayName.isAcceptableOrUnknown(
          data['display_name']!,
          _displayNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_displayNameMeta);
    }
    if (data.containsKey('national_dex_number')) {
      context.handle(
        _nationalDexNumberMeta,
        nationalDexNumber.isAcceptableOrUnknown(
          data['national_dex_number']!,
          _nationalDexNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_nationalDexNumberMeta);
    }
    if (data.containsKey('generation_id')) {
      context.handle(
        _generationIdMeta,
        generationId.isAcceptableOrUnknown(
          data['generation_id']!,
          _generationIdMeta,
        ),
      );
    }
    if (data.containsKey('evolution_chain_id')) {
      context.handle(
        _evolutionChainIdMeta,
        evolutionChainId.isAcceptableOrUnknown(
          data['evolution_chain_id']!,
          _evolutionChainIdMeta,
        ),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PokemonSpeciesRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonSpeciesRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      displayName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}display_name'],
      )!,
      nationalDexNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}national_dex_number'],
      )!,
      generationId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}generation_id'],
      ),
      evolutionChainId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}evolution_chain_id'],
      ),
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $PokemonSpeciesTable createAlias(String alias) {
    return $PokemonSpeciesTable(attachedDatabase, alias);
  }
}

class PokemonSpeciesRow extends DataClass
    implements Insertable<PokemonSpeciesRow> {
  final int id;
  final String name;
  final String displayName;
  final int nationalDexNumber;
  final int? generationId;
  final int? evolutionChainId;
  final DateTime updatedAt;
  const PokemonSpeciesRow({
    required this.id,
    required this.name,
    required this.displayName,
    required this.nationalDexNumber,
    this.generationId,
    this.evolutionChainId,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['display_name'] = Variable<String>(displayName);
    map['national_dex_number'] = Variable<int>(nationalDexNumber);
    if (!nullToAbsent || generationId != null) {
      map['generation_id'] = Variable<int>(generationId);
    }
    if (!nullToAbsent || evolutionChainId != null) {
      map['evolution_chain_id'] = Variable<int>(evolutionChainId);
    }
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  PokemonSpeciesCompanion toCompanion(bool nullToAbsent) {
    return PokemonSpeciesCompanion(
      id: Value(id),
      name: Value(name),
      displayName: Value(displayName),
      nationalDexNumber: Value(nationalDexNumber),
      generationId: generationId == null && nullToAbsent
          ? const Value.absent()
          : Value(generationId),
      evolutionChainId: evolutionChainId == null && nullToAbsent
          ? const Value.absent()
          : Value(evolutionChainId),
      updatedAt: Value(updatedAt),
    );
  }

  factory PokemonSpeciesRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonSpeciesRow(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      displayName: serializer.fromJson<String>(json['displayName']),
      nationalDexNumber: serializer.fromJson<int>(json['nationalDexNumber']),
      generationId: serializer.fromJson<int?>(json['generationId']),
      evolutionChainId: serializer.fromJson<int?>(json['evolutionChainId']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'displayName': serializer.toJson<String>(displayName),
      'nationalDexNumber': serializer.toJson<int>(nationalDexNumber),
      'generationId': serializer.toJson<int?>(generationId),
      'evolutionChainId': serializer.toJson<int?>(evolutionChainId),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  PokemonSpeciesRow copyWith({
    int? id,
    String? name,
    String? displayName,
    int? nationalDexNumber,
    Value<int?> generationId = const Value.absent(),
    Value<int?> evolutionChainId = const Value.absent(),
    DateTime? updatedAt,
  }) => PokemonSpeciesRow(
    id: id ?? this.id,
    name: name ?? this.name,
    displayName: displayName ?? this.displayName,
    nationalDexNumber: nationalDexNumber ?? this.nationalDexNumber,
    generationId: generationId.present ? generationId.value : this.generationId,
    evolutionChainId: evolutionChainId.present
        ? evolutionChainId.value
        : this.evolutionChainId,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  PokemonSpeciesRow copyWithCompanion(PokemonSpeciesCompanion data) {
    return PokemonSpeciesRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      displayName: data.displayName.present
          ? data.displayName.value
          : this.displayName,
      nationalDexNumber: data.nationalDexNumber.present
          ? data.nationalDexNumber.value
          : this.nationalDexNumber,
      generationId: data.generationId.present
          ? data.generationId.value
          : this.generationId,
      evolutionChainId: data.evolutionChainId.present
          ? data.evolutionChainId.value
          : this.evolutionChainId,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonSpeciesRow(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('nationalDexNumber: $nationalDexNumber, ')
          ..write('generationId: $generationId, ')
          ..write('evolutionChainId: $evolutionChainId, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    displayName,
    nationalDexNumber,
    generationId,
    evolutionChainId,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonSpeciesRow &&
          other.id == this.id &&
          other.name == this.name &&
          other.displayName == this.displayName &&
          other.nationalDexNumber == this.nationalDexNumber &&
          other.generationId == this.generationId &&
          other.evolutionChainId == this.evolutionChainId &&
          other.updatedAt == this.updatedAt);
}

class PokemonSpeciesCompanion extends UpdateCompanion<PokemonSpeciesRow> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> displayName;
  final Value<int> nationalDexNumber;
  final Value<int?> generationId;
  final Value<int?> evolutionChainId;
  final Value<DateTime> updatedAt;
  const PokemonSpeciesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.nationalDexNumber = const Value.absent(),
    this.generationId = const Value.absent(),
    this.evolutionChainId = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  PokemonSpeciesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String displayName,
    required int nationalDexNumber,
    this.generationId = const Value.absent(),
    this.evolutionChainId = const Value.absent(),
    required DateTime updatedAt,
  }) : name = Value(name),
       displayName = Value(displayName),
       nationalDexNumber = Value(nationalDexNumber),
       updatedAt = Value(updatedAt);
  static Insertable<PokemonSpeciesRow> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<int>? nationalDexNumber,
    Expression<int>? generationId,
    Expression<int>? evolutionChainId,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (displayName != null) 'display_name': displayName,
      if (nationalDexNumber != null) 'national_dex_number': nationalDexNumber,
      if (generationId != null) 'generation_id': generationId,
      if (evolutionChainId != null) 'evolution_chain_id': evolutionChainId,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  PokemonSpeciesCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? displayName,
    Value<int>? nationalDexNumber,
    Value<int?>? generationId,
    Value<int?>? evolutionChainId,
    Value<DateTime>? updatedAt,
  }) {
    return PokemonSpeciesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      nationalDexNumber: nationalDexNumber ?? this.nationalDexNumber,
      generationId: generationId ?? this.generationId,
      evolutionChainId: evolutionChainId ?? this.evolutionChainId,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (nationalDexNumber.present) {
      map['national_dex_number'] = Variable<int>(nationalDexNumber.value);
    }
    if (generationId.present) {
      map['generation_id'] = Variable<int>(generationId.value);
    }
    if (evolutionChainId.present) {
      map['evolution_chain_id'] = Variable<int>(evolutionChainId.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonSpeciesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('nationalDexNumber: $nationalDexNumber, ')
          ..write('generationId: $generationId, ')
          ..write('evolutionChainId: $evolutionChainId, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $PokemonsTable extends Pokemons
    with TableInfo<$PokemonsTable, PokemonRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _speciesIdMeta = const VerificationMeta(
    'speciesId',
  );
  @override
  late final GeneratedColumn<int> speciesId = GeneratedColumn<int>(
    'species_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemon_species (id)',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isDefaultMeta = const VerificationMeta(
    'isDefault',
  );
  @override
  late final GeneratedColumn<bool> isDefault = GeneratedColumn<bool>(
    'is_default',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_default" IN (0, 1))',
    ),
  );
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<double> height = GeneratedColumn<double>(
    'height',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double> weight = GeneratedColumn<double>(
    'weight',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _artworkUrlMeta = const VerificationMeta(
    'artworkUrl',
  );
  @override
  late final GeneratedColumn<String> artworkUrl = GeneratedColumn<String>(
    'artwork_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _shinyArtworkUrlMeta = const VerificationMeta(
    'shinyArtworkUrl',
  );
  @override
  late final GeneratedColumn<String> shinyArtworkUrl = GeneratedColumn<String>(
    'shiny_artwork_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _spriteUrlMeta = const VerificationMeta(
    'spriteUrl',
  );
  @override
  late final GeneratedColumn<String> spriteUrl = GeneratedColumn<String>(
    'sprite_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _hpMeta = const VerificationMeta('hp');
  @override
  late final GeneratedColumn<int> hp = GeneratedColumn<int>(
    'hp',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _attackMeta = const VerificationMeta('attack');
  @override
  late final GeneratedColumn<int> attack = GeneratedColumn<int>(
    'attack',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _defenseMeta = const VerificationMeta(
    'defense',
  );
  @override
  late final GeneratedColumn<int> defense = GeneratedColumn<int>(
    'defense',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _specialAttackMeta = const VerificationMeta(
    'specialAttack',
  );
  @override
  late final GeneratedColumn<int> specialAttack = GeneratedColumn<int>(
    'special_attack',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _specialDefenseMeta = const VerificationMeta(
    'specialDefense',
  );
  @override
  late final GeneratedColumn<int> specialDefense = GeneratedColumn<int>(
    'special_defense',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _speedMeta = const VerificationMeta('speed');
  @override
  late final GeneratedColumn<int> speed = GeneratedColumn<int>(
    'speed',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _baseStatTotalMeta = const VerificationMeta(
    'baseStatTotal',
  );
  @override
  late final GeneratedColumn<int> baseStatTotal = GeneratedColumn<int>(
    'base_stat_total',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    speciesId,
    name,
    isDefault,
    height,
    weight,
    artworkUrl,
    shinyArtworkUrl,
    spriteUrl,
    hp,
    attack,
    defense,
    specialAttack,
    specialDefense,
    speed,
    baseStatTotal,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemons';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('species_id')) {
      context.handle(
        _speciesIdMeta,
        speciesId.isAcceptableOrUnknown(data['species_id']!, _speciesIdMeta),
      );
    } else if (isInserting) {
      context.missing(_speciesIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('is_default')) {
      context.handle(
        _isDefaultMeta,
        isDefault.isAcceptableOrUnknown(data['is_default']!, _isDefaultMeta),
      );
    } else if (isInserting) {
      context.missing(_isDefaultMeta);
    }
    if (data.containsKey('height')) {
      context.handle(
        _heightMeta,
        height.isAcceptableOrUnknown(data['height']!, _heightMeta),
      );
    } else if (isInserting) {
      context.missing(_heightMeta);
    }
    if (data.containsKey('weight')) {
      context.handle(
        _weightMeta,
        weight.isAcceptableOrUnknown(data['weight']!, _weightMeta),
      );
    } else if (isInserting) {
      context.missing(_weightMeta);
    }
    if (data.containsKey('artwork_url')) {
      context.handle(
        _artworkUrlMeta,
        artworkUrl.isAcceptableOrUnknown(data['artwork_url']!, _artworkUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_artworkUrlMeta);
    }
    if (data.containsKey('shiny_artwork_url')) {
      context.handle(
        _shinyArtworkUrlMeta,
        shinyArtworkUrl.isAcceptableOrUnknown(
          data['shiny_artwork_url']!,
          _shinyArtworkUrlMeta,
        ),
      );
    }
    if (data.containsKey('sprite_url')) {
      context.handle(
        _spriteUrlMeta,
        spriteUrl.isAcceptableOrUnknown(data['sprite_url']!, _spriteUrlMeta),
      );
    }
    if (data.containsKey('hp')) {
      context.handle(_hpMeta, hp.isAcceptableOrUnknown(data['hp']!, _hpMeta));
    }
    if (data.containsKey('attack')) {
      context.handle(
        _attackMeta,
        attack.isAcceptableOrUnknown(data['attack']!, _attackMeta),
      );
    }
    if (data.containsKey('defense')) {
      context.handle(
        _defenseMeta,
        defense.isAcceptableOrUnknown(data['defense']!, _defenseMeta),
      );
    }
    if (data.containsKey('special_attack')) {
      context.handle(
        _specialAttackMeta,
        specialAttack.isAcceptableOrUnknown(
          data['special_attack']!,
          _specialAttackMeta,
        ),
      );
    }
    if (data.containsKey('special_defense')) {
      context.handle(
        _specialDefenseMeta,
        specialDefense.isAcceptableOrUnknown(
          data['special_defense']!,
          _specialDefenseMeta,
        ),
      );
    }
    if (data.containsKey('speed')) {
      context.handle(
        _speedMeta,
        speed.isAcceptableOrUnknown(data['speed']!, _speedMeta),
      );
    }
    if (data.containsKey('base_stat_total')) {
      context.handle(
        _baseStatTotalMeta,
        baseStatTotal.isAcceptableOrUnknown(
          data['base_stat_total']!,
          _baseStatTotalMeta,
        ),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PokemonRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      speciesId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}species_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      isDefault: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_default'],
      )!,
      height: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}height'],
      )!,
      weight: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}weight'],
      )!,
      artworkUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}artwork_url'],
      )!,
      shinyArtworkUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shiny_artwork_url'],
      ),
      spriteUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sprite_url'],
      ),
      hp: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}hp'],
      ),
      attack: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}attack'],
      ),
      defense: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}defense'],
      ),
      specialAttack: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}special_attack'],
      ),
      specialDefense: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}special_defense'],
      ),
      speed: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}speed'],
      ),
      baseStatTotal: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}base_stat_total'],
      ),
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $PokemonsTable createAlias(String alias) {
    return $PokemonsTable(attachedDatabase, alias);
  }
}

class PokemonRow extends DataClass implements Insertable<PokemonRow> {
  final int id;
  final int speciesId;
  final String name;
  final bool isDefault;
  final double height;
  final double weight;
  final String artworkUrl;
  final String? shinyArtworkUrl;
  final String? spriteUrl;
  final int? hp;
  final int? attack;
  final int? defense;
  final int? specialAttack;
  final int? specialDefense;
  final int? speed;
  final int? baseStatTotal;
  final DateTime updatedAt;
  const PokemonRow({
    required this.id,
    required this.speciesId,
    required this.name,
    required this.isDefault,
    required this.height,
    required this.weight,
    required this.artworkUrl,
    this.shinyArtworkUrl,
    this.spriteUrl,
    this.hp,
    this.attack,
    this.defense,
    this.specialAttack,
    this.specialDefense,
    this.speed,
    this.baseStatTotal,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['species_id'] = Variable<int>(speciesId);
    map['name'] = Variable<String>(name);
    map['is_default'] = Variable<bool>(isDefault);
    map['height'] = Variable<double>(height);
    map['weight'] = Variable<double>(weight);
    map['artwork_url'] = Variable<String>(artworkUrl);
    if (!nullToAbsent || shinyArtworkUrl != null) {
      map['shiny_artwork_url'] = Variable<String>(shinyArtworkUrl);
    }
    if (!nullToAbsent || spriteUrl != null) {
      map['sprite_url'] = Variable<String>(spriteUrl);
    }
    if (!nullToAbsent || hp != null) {
      map['hp'] = Variable<int>(hp);
    }
    if (!nullToAbsent || attack != null) {
      map['attack'] = Variable<int>(attack);
    }
    if (!nullToAbsent || defense != null) {
      map['defense'] = Variable<int>(defense);
    }
    if (!nullToAbsent || specialAttack != null) {
      map['special_attack'] = Variable<int>(specialAttack);
    }
    if (!nullToAbsent || specialDefense != null) {
      map['special_defense'] = Variable<int>(specialDefense);
    }
    if (!nullToAbsent || speed != null) {
      map['speed'] = Variable<int>(speed);
    }
    if (!nullToAbsent || baseStatTotal != null) {
      map['base_stat_total'] = Variable<int>(baseStatTotal);
    }
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  PokemonsCompanion toCompanion(bool nullToAbsent) {
    return PokemonsCompanion(
      id: Value(id),
      speciesId: Value(speciesId),
      name: Value(name),
      isDefault: Value(isDefault),
      height: Value(height),
      weight: Value(weight),
      artworkUrl: Value(artworkUrl),
      shinyArtworkUrl: shinyArtworkUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(shinyArtworkUrl),
      spriteUrl: spriteUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(spriteUrl),
      hp: hp == null && nullToAbsent ? const Value.absent() : Value(hp),
      attack: attack == null && nullToAbsent
          ? const Value.absent()
          : Value(attack),
      defense: defense == null && nullToAbsent
          ? const Value.absent()
          : Value(defense),
      specialAttack: specialAttack == null && nullToAbsent
          ? const Value.absent()
          : Value(specialAttack),
      specialDefense: specialDefense == null && nullToAbsent
          ? const Value.absent()
          : Value(specialDefense),
      speed: speed == null && nullToAbsent
          ? const Value.absent()
          : Value(speed),
      baseStatTotal: baseStatTotal == null && nullToAbsent
          ? const Value.absent()
          : Value(baseStatTotal),
      updatedAt: Value(updatedAt),
    );
  }

  factory PokemonRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonRow(
      id: serializer.fromJson<int>(json['id']),
      speciesId: serializer.fromJson<int>(json['speciesId']),
      name: serializer.fromJson<String>(json['name']),
      isDefault: serializer.fromJson<bool>(json['isDefault']),
      height: serializer.fromJson<double>(json['height']),
      weight: serializer.fromJson<double>(json['weight']),
      artworkUrl: serializer.fromJson<String>(json['artworkUrl']),
      shinyArtworkUrl: serializer.fromJson<String?>(json['shinyArtworkUrl']),
      spriteUrl: serializer.fromJson<String?>(json['spriteUrl']),
      hp: serializer.fromJson<int?>(json['hp']),
      attack: serializer.fromJson<int?>(json['attack']),
      defense: serializer.fromJson<int?>(json['defense']),
      specialAttack: serializer.fromJson<int?>(json['specialAttack']),
      specialDefense: serializer.fromJson<int?>(json['specialDefense']),
      speed: serializer.fromJson<int?>(json['speed']),
      baseStatTotal: serializer.fromJson<int?>(json['baseStatTotal']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'speciesId': serializer.toJson<int>(speciesId),
      'name': serializer.toJson<String>(name),
      'isDefault': serializer.toJson<bool>(isDefault),
      'height': serializer.toJson<double>(height),
      'weight': serializer.toJson<double>(weight),
      'artworkUrl': serializer.toJson<String>(artworkUrl),
      'shinyArtworkUrl': serializer.toJson<String?>(shinyArtworkUrl),
      'spriteUrl': serializer.toJson<String?>(spriteUrl),
      'hp': serializer.toJson<int?>(hp),
      'attack': serializer.toJson<int?>(attack),
      'defense': serializer.toJson<int?>(defense),
      'specialAttack': serializer.toJson<int?>(specialAttack),
      'specialDefense': serializer.toJson<int?>(specialDefense),
      'speed': serializer.toJson<int?>(speed),
      'baseStatTotal': serializer.toJson<int?>(baseStatTotal),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  PokemonRow copyWith({
    int? id,
    int? speciesId,
    String? name,
    bool? isDefault,
    double? height,
    double? weight,
    String? artworkUrl,
    Value<String?> shinyArtworkUrl = const Value.absent(),
    Value<String?> spriteUrl = const Value.absent(),
    Value<int?> hp = const Value.absent(),
    Value<int?> attack = const Value.absent(),
    Value<int?> defense = const Value.absent(),
    Value<int?> specialAttack = const Value.absent(),
    Value<int?> specialDefense = const Value.absent(),
    Value<int?> speed = const Value.absent(),
    Value<int?> baseStatTotal = const Value.absent(),
    DateTime? updatedAt,
  }) => PokemonRow(
    id: id ?? this.id,
    speciesId: speciesId ?? this.speciesId,
    name: name ?? this.name,
    isDefault: isDefault ?? this.isDefault,
    height: height ?? this.height,
    weight: weight ?? this.weight,
    artworkUrl: artworkUrl ?? this.artworkUrl,
    shinyArtworkUrl: shinyArtworkUrl.present
        ? shinyArtworkUrl.value
        : this.shinyArtworkUrl,
    spriteUrl: spriteUrl.present ? spriteUrl.value : this.spriteUrl,
    hp: hp.present ? hp.value : this.hp,
    attack: attack.present ? attack.value : this.attack,
    defense: defense.present ? defense.value : this.defense,
    specialAttack: specialAttack.present
        ? specialAttack.value
        : this.specialAttack,
    specialDefense: specialDefense.present
        ? specialDefense.value
        : this.specialDefense,
    speed: speed.present ? speed.value : this.speed,
    baseStatTotal: baseStatTotal.present
        ? baseStatTotal.value
        : this.baseStatTotal,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  PokemonRow copyWithCompanion(PokemonsCompanion data) {
    return PokemonRow(
      id: data.id.present ? data.id.value : this.id,
      speciesId: data.speciesId.present ? data.speciesId.value : this.speciesId,
      name: data.name.present ? data.name.value : this.name,
      isDefault: data.isDefault.present ? data.isDefault.value : this.isDefault,
      height: data.height.present ? data.height.value : this.height,
      weight: data.weight.present ? data.weight.value : this.weight,
      artworkUrl: data.artworkUrl.present
          ? data.artworkUrl.value
          : this.artworkUrl,
      shinyArtworkUrl: data.shinyArtworkUrl.present
          ? data.shinyArtworkUrl.value
          : this.shinyArtworkUrl,
      spriteUrl: data.spriteUrl.present ? data.spriteUrl.value : this.spriteUrl,
      hp: data.hp.present ? data.hp.value : this.hp,
      attack: data.attack.present ? data.attack.value : this.attack,
      defense: data.defense.present ? data.defense.value : this.defense,
      specialAttack: data.specialAttack.present
          ? data.specialAttack.value
          : this.specialAttack,
      specialDefense: data.specialDefense.present
          ? data.specialDefense.value
          : this.specialDefense,
      speed: data.speed.present ? data.speed.value : this.speed,
      baseStatTotal: data.baseStatTotal.present
          ? data.baseStatTotal.value
          : this.baseStatTotal,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonRow(')
          ..write('id: $id, ')
          ..write('speciesId: $speciesId, ')
          ..write('name: $name, ')
          ..write('isDefault: $isDefault, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('artworkUrl: $artworkUrl, ')
          ..write('shinyArtworkUrl: $shinyArtworkUrl, ')
          ..write('spriteUrl: $spriteUrl, ')
          ..write('hp: $hp, ')
          ..write('attack: $attack, ')
          ..write('defense: $defense, ')
          ..write('specialAttack: $specialAttack, ')
          ..write('specialDefense: $specialDefense, ')
          ..write('speed: $speed, ')
          ..write('baseStatTotal: $baseStatTotal, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    speciesId,
    name,
    isDefault,
    height,
    weight,
    artworkUrl,
    shinyArtworkUrl,
    spriteUrl,
    hp,
    attack,
    defense,
    specialAttack,
    specialDefense,
    speed,
    baseStatTotal,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonRow &&
          other.id == this.id &&
          other.speciesId == this.speciesId &&
          other.name == this.name &&
          other.isDefault == this.isDefault &&
          other.height == this.height &&
          other.weight == this.weight &&
          other.artworkUrl == this.artworkUrl &&
          other.shinyArtworkUrl == this.shinyArtworkUrl &&
          other.spriteUrl == this.spriteUrl &&
          other.hp == this.hp &&
          other.attack == this.attack &&
          other.defense == this.defense &&
          other.specialAttack == this.specialAttack &&
          other.specialDefense == this.specialDefense &&
          other.speed == this.speed &&
          other.baseStatTotal == this.baseStatTotal &&
          other.updatedAt == this.updatedAt);
}

class PokemonsCompanion extends UpdateCompanion<PokemonRow> {
  final Value<int> id;
  final Value<int> speciesId;
  final Value<String> name;
  final Value<bool> isDefault;
  final Value<double> height;
  final Value<double> weight;
  final Value<String> artworkUrl;
  final Value<String?> shinyArtworkUrl;
  final Value<String?> spriteUrl;
  final Value<int?> hp;
  final Value<int?> attack;
  final Value<int?> defense;
  final Value<int?> specialAttack;
  final Value<int?> specialDefense;
  final Value<int?> speed;
  final Value<int?> baseStatTotal;
  final Value<DateTime> updatedAt;
  const PokemonsCompanion({
    this.id = const Value.absent(),
    this.speciesId = const Value.absent(),
    this.name = const Value.absent(),
    this.isDefault = const Value.absent(),
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
    this.artworkUrl = const Value.absent(),
    this.shinyArtworkUrl = const Value.absent(),
    this.spriteUrl = const Value.absent(),
    this.hp = const Value.absent(),
    this.attack = const Value.absent(),
    this.defense = const Value.absent(),
    this.specialAttack = const Value.absent(),
    this.specialDefense = const Value.absent(),
    this.speed = const Value.absent(),
    this.baseStatTotal = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  PokemonsCompanion.insert({
    this.id = const Value.absent(),
    required int speciesId,
    required String name,
    required bool isDefault,
    required double height,
    required double weight,
    required String artworkUrl,
    this.shinyArtworkUrl = const Value.absent(),
    this.spriteUrl = const Value.absent(),
    this.hp = const Value.absent(),
    this.attack = const Value.absent(),
    this.defense = const Value.absent(),
    this.specialAttack = const Value.absent(),
    this.specialDefense = const Value.absent(),
    this.speed = const Value.absent(),
    this.baseStatTotal = const Value.absent(),
    required DateTime updatedAt,
  }) : speciesId = Value(speciesId),
       name = Value(name),
       isDefault = Value(isDefault),
       height = Value(height),
       weight = Value(weight),
       artworkUrl = Value(artworkUrl),
       updatedAt = Value(updatedAt);
  static Insertable<PokemonRow> custom({
    Expression<int>? id,
    Expression<int>? speciesId,
    Expression<String>? name,
    Expression<bool>? isDefault,
    Expression<double>? height,
    Expression<double>? weight,
    Expression<String>? artworkUrl,
    Expression<String>? shinyArtworkUrl,
    Expression<String>? spriteUrl,
    Expression<int>? hp,
    Expression<int>? attack,
    Expression<int>? defense,
    Expression<int>? specialAttack,
    Expression<int>? specialDefense,
    Expression<int>? speed,
    Expression<int>? baseStatTotal,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (speciesId != null) 'species_id': speciesId,
      if (name != null) 'name': name,
      if (isDefault != null) 'is_default': isDefault,
      if (height != null) 'height': height,
      if (weight != null) 'weight': weight,
      if (artworkUrl != null) 'artwork_url': artworkUrl,
      if (shinyArtworkUrl != null) 'shiny_artwork_url': shinyArtworkUrl,
      if (spriteUrl != null) 'sprite_url': spriteUrl,
      if (hp != null) 'hp': hp,
      if (attack != null) 'attack': attack,
      if (defense != null) 'defense': defense,
      if (specialAttack != null) 'special_attack': specialAttack,
      if (specialDefense != null) 'special_defense': specialDefense,
      if (speed != null) 'speed': speed,
      if (baseStatTotal != null) 'base_stat_total': baseStatTotal,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  PokemonsCompanion copyWith({
    Value<int>? id,
    Value<int>? speciesId,
    Value<String>? name,
    Value<bool>? isDefault,
    Value<double>? height,
    Value<double>? weight,
    Value<String>? artworkUrl,
    Value<String?>? shinyArtworkUrl,
    Value<String?>? spriteUrl,
    Value<int?>? hp,
    Value<int?>? attack,
    Value<int?>? defense,
    Value<int?>? specialAttack,
    Value<int?>? specialDefense,
    Value<int?>? speed,
    Value<int?>? baseStatTotal,
    Value<DateTime>? updatedAt,
  }) {
    return PokemonsCompanion(
      id: id ?? this.id,
      speciesId: speciesId ?? this.speciesId,
      name: name ?? this.name,
      isDefault: isDefault ?? this.isDefault,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      artworkUrl: artworkUrl ?? this.artworkUrl,
      shinyArtworkUrl: shinyArtworkUrl ?? this.shinyArtworkUrl,
      spriteUrl: spriteUrl ?? this.spriteUrl,
      hp: hp ?? this.hp,
      attack: attack ?? this.attack,
      defense: defense ?? this.defense,
      specialAttack: specialAttack ?? this.specialAttack,
      specialDefense: specialDefense ?? this.specialDefense,
      speed: speed ?? this.speed,
      baseStatTotal: baseStatTotal ?? this.baseStatTotal,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (speciesId.present) {
      map['species_id'] = Variable<int>(speciesId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (isDefault.present) {
      map['is_default'] = Variable<bool>(isDefault.value);
    }
    if (height.present) {
      map['height'] = Variable<double>(height.value);
    }
    if (weight.present) {
      map['weight'] = Variable<double>(weight.value);
    }
    if (artworkUrl.present) {
      map['artwork_url'] = Variable<String>(artworkUrl.value);
    }
    if (shinyArtworkUrl.present) {
      map['shiny_artwork_url'] = Variable<String>(shinyArtworkUrl.value);
    }
    if (spriteUrl.present) {
      map['sprite_url'] = Variable<String>(spriteUrl.value);
    }
    if (hp.present) {
      map['hp'] = Variable<int>(hp.value);
    }
    if (attack.present) {
      map['attack'] = Variable<int>(attack.value);
    }
    if (defense.present) {
      map['defense'] = Variable<int>(defense.value);
    }
    if (specialAttack.present) {
      map['special_attack'] = Variable<int>(specialAttack.value);
    }
    if (specialDefense.present) {
      map['special_defense'] = Variable<int>(specialDefense.value);
    }
    if (speed.present) {
      map['speed'] = Variable<int>(speed.value);
    }
    if (baseStatTotal.present) {
      map['base_stat_total'] = Variable<int>(baseStatTotal.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonsCompanion(')
          ..write('id: $id, ')
          ..write('speciesId: $speciesId, ')
          ..write('name: $name, ')
          ..write('isDefault: $isDefault, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('artworkUrl: $artworkUrl, ')
          ..write('shinyArtworkUrl: $shinyArtworkUrl, ')
          ..write('spriteUrl: $spriteUrl, ')
          ..write('hp: $hp, ')
          ..write('attack: $attack, ')
          ..write('defense: $defense, ')
          ..write('specialAttack: $specialAttack, ')
          ..write('specialDefense: $specialDefense, ')
          ..write('speed: $speed, ')
          ..write('baseStatTotal: $baseStatTotal, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $TypesTable extends Types with TableInfo<$TypesTable, TypeRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'types';
  @override
  VerificationContext validateIntegrity(
    Insertable<TypeRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TypeRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TypeRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
    );
  }

  @override
  $TypesTable createAlias(String alias) {
    return $TypesTable(attachedDatabase, alias);
  }
}

class TypeRow extends DataClass implements Insertable<TypeRow> {
  final int id;
  final String name;
  const TypeRow({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  TypesCompanion toCompanion(bool nullToAbsent) {
    return TypesCompanion(id: Value(id), name: Value(name));
  }

  factory TypeRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TypeRow(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  TypeRow copyWith({int? id, String? name}) =>
      TypeRow(id: id ?? this.id, name: name ?? this.name);
  TypeRow copyWithCompanion(TypesCompanion data) {
    return TypeRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TypeRow(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TypeRow && other.id == this.id && other.name == this.name);
}

class TypesCompanion extends UpdateCompanion<TypeRow> {
  final Value<int> id;
  final Value<String> name;
  const TypesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  TypesCompanion.insert({this.id = const Value.absent(), required String name})
    : name = Value(name);
  static Insertable<TypeRow> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  TypesCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return TypesCompanion(id: id ?? this.id, name: name ?? this.name);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TypesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $PokemonTypesTable extends PokemonTypes
    with TableInfo<$PokemonTypesTable, PokemonTypeRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonTypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemons (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _typeIdMeta = const VerificationMeta('typeId');
  @override
  late final GeneratedColumn<int> typeId = GeneratedColumn<int>(
    'type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES types (id)',
    ),
  );
  static const VerificationMeta _slotMeta = const VerificationMeta('slot');
  @override
  late final GeneratedColumn<int> slot = GeneratedColumn<int>(
    'slot',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [pokemonId, typeId, slot];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_types';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonTypeRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('type_id')) {
      context.handle(
        _typeIdMeta,
        typeId.isAcceptableOrUnknown(data['type_id']!, _typeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_typeIdMeta);
    }
    if (data.containsKey('slot')) {
      context.handle(
        _slotMeta,
        slot.isAcceptableOrUnknown(data['slot']!, _slotMeta),
      );
    } else if (isInserting) {
      context.missing(_slotMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pokemonId, typeId};
  @override
  PokemonTypeRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonTypeRow(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      typeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}type_id'],
      )!,
      slot: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}slot'],
      )!,
    );
  }

  @override
  $PokemonTypesTable createAlias(String alias) {
    return $PokemonTypesTable(attachedDatabase, alias);
  }
}

class PokemonTypeRow extends DataClass implements Insertable<PokemonTypeRow> {
  final int pokemonId;
  final int typeId;
  final int slot;
  const PokemonTypeRow({
    required this.pokemonId,
    required this.typeId,
    required this.slot,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['type_id'] = Variable<int>(typeId);
    map['slot'] = Variable<int>(slot);
    return map;
  }

  PokemonTypesCompanion toCompanion(bool nullToAbsent) {
    return PokemonTypesCompanion(
      pokemonId: Value(pokemonId),
      typeId: Value(typeId),
      slot: Value(slot),
    );
  }

  factory PokemonTypeRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonTypeRow(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      typeId: serializer.fromJson<int>(json['typeId']),
      slot: serializer.fromJson<int>(json['slot']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'typeId': serializer.toJson<int>(typeId),
      'slot': serializer.toJson<int>(slot),
    };
  }

  PokemonTypeRow copyWith({int? pokemonId, int? typeId, int? slot}) =>
      PokemonTypeRow(
        pokemonId: pokemonId ?? this.pokemonId,
        typeId: typeId ?? this.typeId,
        slot: slot ?? this.slot,
      );
  PokemonTypeRow copyWithCompanion(PokemonTypesCompanion data) {
    return PokemonTypeRow(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      typeId: data.typeId.present ? data.typeId.value : this.typeId,
      slot: data.slot.present ? data.slot.value : this.slot,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonTypeRow(')
          ..write('pokemonId: $pokemonId, ')
          ..write('typeId: $typeId, ')
          ..write('slot: $slot')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pokemonId, typeId, slot);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonTypeRow &&
          other.pokemonId == this.pokemonId &&
          other.typeId == this.typeId &&
          other.slot == this.slot);
}

class PokemonTypesCompanion extends UpdateCompanion<PokemonTypeRow> {
  final Value<int> pokemonId;
  final Value<int> typeId;
  final Value<int> slot;
  final Value<int> rowid;
  const PokemonTypesCompanion({
    this.pokemonId = const Value.absent(),
    this.typeId = const Value.absent(),
    this.slot = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PokemonTypesCompanion.insert({
    required int pokemonId,
    required int typeId,
    required int slot,
    this.rowid = const Value.absent(),
  }) : pokemonId = Value(pokemonId),
       typeId = Value(typeId),
       slot = Value(slot);
  static Insertable<PokemonTypeRow> custom({
    Expression<int>? pokemonId,
    Expression<int>? typeId,
    Expression<int>? slot,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (typeId != null) 'type_id': typeId,
      if (slot != null) 'slot': slot,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PokemonTypesCompanion copyWith({
    Value<int>? pokemonId,
    Value<int>? typeId,
    Value<int>? slot,
    Value<int>? rowid,
  }) {
    return PokemonTypesCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      typeId: typeId ?? this.typeId,
      slot: slot ?? this.slot,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (typeId.present) {
      map['type_id'] = Variable<int>(typeId.value);
    }
    if (slot.present) {
      map['slot'] = Variable<int>(slot.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonTypesCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('typeId: $typeId, ')
          ..write('slot: $slot, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AbilitiesTable extends Abilities
    with TableInfo<$AbilitiesTable, AbilityRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AbilitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _effectSummaryMeta = const VerificationMeta(
    'effectSummary',
  );
  @override
  late final GeneratedColumn<String> effectSummary = GeneratedColumn<String>(
    'effect_summary',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, effectSummary];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'abilities';
  @override
  VerificationContext validateIntegrity(
    Insertable<AbilityRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('effect_summary')) {
      context.handle(
        _effectSummaryMeta,
        effectSummary.isAcceptableOrUnknown(
          data['effect_summary']!,
          _effectSummaryMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AbilityRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AbilityRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      effectSummary: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}effect_summary'],
      ),
    );
  }

  @override
  $AbilitiesTable createAlias(String alias) {
    return $AbilitiesTable(attachedDatabase, alias);
  }
}

class AbilityRow extends DataClass implements Insertable<AbilityRow> {
  final int id;
  final String name;
  final String? effectSummary;
  const AbilityRow({required this.id, required this.name, this.effectSummary});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || effectSummary != null) {
      map['effect_summary'] = Variable<String>(effectSummary);
    }
    return map;
  }

  AbilitiesCompanion toCompanion(bool nullToAbsent) {
    return AbilitiesCompanion(
      id: Value(id),
      name: Value(name),
      effectSummary: effectSummary == null && nullToAbsent
          ? const Value.absent()
          : Value(effectSummary),
    );
  }

  factory AbilityRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AbilityRow(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      effectSummary: serializer.fromJson<String?>(json['effectSummary']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'effectSummary': serializer.toJson<String?>(effectSummary),
    };
  }

  AbilityRow copyWith({
    int? id,
    String? name,
    Value<String?> effectSummary = const Value.absent(),
  }) => AbilityRow(
    id: id ?? this.id,
    name: name ?? this.name,
    effectSummary: effectSummary.present
        ? effectSummary.value
        : this.effectSummary,
  );
  AbilityRow copyWithCompanion(AbilitiesCompanion data) {
    return AbilityRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      effectSummary: data.effectSummary.present
          ? data.effectSummary.value
          : this.effectSummary,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AbilityRow(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('effectSummary: $effectSummary')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, effectSummary);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AbilityRow &&
          other.id == this.id &&
          other.name == this.name &&
          other.effectSummary == this.effectSummary);
}

class AbilitiesCompanion extends UpdateCompanion<AbilityRow> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> effectSummary;
  const AbilitiesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.effectSummary = const Value.absent(),
  });
  AbilitiesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.effectSummary = const Value.absent(),
  }) : name = Value(name);
  static Insertable<AbilityRow> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? effectSummary,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (effectSummary != null) 'effect_summary': effectSummary,
    });
  }

  AbilitiesCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? effectSummary,
  }) {
    return AbilitiesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      effectSummary: effectSummary ?? this.effectSummary,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (effectSummary.present) {
      map['effect_summary'] = Variable<String>(effectSummary.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AbilitiesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('effectSummary: $effectSummary')
          ..write(')'))
        .toString();
  }
}

class $PokemonAbilitiesTable extends PokemonAbilities
    with TableInfo<$PokemonAbilitiesTable, PokemonAbilityRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonAbilitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemons (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _abilityIdMeta = const VerificationMeta(
    'abilityId',
  );
  @override
  late final GeneratedColumn<int> abilityId = GeneratedColumn<int>(
    'ability_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES abilities (id)',
    ),
  );
  static const VerificationMeta _isHiddenMeta = const VerificationMeta(
    'isHidden',
  );
  @override
  late final GeneratedColumn<bool> isHidden = GeneratedColumn<bool>(
    'is_hidden',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_hidden" IN (0, 1))',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [pokemonId, abilityId, isHidden];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_abilities';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonAbilityRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('ability_id')) {
      context.handle(
        _abilityIdMeta,
        abilityId.isAcceptableOrUnknown(data['ability_id']!, _abilityIdMeta),
      );
    } else if (isInserting) {
      context.missing(_abilityIdMeta);
    }
    if (data.containsKey('is_hidden')) {
      context.handle(
        _isHiddenMeta,
        isHidden.isAcceptableOrUnknown(data['is_hidden']!, _isHiddenMeta),
      );
    } else if (isInserting) {
      context.missing(_isHiddenMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pokemonId, abilityId};
  @override
  PokemonAbilityRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonAbilityRow(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      abilityId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ability_id'],
      )!,
      isHidden: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_hidden'],
      )!,
    );
  }

  @override
  $PokemonAbilitiesTable createAlias(String alias) {
    return $PokemonAbilitiesTable(attachedDatabase, alias);
  }
}

class PokemonAbilityRow extends DataClass
    implements Insertable<PokemonAbilityRow> {
  final int pokemonId;
  final int abilityId;
  final bool isHidden;
  const PokemonAbilityRow({
    required this.pokemonId,
    required this.abilityId,
    required this.isHidden,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['ability_id'] = Variable<int>(abilityId);
    map['is_hidden'] = Variable<bool>(isHidden);
    return map;
  }

  PokemonAbilitiesCompanion toCompanion(bool nullToAbsent) {
    return PokemonAbilitiesCompanion(
      pokemonId: Value(pokemonId),
      abilityId: Value(abilityId),
      isHidden: Value(isHidden),
    );
  }

  factory PokemonAbilityRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonAbilityRow(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      abilityId: serializer.fromJson<int>(json['abilityId']),
      isHidden: serializer.fromJson<bool>(json['isHidden']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'abilityId': serializer.toJson<int>(abilityId),
      'isHidden': serializer.toJson<bool>(isHidden),
    };
  }

  PokemonAbilityRow copyWith({
    int? pokemonId,
    int? abilityId,
    bool? isHidden,
  }) => PokemonAbilityRow(
    pokemonId: pokemonId ?? this.pokemonId,
    abilityId: abilityId ?? this.abilityId,
    isHidden: isHidden ?? this.isHidden,
  );
  PokemonAbilityRow copyWithCompanion(PokemonAbilitiesCompanion data) {
    return PokemonAbilityRow(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      abilityId: data.abilityId.present ? data.abilityId.value : this.abilityId,
      isHidden: data.isHidden.present ? data.isHidden.value : this.isHidden,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonAbilityRow(')
          ..write('pokemonId: $pokemonId, ')
          ..write('abilityId: $abilityId, ')
          ..write('isHidden: $isHidden')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pokemonId, abilityId, isHidden);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonAbilityRow &&
          other.pokemonId == this.pokemonId &&
          other.abilityId == this.abilityId &&
          other.isHidden == this.isHidden);
}

class PokemonAbilitiesCompanion extends UpdateCompanion<PokemonAbilityRow> {
  final Value<int> pokemonId;
  final Value<int> abilityId;
  final Value<bool> isHidden;
  final Value<int> rowid;
  const PokemonAbilitiesCompanion({
    this.pokemonId = const Value.absent(),
    this.abilityId = const Value.absent(),
    this.isHidden = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PokemonAbilitiesCompanion.insert({
    required int pokemonId,
    required int abilityId,
    required bool isHidden,
    this.rowid = const Value.absent(),
  }) : pokemonId = Value(pokemonId),
       abilityId = Value(abilityId),
       isHidden = Value(isHidden);
  static Insertable<PokemonAbilityRow> custom({
    Expression<int>? pokemonId,
    Expression<int>? abilityId,
    Expression<bool>? isHidden,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (abilityId != null) 'ability_id': abilityId,
      if (isHidden != null) 'is_hidden': isHidden,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PokemonAbilitiesCompanion copyWith({
    Value<int>? pokemonId,
    Value<int>? abilityId,
    Value<bool>? isHidden,
    Value<int>? rowid,
  }) {
    return PokemonAbilitiesCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      abilityId: abilityId ?? this.abilityId,
      isHidden: isHidden ?? this.isHidden,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (abilityId.present) {
      map['ability_id'] = Variable<int>(abilityId.value);
    }
    if (isHidden.present) {
      map['is_hidden'] = Variable<bool>(isHidden.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonAbilitiesCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('abilityId: $abilityId, ')
          ..write('isHidden: $isHidden, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EvolutionsTable extends Evolutions
    with TableInfo<$EvolutionsTable, EvolutionRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EvolutionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _fromSpeciesIdMeta = const VerificationMeta(
    'fromSpeciesId',
  );
  @override
  late final GeneratedColumn<int> fromSpeciesId = GeneratedColumn<int>(
    'from_species_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemon_species (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _toSpeciesIdMeta = const VerificationMeta(
    'toSpeciesId',
  );
  @override
  late final GeneratedColumn<int> toSpeciesId = GeneratedColumn<int>(
    'to_species_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemon_species (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _triggerMeta = const VerificationMeta(
    'trigger',
  );
  @override
  late final GeneratedColumn<String> trigger = GeneratedColumn<String>(
    'trigger',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minLevelMeta = const VerificationMeta(
    'minLevel',
  );
  @override
  late final GeneratedColumn<int> minLevel = GeneratedColumn<int>(
    'min_level',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _itemMeta = const VerificationMeta('item');
  @override
  late final GeneratedColumn<String> item = GeneratedColumn<String>(
    'item',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _minHappinessMeta = const VerificationMeta(
    'minHappiness',
  );
  @override
  late final GeneratedColumn<int> minHappiness = GeneratedColumn<int>(
    'min_happiness',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _timeOfDayMeta = const VerificationMeta(
    'timeOfDay',
  );
  @override
  late final GeneratedColumn<String> timeOfDay = GeneratedColumn<String>(
    'time_of_day',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    fromSpeciesId,
    toSpeciesId,
    trigger,
    minLevel,
    item,
    minHappiness,
    timeOfDay,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'evolutions';
  @override
  VerificationContext validateIntegrity(
    Insertable<EvolutionRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('from_species_id')) {
      context.handle(
        _fromSpeciesIdMeta,
        fromSpeciesId.isAcceptableOrUnknown(
          data['from_species_id']!,
          _fromSpeciesIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_fromSpeciesIdMeta);
    }
    if (data.containsKey('to_species_id')) {
      context.handle(
        _toSpeciesIdMeta,
        toSpeciesId.isAcceptableOrUnknown(
          data['to_species_id']!,
          _toSpeciesIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_toSpeciesIdMeta);
    }
    if (data.containsKey('trigger')) {
      context.handle(
        _triggerMeta,
        trigger.isAcceptableOrUnknown(data['trigger']!, _triggerMeta),
      );
    } else if (isInserting) {
      context.missing(_triggerMeta);
    }
    if (data.containsKey('min_level')) {
      context.handle(
        _minLevelMeta,
        minLevel.isAcceptableOrUnknown(data['min_level']!, _minLevelMeta),
      );
    }
    if (data.containsKey('item')) {
      context.handle(
        _itemMeta,
        item.isAcceptableOrUnknown(data['item']!, _itemMeta),
      );
    }
    if (data.containsKey('min_happiness')) {
      context.handle(
        _minHappinessMeta,
        minHappiness.isAcceptableOrUnknown(
          data['min_happiness']!,
          _minHappinessMeta,
        ),
      );
    }
    if (data.containsKey('time_of_day')) {
      context.handle(
        _timeOfDayMeta,
        timeOfDay.isAcceptableOrUnknown(data['time_of_day']!, _timeOfDayMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {fromSpeciesId, toSpeciesId};
  @override
  EvolutionRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EvolutionRow(
      fromSpeciesId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}from_species_id'],
      )!,
      toSpeciesId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}to_species_id'],
      )!,
      trigger: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}trigger'],
      )!,
      minLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}min_level'],
      ),
      item: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}item'],
      ),
      minHappiness: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}min_happiness'],
      ),
      timeOfDay: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}time_of_day'],
      ),
    );
  }

  @override
  $EvolutionsTable createAlias(String alias) {
    return $EvolutionsTable(attachedDatabase, alias);
  }
}

class EvolutionRow extends DataClass implements Insertable<EvolutionRow> {
  final int fromSpeciesId;
  final int toSpeciesId;
  final String trigger;
  final int? minLevel;
  final String? item;
  final int? minHappiness;
  final String? timeOfDay;
  const EvolutionRow({
    required this.fromSpeciesId,
    required this.toSpeciesId,
    required this.trigger,
    this.minLevel,
    this.item,
    this.minHappiness,
    this.timeOfDay,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['from_species_id'] = Variable<int>(fromSpeciesId);
    map['to_species_id'] = Variable<int>(toSpeciesId);
    map['trigger'] = Variable<String>(trigger);
    if (!nullToAbsent || minLevel != null) {
      map['min_level'] = Variable<int>(minLevel);
    }
    if (!nullToAbsent || item != null) {
      map['item'] = Variable<String>(item);
    }
    if (!nullToAbsent || minHappiness != null) {
      map['min_happiness'] = Variable<int>(minHappiness);
    }
    if (!nullToAbsent || timeOfDay != null) {
      map['time_of_day'] = Variable<String>(timeOfDay);
    }
    return map;
  }

  EvolutionsCompanion toCompanion(bool nullToAbsent) {
    return EvolutionsCompanion(
      fromSpeciesId: Value(fromSpeciesId),
      toSpeciesId: Value(toSpeciesId),
      trigger: Value(trigger),
      minLevel: minLevel == null && nullToAbsent
          ? const Value.absent()
          : Value(minLevel),
      item: item == null && nullToAbsent ? const Value.absent() : Value(item),
      minHappiness: minHappiness == null && nullToAbsent
          ? const Value.absent()
          : Value(minHappiness),
      timeOfDay: timeOfDay == null && nullToAbsent
          ? const Value.absent()
          : Value(timeOfDay),
    );
  }

  factory EvolutionRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EvolutionRow(
      fromSpeciesId: serializer.fromJson<int>(json['fromSpeciesId']),
      toSpeciesId: serializer.fromJson<int>(json['toSpeciesId']),
      trigger: serializer.fromJson<String>(json['trigger']),
      minLevel: serializer.fromJson<int?>(json['minLevel']),
      item: serializer.fromJson<String?>(json['item']),
      minHappiness: serializer.fromJson<int?>(json['minHappiness']),
      timeOfDay: serializer.fromJson<String?>(json['timeOfDay']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'fromSpeciesId': serializer.toJson<int>(fromSpeciesId),
      'toSpeciesId': serializer.toJson<int>(toSpeciesId),
      'trigger': serializer.toJson<String>(trigger),
      'minLevel': serializer.toJson<int?>(minLevel),
      'item': serializer.toJson<String?>(item),
      'minHappiness': serializer.toJson<int?>(minHappiness),
      'timeOfDay': serializer.toJson<String?>(timeOfDay),
    };
  }

  EvolutionRow copyWith({
    int? fromSpeciesId,
    int? toSpeciesId,
    String? trigger,
    Value<int?> minLevel = const Value.absent(),
    Value<String?> item = const Value.absent(),
    Value<int?> minHappiness = const Value.absent(),
    Value<String?> timeOfDay = const Value.absent(),
  }) => EvolutionRow(
    fromSpeciesId: fromSpeciesId ?? this.fromSpeciesId,
    toSpeciesId: toSpeciesId ?? this.toSpeciesId,
    trigger: trigger ?? this.trigger,
    minLevel: minLevel.present ? minLevel.value : this.minLevel,
    item: item.present ? item.value : this.item,
    minHappiness: minHappiness.present ? minHappiness.value : this.minHappiness,
    timeOfDay: timeOfDay.present ? timeOfDay.value : this.timeOfDay,
  );
  EvolutionRow copyWithCompanion(EvolutionsCompanion data) {
    return EvolutionRow(
      fromSpeciesId: data.fromSpeciesId.present
          ? data.fromSpeciesId.value
          : this.fromSpeciesId,
      toSpeciesId: data.toSpeciesId.present
          ? data.toSpeciesId.value
          : this.toSpeciesId,
      trigger: data.trigger.present ? data.trigger.value : this.trigger,
      minLevel: data.minLevel.present ? data.minLevel.value : this.minLevel,
      item: data.item.present ? data.item.value : this.item,
      minHappiness: data.minHappiness.present
          ? data.minHappiness.value
          : this.minHappiness,
      timeOfDay: data.timeOfDay.present ? data.timeOfDay.value : this.timeOfDay,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EvolutionRow(')
          ..write('fromSpeciesId: $fromSpeciesId, ')
          ..write('toSpeciesId: $toSpeciesId, ')
          ..write('trigger: $trigger, ')
          ..write('minLevel: $minLevel, ')
          ..write('item: $item, ')
          ..write('minHappiness: $minHappiness, ')
          ..write('timeOfDay: $timeOfDay')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    fromSpeciesId,
    toSpeciesId,
    trigger,
    minLevel,
    item,
    minHappiness,
    timeOfDay,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EvolutionRow &&
          other.fromSpeciesId == this.fromSpeciesId &&
          other.toSpeciesId == this.toSpeciesId &&
          other.trigger == this.trigger &&
          other.minLevel == this.minLevel &&
          other.item == this.item &&
          other.minHappiness == this.minHappiness &&
          other.timeOfDay == this.timeOfDay);
}

class EvolutionsCompanion extends UpdateCompanion<EvolutionRow> {
  final Value<int> fromSpeciesId;
  final Value<int> toSpeciesId;
  final Value<String> trigger;
  final Value<int?> minLevel;
  final Value<String?> item;
  final Value<int?> minHappiness;
  final Value<String?> timeOfDay;
  final Value<int> rowid;
  const EvolutionsCompanion({
    this.fromSpeciesId = const Value.absent(),
    this.toSpeciesId = const Value.absent(),
    this.trigger = const Value.absent(),
    this.minLevel = const Value.absent(),
    this.item = const Value.absent(),
    this.minHappiness = const Value.absent(),
    this.timeOfDay = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EvolutionsCompanion.insert({
    required int fromSpeciesId,
    required int toSpeciesId,
    required String trigger,
    this.minLevel = const Value.absent(),
    this.item = const Value.absent(),
    this.minHappiness = const Value.absent(),
    this.timeOfDay = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : fromSpeciesId = Value(fromSpeciesId),
       toSpeciesId = Value(toSpeciesId),
       trigger = Value(trigger);
  static Insertable<EvolutionRow> custom({
    Expression<int>? fromSpeciesId,
    Expression<int>? toSpeciesId,
    Expression<String>? trigger,
    Expression<int>? minLevel,
    Expression<String>? item,
    Expression<int>? minHappiness,
    Expression<String>? timeOfDay,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (fromSpeciesId != null) 'from_species_id': fromSpeciesId,
      if (toSpeciesId != null) 'to_species_id': toSpeciesId,
      if (trigger != null) 'trigger': trigger,
      if (minLevel != null) 'min_level': minLevel,
      if (item != null) 'item': item,
      if (minHappiness != null) 'min_happiness': minHappiness,
      if (timeOfDay != null) 'time_of_day': timeOfDay,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EvolutionsCompanion copyWith({
    Value<int>? fromSpeciesId,
    Value<int>? toSpeciesId,
    Value<String>? trigger,
    Value<int?>? minLevel,
    Value<String?>? item,
    Value<int?>? minHappiness,
    Value<String?>? timeOfDay,
    Value<int>? rowid,
  }) {
    return EvolutionsCompanion(
      fromSpeciesId: fromSpeciesId ?? this.fromSpeciesId,
      toSpeciesId: toSpeciesId ?? this.toSpeciesId,
      trigger: trigger ?? this.trigger,
      minLevel: minLevel ?? this.minLevel,
      item: item ?? this.item,
      minHappiness: minHappiness ?? this.minHappiness,
      timeOfDay: timeOfDay ?? this.timeOfDay,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (fromSpeciesId.present) {
      map['from_species_id'] = Variable<int>(fromSpeciesId.value);
    }
    if (toSpeciesId.present) {
      map['to_species_id'] = Variable<int>(toSpeciesId.value);
    }
    if (trigger.present) {
      map['trigger'] = Variable<String>(trigger.value);
    }
    if (minLevel.present) {
      map['min_level'] = Variable<int>(minLevel.value);
    }
    if (item.present) {
      map['item'] = Variable<String>(item.value);
    }
    if (minHappiness.present) {
      map['min_happiness'] = Variable<int>(minHappiness.value);
    }
    if (timeOfDay.present) {
      map['time_of_day'] = Variable<String>(timeOfDay.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EvolutionsCompanion(')
          ..write('fromSpeciesId: $fromSpeciesId, ')
          ..write('toSpeciesId: $toSpeciesId, ')
          ..write('trigger: $trigger, ')
          ..write('minLevel: $minLevel, ')
          ..write('item: $item, ')
          ..write('minHappiness: $minHappiness, ')
          ..write('timeOfDay: $timeOfDay, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EggGroupsTable extends EggGroups
    with TableInfo<$EggGroupsTable, EggGroupRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EggGroupsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'egg_groups';
  @override
  VerificationContext validateIntegrity(
    Insertable<EggGroupRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EggGroupRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EggGroupRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
    );
  }

  @override
  $EggGroupsTable createAlias(String alias) {
    return $EggGroupsTable(attachedDatabase, alias);
  }
}

class EggGroupRow extends DataClass implements Insertable<EggGroupRow> {
  final int id;
  final String name;
  const EggGroupRow({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  EggGroupsCompanion toCompanion(bool nullToAbsent) {
    return EggGroupsCompanion(id: Value(id), name: Value(name));
  }

  factory EggGroupRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EggGroupRow(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  EggGroupRow copyWith({int? id, String? name}) =>
      EggGroupRow(id: id ?? this.id, name: name ?? this.name);
  EggGroupRow copyWithCompanion(EggGroupsCompanion data) {
    return EggGroupRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EggGroupRow(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EggGroupRow && other.id == this.id && other.name == this.name);
}

class EggGroupsCompanion extends UpdateCompanion<EggGroupRow> {
  final Value<int> id;
  final Value<String> name;
  const EggGroupsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  EggGroupsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<EggGroupRow> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  EggGroupsCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return EggGroupsCompanion(id: id ?? this.id, name: name ?? this.name);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EggGroupsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $SpeciesEggGroupsTable extends SpeciesEggGroups
    with TableInfo<$SpeciesEggGroupsTable, SpeciesEggGroupRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SpeciesEggGroupsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _speciesIdMeta = const VerificationMeta(
    'speciesId',
  );
  @override
  late final GeneratedColumn<int> speciesId = GeneratedColumn<int>(
    'species_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemon_species (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _eggGroupIdMeta = const VerificationMeta(
    'eggGroupId',
  );
  @override
  late final GeneratedColumn<int> eggGroupId = GeneratedColumn<int>(
    'egg_group_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES egg_groups (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [speciesId, eggGroupId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'species_egg_groups';
  @override
  VerificationContext validateIntegrity(
    Insertable<SpeciesEggGroupRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('species_id')) {
      context.handle(
        _speciesIdMeta,
        speciesId.isAcceptableOrUnknown(data['species_id']!, _speciesIdMeta),
      );
    } else if (isInserting) {
      context.missing(_speciesIdMeta);
    }
    if (data.containsKey('egg_group_id')) {
      context.handle(
        _eggGroupIdMeta,
        eggGroupId.isAcceptableOrUnknown(
          data['egg_group_id']!,
          _eggGroupIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_eggGroupIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {speciesId, eggGroupId};
  @override
  SpeciesEggGroupRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SpeciesEggGroupRow(
      speciesId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}species_id'],
      )!,
      eggGroupId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}egg_group_id'],
      )!,
    );
  }

  @override
  $SpeciesEggGroupsTable createAlias(String alias) {
    return $SpeciesEggGroupsTable(attachedDatabase, alias);
  }
}

class SpeciesEggGroupRow extends DataClass
    implements Insertable<SpeciesEggGroupRow> {
  final int speciesId;
  final int eggGroupId;
  const SpeciesEggGroupRow({required this.speciesId, required this.eggGroupId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['species_id'] = Variable<int>(speciesId);
    map['egg_group_id'] = Variable<int>(eggGroupId);
    return map;
  }

  SpeciesEggGroupsCompanion toCompanion(bool nullToAbsent) {
    return SpeciesEggGroupsCompanion(
      speciesId: Value(speciesId),
      eggGroupId: Value(eggGroupId),
    );
  }

  factory SpeciesEggGroupRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SpeciesEggGroupRow(
      speciesId: serializer.fromJson<int>(json['speciesId']),
      eggGroupId: serializer.fromJson<int>(json['eggGroupId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'speciesId': serializer.toJson<int>(speciesId),
      'eggGroupId': serializer.toJson<int>(eggGroupId),
    };
  }

  SpeciesEggGroupRow copyWith({int? speciesId, int? eggGroupId}) =>
      SpeciesEggGroupRow(
        speciesId: speciesId ?? this.speciesId,
        eggGroupId: eggGroupId ?? this.eggGroupId,
      );
  SpeciesEggGroupRow copyWithCompanion(SpeciesEggGroupsCompanion data) {
    return SpeciesEggGroupRow(
      speciesId: data.speciesId.present ? data.speciesId.value : this.speciesId,
      eggGroupId: data.eggGroupId.present
          ? data.eggGroupId.value
          : this.eggGroupId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SpeciesEggGroupRow(')
          ..write('speciesId: $speciesId, ')
          ..write('eggGroupId: $eggGroupId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(speciesId, eggGroupId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SpeciesEggGroupRow &&
          other.speciesId == this.speciesId &&
          other.eggGroupId == this.eggGroupId);
}

class SpeciesEggGroupsCompanion extends UpdateCompanion<SpeciesEggGroupRow> {
  final Value<int> speciesId;
  final Value<int> eggGroupId;
  final Value<int> rowid;
  const SpeciesEggGroupsCompanion({
    this.speciesId = const Value.absent(),
    this.eggGroupId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SpeciesEggGroupsCompanion.insert({
    required int speciesId,
    required int eggGroupId,
    this.rowid = const Value.absent(),
  }) : speciesId = Value(speciesId),
       eggGroupId = Value(eggGroupId);
  static Insertable<SpeciesEggGroupRow> custom({
    Expression<int>? speciesId,
    Expression<int>? eggGroupId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (speciesId != null) 'species_id': speciesId,
      if (eggGroupId != null) 'egg_group_id': eggGroupId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SpeciesEggGroupsCompanion copyWith({
    Value<int>? speciesId,
    Value<int>? eggGroupId,
    Value<int>? rowid,
  }) {
    return SpeciesEggGroupsCompanion(
      speciesId: speciesId ?? this.speciesId,
      eggGroupId: eggGroupId ?? this.eggGroupId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (speciesId.present) {
      map['species_id'] = Variable<int>(speciesId.value);
    }
    if (eggGroupId.present) {
      map['egg_group_id'] = Variable<int>(eggGroupId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SpeciesEggGroupsCompanion(')
          ..write('speciesId: $speciesId, ')
          ..write('eggGroupId: $eggGroupId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $VersionGroupsTable extends VersionGroups
    with TableInfo<$VersionGroupsTable, VersionGroupRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VersionGroupsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'version_groups';
  @override
  VerificationContext validateIntegrity(
    Insertable<VersionGroupRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  VersionGroupRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VersionGroupRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
    );
  }

  @override
  $VersionGroupsTable createAlias(String alias) {
    return $VersionGroupsTable(attachedDatabase, alias);
  }
}

class VersionGroupRow extends DataClass implements Insertable<VersionGroupRow> {
  final int id;
  final String name;
  const VersionGroupRow({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  VersionGroupsCompanion toCompanion(bool nullToAbsent) {
    return VersionGroupsCompanion(id: Value(id), name: Value(name));
  }

  factory VersionGroupRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VersionGroupRow(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  VersionGroupRow copyWith({int? id, String? name}) =>
      VersionGroupRow(id: id ?? this.id, name: name ?? this.name);
  VersionGroupRow copyWithCompanion(VersionGroupsCompanion data) {
    return VersionGroupRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('VersionGroupRow(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VersionGroupRow &&
          other.id == this.id &&
          other.name == this.name);
}

class VersionGroupsCompanion extends UpdateCompanion<VersionGroupRow> {
  final Value<int> id;
  final Value<String> name;
  const VersionGroupsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  VersionGroupsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<VersionGroupRow> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  VersionGroupsCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return VersionGroupsCompanion(id: id ?? this.id, name: name ?? this.name);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VersionGroupsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $MovesTable extends Moves with TableInfo<$MovesTable, MoveRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MovesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeIdMeta = const VerificationMeta('typeId');
  @override
  late final GeneratedColumn<int> typeId = GeneratedColumn<int>(
    'type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES types (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, typeId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'moves';
  @override
  VerificationContext validateIntegrity(
    Insertable<MoveRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('type_id')) {
      context.handle(
        _typeIdMeta,
        typeId.isAcceptableOrUnknown(data['type_id']!, _typeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_typeIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoveRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MoveRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      typeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}type_id'],
      )!,
    );
  }

  @override
  $MovesTable createAlias(String alias) {
    return $MovesTable(attachedDatabase, alias);
  }
}

class MoveRow extends DataClass implements Insertable<MoveRow> {
  final int id;
  final String name;
  final int typeId;
  const MoveRow({required this.id, required this.name, required this.typeId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['type_id'] = Variable<int>(typeId);
    return map;
  }

  MovesCompanion toCompanion(bool nullToAbsent) {
    return MovesCompanion(
      id: Value(id),
      name: Value(name),
      typeId: Value(typeId),
    );
  }

  factory MoveRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MoveRow(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      typeId: serializer.fromJson<int>(json['typeId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'typeId': serializer.toJson<int>(typeId),
    };
  }

  MoveRow copyWith({int? id, String? name, int? typeId}) => MoveRow(
    id: id ?? this.id,
    name: name ?? this.name,
    typeId: typeId ?? this.typeId,
  );
  MoveRow copyWithCompanion(MovesCompanion data) {
    return MoveRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      typeId: data.typeId.present ? data.typeId.value : this.typeId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MoveRow(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('typeId: $typeId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, typeId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoveRow &&
          other.id == this.id &&
          other.name == this.name &&
          other.typeId == this.typeId);
}

class MovesCompanion extends UpdateCompanion<MoveRow> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> typeId;
  const MovesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.typeId = const Value.absent(),
  });
  MovesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int typeId,
  }) : name = Value(name),
       typeId = Value(typeId);
  static Insertable<MoveRow> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? typeId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (typeId != null) 'type_id': typeId,
    });
  }

  MovesCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<int>? typeId,
  }) {
    return MovesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      typeId: typeId ?? this.typeId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (typeId.present) {
      map['type_id'] = Variable<int>(typeId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MovesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('typeId: $typeId')
          ..write(')'))
        .toString();
  }
}

class $PokemonMovesTable extends PokemonMoves
    with TableInfo<$PokemonMovesTable, PokemonMoveRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonMovesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemons (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _moveIdMeta = const VerificationMeta('moveId');
  @override
  late final GeneratedColumn<int> moveId = GeneratedColumn<int>(
    'move_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES moves (id)',
    ),
  );
  static const VerificationMeta _versionGroupIdMeta = const VerificationMeta(
    'versionGroupId',
  );
  @override
  late final GeneratedColumn<int> versionGroupId = GeneratedColumn<int>(
    'version_group_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES version_groups (id)',
    ),
  );
  static const VerificationMeta _learnMethodMeta = const VerificationMeta(
    'learnMethod',
  );
  @override
  late final GeneratedColumn<String> learnMethod = GeneratedColumn<String>(
    'learn_method',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<int> level = GeneratedColumn<int>(
    'level',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    pokemonId,
    moveId,
    versionGroupId,
    learnMethod,
    level,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_moves';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonMoveRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('move_id')) {
      context.handle(
        _moveIdMeta,
        moveId.isAcceptableOrUnknown(data['move_id']!, _moveIdMeta),
      );
    } else if (isInserting) {
      context.missing(_moveIdMeta);
    }
    if (data.containsKey('version_group_id')) {
      context.handle(
        _versionGroupIdMeta,
        versionGroupId.isAcceptableOrUnknown(
          data['version_group_id']!,
          _versionGroupIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_versionGroupIdMeta);
    }
    if (data.containsKey('learn_method')) {
      context.handle(
        _learnMethodMeta,
        learnMethod.isAcceptableOrUnknown(
          data['learn_method']!,
          _learnMethodMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_learnMethodMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
        _levelMeta,
        level.isAcceptableOrUnknown(data['level']!, _levelMeta),
      );
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {
    pokemonId,
    moveId,
    versionGroupId,
    learnMethod,
    level,
  };
  @override
  PokemonMoveRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonMoveRow(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      moveId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}move_id'],
      )!,
      versionGroupId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}version_group_id'],
      )!,
      learnMethod: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}learn_method'],
      )!,
      level: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}level'],
      )!,
    );
  }

  @override
  $PokemonMovesTable createAlias(String alias) {
    return $PokemonMovesTable(attachedDatabase, alias);
  }
}

class PokemonMoveRow extends DataClass implements Insertable<PokemonMoveRow> {
  final int pokemonId;
  final int moveId;
  final int versionGroupId;
  final String learnMethod;
  final int level;
  const PokemonMoveRow({
    required this.pokemonId,
    required this.moveId,
    required this.versionGroupId,
    required this.learnMethod,
    required this.level,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['move_id'] = Variable<int>(moveId);
    map['version_group_id'] = Variable<int>(versionGroupId);
    map['learn_method'] = Variable<String>(learnMethod);
    map['level'] = Variable<int>(level);
    return map;
  }

  PokemonMovesCompanion toCompanion(bool nullToAbsent) {
    return PokemonMovesCompanion(
      pokemonId: Value(pokemonId),
      moveId: Value(moveId),
      versionGroupId: Value(versionGroupId),
      learnMethod: Value(learnMethod),
      level: Value(level),
    );
  }

  factory PokemonMoveRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonMoveRow(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      moveId: serializer.fromJson<int>(json['moveId']),
      versionGroupId: serializer.fromJson<int>(json['versionGroupId']),
      learnMethod: serializer.fromJson<String>(json['learnMethod']),
      level: serializer.fromJson<int>(json['level']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'moveId': serializer.toJson<int>(moveId),
      'versionGroupId': serializer.toJson<int>(versionGroupId),
      'learnMethod': serializer.toJson<String>(learnMethod),
      'level': serializer.toJson<int>(level),
    };
  }

  PokemonMoveRow copyWith({
    int? pokemonId,
    int? moveId,
    int? versionGroupId,
    String? learnMethod,
    int? level,
  }) => PokemonMoveRow(
    pokemonId: pokemonId ?? this.pokemonId,
    moveId: moveId ?? this.moveId,
    versionGroupId: versionGroupId ?? this.versionGroupId,
    learnMethod: learnMethod ?? this.learnMethod,
    level: level ?? this.level,
  );
  PokemonMoveRow copyWithCompanion(PokemonMovesCompanion data) {
    return PokemonMoveRow(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      moveId: data.moveId.present ? data.moveId.value : this.moveId,
      versionGroupId: data.versionGroupId.present
          ? data.versionGroupId.value
          : this.versionGroupId,
      learnMethod: data.learnMethod.present
          ? data.learnMethod.value
          : this.learnMethod,
      level: data.level.present ? data.level.value : this.level,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonMoveRow(')
          ..write('pokemonId: $pokemonId, ')
          ..write('moveId: $moveId, ')
          ..write('versionGroupId: $versionGroupId, ')
          ..write('learnMethod: $learnMethod, ')
          ..write('level: $level')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(pokemonId, moveId, versionGroupId, learnMethod, level);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonMoveRow &&
          other.pokemonId == this.pokemonId &&
          other.moveId == this.moveId &&
          other.versionGroupId == this.versionGroupId &&
          other.learnMethod == this.learnMethod &&
          other.level == this.level);
}

class PokemonMovesCompanion extends UpdateCompanion<PokemonMoveRow> {
  final Value<int> pokemonId;
  final Value<int> moveId;
  final Value<int> versionGroupId;
  final Value<String> learnMethod;
  final Value<int> level;
  final Value<int> rowid;
  const PokemonMovesCompanion({
    this.pokemonId = const Value.absent(),
    this.moveId = const Value.absent(),
    this.versionGroupId = const Value.absent(),
    this.learnMethod = const Value.absent(),
    this.level = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PokemonMovesCompanion.insert({
    required int pokemonId,
    required int moveId,
    required int versionGroupId,
    required String learnMethod,
    required int level,
    this.rowid = const Value.absent(),
  }) : pokemonId = Value(pokemonId),
       moveId = Value(moveId),
       versionGroupId = Value(versionGroupId),
       learnMethod = Value(learnMethod),
       level = Value(level);
  static Insertable<PokemonMoveRow> custom({
    Expression<int>? pokemonId,
    Expression<int>? moveId,
    Expression<int>? versionGroupId,
    Expression<String>? learnMethod,
    Expression<int>? level,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (moveId != null) 'move_id': moveId,
      if (versionGroupId != null) 'version_group_id': versionGroupId,
      if (learnMethod != null) 'learn_method': learnMethod,
      if (level != null) 'level': level,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PokemonMovesCompanion copyWith({
    Value<int>? pokemonId,
    Value<int>? moveId,
    Value<int>? versionGroupId,
    Value<String>? learnMethod,
    Value<int>? level,
    Value<int>? rowid,
  }) {
    return PokemonMovesCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      moveId: moveId ?? this.moveId,
      versionGroupId: versionGroupId ?? this.versionGroupId,
      learnMethod: learnMethod ?? this.learnMethod,
      level: level ?? this.level,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (moveId.present) {
      map['move_id'] = Variable<int>(moveId.value);
    }
    if (versionGroupId.present) {
      map['version_group_id'] = Variable<int>(versionGroupId.value);
    }
    if (learnMethod.present) {
      map['learn_method'] = Variable<String>(learnMethod.value);
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonMovesCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('moveId: $moveId, ')
          ..write('versionGroupId: $versionGroupId, ')
          ..write('learnMethod: $learnMethod, ')
          ..write('level: $level, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PokemonGamesTable extends PokemonGames
    with TableInfo<$PokemonGamesTable, PokemonGameRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonGamesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemons (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _gameNameMeta = const VerificationMeta(
    'gameName',
  );
  @override
  late final GeneratedColumn<String> gameName = GeneratedColumn<String>(
    'game_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [pokemonId, gameName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_games';
  @override
  VerificationContext validateIntegrity(
    Insertable<PokemonGameRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('game_name')) {
      context.handle(
        _gameNameMeta,
        gameName.isAcceptableOrUnknown(data['game_name']!, _gameNameMeta),
      );
    } else if (isInserting) {
      context.missing(_gameNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pokemonId, gameName};
  @override
  PokemonGameRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonGameRow(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      gameName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}game_name'],
      )!,
    );
  }

  @override
  $PokemonGamesTable createAlias(String alias) {
    return $PokemonGamesTable(attachedDatabase, alias);
  }
}

class PokemonGameRow extends DataClass implements Insertable<PokemonGameRow> {
  final int pokemonId;
  final String gameName;
  const PokemonGameRow({required this.pokemonId, required this.gameName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['game_name'] = Variable<String>(gameName);
    return map;
  }

  PokemonGamesCompanion toCompanion(bool nullToAbsent) {
    return PokemonGamesCompanion(
      pokemonId: Value(pokemonId),
      gameName: Value(gameName),
    );
  }

  factory PokemonGameRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonGameRow(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      gameName: serializer.fromJson<String>(json['gameName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'gameName': serializer.toJson<String>(gameName),
    };
  }

  PokemonGameRow copyWith({int? pokemonId, String? gameName}) => PokemonGameRow(
    pokemonId: pokemonId ?? this.pokemonId,
    gameName: gameName ?? this.gameName,
  );
  PokemonGameRow copyWithCompanion(PokemonGamesCompanion data) {
    return PokemonGameRow(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      gameName: data.gameName.present ? data.gameName.value : this.gameName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonGameRow(')
          ..write('pokemonId: $pokemonId, ')
          ..write('gameName: $gameName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pokemonId, gameName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonGameRow &&
          other.pokemonId == this.pokemonId &&
          other.gameName == this.gameName);
}

class PokemonGamesCompanion extends UpdateCompanion<PokemonGameRow> {
  final Value<int> pokemonId;
  final Value<String> gameName;
  final Value<int> rowid;
  const PokemonGamesCompanion({
    this.pokemonId = const Value.absent(),
    this.gameName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PokemonGamesCompanion.insert({
    required int pokemonId,
    required String gameName,
    this.rowid = const Value.absent(),
  }) : pokemonId = Value(pokemonId),
       gameName = Value(gameName);
  static Insertable<PokemonGameRow> custom({
    Expression<int>? pokemonId,
    Expression<String>? gameName,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (gameName != null) 'game_name': gameName,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PokemonGamesCompanion copyWith({
    Value<int>? pokemonId,
    Value<String>? gameName,
    Value<int>? rowid,
  }) {
    return PokemonGamesCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      gameName: gameName ?? this.gameName,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (gameName.present) {
      map['game_name'] = Variable<String>(gameName.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonGamesCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('gameName: $gameName, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TypeEfficaciesTable extends TypeEfficacies
    with TableInfo<$TypeEfficaciesTable, TypeEfficacyRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TypeEfficaciesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _attackingTypeIdMeta = const VerificationMeta(
    'attackingTypeId',
  );
  @override
  late final GeneratedColumn<int> attackingTypeId = GeneratedColumn<int>(
    'attacking_type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES types (id)',
    ),
  );
  static const VerificationMeta _defendingTypeIdMeta = const VerificationMeta(
    'defendingTypeId',
  );
  @override
  late final GeneratedColumn<int> defendingTypeId = GeneratedColumn<int>(
    'defending_type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES types (id)',
    ),
  );
  static const VerificationMeta _damageFactorMeta = const VerificationMeta(
    'damageFactor',
  );
  @override
  late final GeneratedColumn<int> damageFactor = GeneratedColumn<int>(
    'damage_factor',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    attackingTypeId,
    defendingTypeId,
    damageFactor,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'type_efficacies';
  @override
  VerificationContext validateIntegrity(
    Insertable<TypeEfficacyRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('attacking_type_id')) {
      context.handle(
        _attackingTypeIdMeta,
        attackingTypeId.isAcceptableOrUnknown(
          data['attacking_type_id']!,
          _attackingTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_attackingTypeIdMeta);
    }
    if (data.containsKey('defending_type_id')) {
      context.handle(
        _defendingTypeIdMeta,
        defendingTypeId.isAcceptableOrUnknown(
          data['defending_type_id']!,
          _defendingTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_defendingTypeIdMeta);
    }
    if (data.containsKey('damage_factor')) {
      context.handle(
        _damageFactorMeta,
        damageFactor.isAcceptableOrUnknown(
          data['damage_factor']!,
          _damageFactorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_damageFactorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {attackingTypeId, defendingTypeId};
  @override
  TypeEfficacyRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TypeEfficacyRow(
      attackingTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}attacking_type_id'],
      )!,
      defendingTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}defending_type_id'],
      )!,
      damageFactor: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}damage_factor'],
      )!,
    );
  }

  @override
  $TypeEfficaciesTable createAlias(String alias) {
    return $TypeEfficaciesTable(attachedDatabase, alias);
  }
}

class TypeEfficacyRow extends DataClass implements Insertable<TypeEfficacyRow> {
  final int attackingTypeId;
  final int defendingTypeId;
  final int damageFactor;
  const TypeEfficacyRow({
    required this.attackingTypeId,
    required this.defendingTypeId,
    required this.damageFactor,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['attacking_type_id'] = Variable<int>(attackingTypeId);
    map['defending_type_id'] = Variable<int>(defendingTypeId);
    map['damage_factor'] = Variable<int>(damageFactor);
    return map;
  }

  TypeEfficaciesCompanion toCompanion(bool nullToAbsent) {
    return TypeEfficaciesCompanion(
      attackingTypeId: Value(attackingTypeId),
      defendingTypeId: Value(defendingTypeId),
      damageFactor: Value(damageFactor),
    );
  }

  factory TypeEfficacyRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TypeEfficacyRow(
      attackingTypeId: serializer.fromJson<int>(json['attackingTypeId']),
      defendingTypeId: serializer.fromJson<int>(json['defendingTypeId']),
      damageFactor: serializer.fromJson<int>(json['damageFactor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'attackingTypeId': serializer.toJson<int>(attackingTypeId),
      'defendingTypeId': serializer.toJson<int>(defendingTypeId),
      'damageFactor': serializer.toJson<int>(damageFactor),
    };
  }

  TypeEfficacyRow copyWith({
    int? attackingTypeId,
    int? defendingTypeId,
    int? damageFactor,
  }) => TypeEfficacyRow(
    attackingTypeId: attackingTypeId ?? this.attackingTypeId,
    defendingTypeId: defendingTypeId ?? this.defendingTypeId,
    damageFactor: damageFactor ?? this.damageFactor,
  );
  TypeEfficacyRow copyWithCompanion(TypeEfficaciesCompanion data) {
    return TypeEfficacyRow(
      attackingTypeId: data.attackingTypeId.present
          ? data.attackingTypeId.value
          : this.attackingTypeId,
      defendingTypeId: data.defendingTypeId.present
          ? data.defendingTypeId.value
          : this.defendingTypeId,
      damageFactor: data.damageFactor.present
          ? data.damageFactor.value
          : this.damageFactor,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TypeEfficacyRow(')
          ..write('attackingTypeId: $attackingTypeId, ')
          ..write('defendingTypeId: $defendingTypeId, ')
          ..write('damageFactor: $damageFactor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(attackingTypeId, defendingTypeId, damageFactor);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TypeEfficacyRow &&
          other.attackingTypeId == this.attackingTypeId &&
          other.defendingTypeId == this.defendingTypeId &&
          other.damageFactor == this.damageFactor);
}

class TypeEfficaciesCompanion extends UpdateCompanion<TypeEfficacyRow> {
  final Value<int> attackingTypeId;
  final Value<int> defendingTypeId;
  final Value<int> damageFactor;
  final Value<int> rowid;
  const TypeEfficaciesCompanion({
    this.attackingTypeId = const Value.absent(),
    this.defendingTypeId = const Value.absent(),
    this.damageFactor = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TypeEfficaciesCompanion.insert({
    required int attackingTypeId,
    required int defendingTypeId,
    required int damageFactor,
    this.rowid = const Value.absent(),
  }) : attackingTypeId = Value(attackingTypeId),
       defendingTypeId = Value(defendingTypeId),
       damageFactor = Value(damageFactor);
  static Insertable<TypeEfficacyRow> custom({
    Expression<int>? attackingTypeId,
    Expression<int>? defendingTypeId,
    Expression<int>? damageFactor,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (attackingTypeId != null) 'attacking_type_id': attackingTypeId,
      if (defendingTypeId != null) 'defending_type_id': defendingTypeId,
      if (damageFactor != null) 'damage_factor': damageFactor,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TypeEfficaciesCompanion copyWith({
    Value<int>? attackingTypeId,
    Value<int>? defendingTypeId,
    Value<int>? damageFactor,
    Value<int>? rowid,
  }) {
    return TypeEfficaciesCompanion(
      attackingTypeId: attackingTypeId ?? this.attackingTypeId,
      defendingTypeId: defendingTypeId ?? this.defendingTypeId,
      damageFactor: damageFactor ?? this.damageFactor,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (attackingTypeId.present) {
      map['attacking_type_id'] = Variable<int>(attackingTypeId.value);
    }
    if (defendingTypeId.present) {
      map['defending_type_id'] = Variable<int>(defendingTypeId.value);
    }
    if (damageFactor.present) {
      map['damage_factor'] = Variable<int>(damageFactor.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TypeEfficaciesCompanion(')
          ..write('attackingTypeId: $attackingTypeId, ')
          ..write('defendingTypeId: $defendingTypeId, ')
          ..write('damageFactor: $damageFactor, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FavoritesTable extends Favorites
    with TableInfo<$FavoritesTable, FavoriteRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoritesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemons (id)',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [pokemonId, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorites';
  @override
  VerificationContext validateIntegrity(
    Insertable<FavoriteRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pokemonId};
  @override
  FavoriteRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavoriteRow(
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $FavoritesTable createAlias(String alias) {
    return $FavoritesTable(attachedDatabase, alias);
  }
}

class FavoriteRow extends DataClass implements Insertable<FavoriteRow> {
  final int pokemonId;
  final DateTime createdAt;
  const FavoriteRow({required this.pokemonId, required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  FavoritesCompanion toCompanion(bool nullToAbsent) {
    return FavoritesCompanion(
      pokemonId: Value(pokemonId),
      createdAt: Value(createdAt),
    );
  }

  factory FavoriteRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FavoriteRow(
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pokemonId': serializer.toJson<int>(pokemonId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  FavoriteRow copyWith({int? pokemonId, DateTime? createdAt}) => FavoriteRow(
    pokemonId: pokemonId ?? this.pokemonId,
    createdAt: createdAt ?? this.createdAt,
  );
  FavoriteRow copyWithCompanion(FavoritesCompanion data) {
    return FavoriteRow(
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteRow(')
          ..write('pokemonId: $pokemonId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pokemonId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoriteRow &&
          other.pokemonId == this.pokemonId &&
          other.createdAt == this.createdAt);
}

class FavoritesCompanion extends UpdateCompanion<FavoriteRow> {
  final Value<int> pokemonId;
  final Value<DateTime> createdAt;
  const FavoritesCompanion({
    this.pokemonId = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  FavoritesCompanion.insert({
    this.pokemonId = const Value.absent(),
    required DateTime createdAt,
  }) : createdAt = Value(createdAt);
  static Insertable<FavoriteRow> custom({
    Expression<int>? pokemonId,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  FavoritesCompanion copyWith({
    Value<int>? pokemonId,
    Value<DateTime>? createdAt,
  }) {
    return FavoritesCompanion(
      pokemonId: pokemonId ?? this.pokemonId,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoritesCompanion(')
          ..write('pokemonId: $pokemonId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $AppSettingsTable extends AppSettings
    with TableInfo<$AppSettingsTable, AppSettingRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AppSettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'app_settings';
  @override
  VerificationContext validateIntegrity(
    Insertable<AppSettingRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  AppSettingRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AppSettingRow(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  $AppSettingsTable createAlias(String alias) {
    return $AppSettingsTable(attachedDatabase, alias);
  }
}

class AppSettingRow extends DataClass implements Insertable<AppSettingRow> {
  final String key;
  final String value;
  const AppSettingRow({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  AppSettingsCompanion toCompanion(bool nullToAbsent) {
    return AppSettingsCompanion(key: Value(key), value: Value(value));
  }

  factory AppSettingRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AppSettingRow(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  AppSettingRow copyWith({String? key, String? value}) =>
      AppSettingRow(key: key ?? this.key, value: value ?? this.value);
  AppSettingRow copyWithCompanion(AppSettingsCompanion data) {
    return AppSettingRow(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AppSettingRow(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppSettingRow &&
          other.key == this.key &&
          other.value == this.value);
}

class AppSettingsCompanion extends UpdateCompanion<AppSettingRow> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const AppSettingsCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AppSettingsCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       value = Value(value);
  static Insertable<AppSettingRow> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AppSettingsCompanion copyWith({
    Value<String>? key,
    Value<String>? value,
    Value<int>? rowid,
  }) {
    return AppSettingsCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppSettingsCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TriviaResultsTable extends TriviaResults
    with TableInfo<$TriviaResultsTable, TriviaResultRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TriviaResultsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _scoreMeta = const VerificationMeta('score');
  @override
  late final GeneratedColumn<int> score = GeneratedColumn<int>(
    'score',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _correctAnswersMeta = const VerificationMeta(
    'correctAnswers',
  );
  @override
  late final GeneratedColumn<int> correctAnswers = GeneratedColumn<int>(
    'correct_answers',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalQuestionsMeta = const VerificationMeta(
    'totalQuestions',
  );
  @override
  late final GeneratedColumn<int> totalQuestions = GeneratedColumn<int>(
    'total_questions',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _playedAtMeta = const VerificationMeta(
    'playedAt',
  );
  @override
  late final GeneratedColumn<DateTime> playedAt = GeneratedColumn<DateTime>(
    'played_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    score,
    correctAnswers,
    totalQuestions,
    playedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'trivia_results';
  @override
  VerificationContext validateIntegrity(
    Insertable<TriviaResultRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('score')) {
      context.handle(
        _scoreMeta,
        score.isAcceptableOrUnknown(data['score']!, _scoreMeta),
      );
    } else if (isInserting) {
      context.missing(_scoreMeta);
    }
    if (data.containsKey('correct_answers')) {
      context.handle(
        _correctAnswersMeta,
        correctAnswers.isAcceptableOrUnknown(
          data['correct_answers']!,
          _correctAnswersMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_correctAnswersMeta);
    }
    if (data.containsKey('total_questions')) {
      context.handle(
        _totalQuestionsMeta,
        totalQuestions.isAcceptableOrUnknown(
          data['total_questions']!,
          _totalQuestionsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_totalQuestionsMeta);
    }
    if (data.containsKey('played_at')) {
      context.handle(
        _playedAtMeta,
        playedAt.isAcceptableOrUnknown(data['played_at']!, _playedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_playedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TriviaResultRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TriviaResultRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      score: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}score'],
      )!,
      correctAnswers: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}correct_answers'],
      )!,
      totalQuestions: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_questions'],
      )!,
      playedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}played_at'],
      )!,
    );
  }

  @override
  $TriviaResultsTable createAlias(String alias) {
    return $TriviaResultsTable(attachedDatabase, alias);
  }
}

class TriviaResultRow extends DataClass implements Insertable<TriviaResultRow> {
  final int id;
  final int score;
  final int correctAnswers;
  final int totalQuestions;
  final DateTime playedAt;
  const TriviaResultRow({
    required this.id,
    required this.score,
    required this.correctAnswers,
    required this.totalQuestions,
    required this.playedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['score'] = Variable<int>(score);
    map['correct_answers'] = Variable<int>(correctAnswers);
    map['total_questions'] = Variable<int>(totalQuestions);
    map['played_at'] = Variable<DateTime>(playedAt);
    return map;
  }

  TriviaResultsCompanion toCompanion(bool nullToAbsent) {
    return TriviaResultsCompanion(
      id: Value(id),
      score: Value(score),
      correctAnswers: Value(correctAnswers),
      totalQuestions: Value(totalQuestions),
      playedAt: Value(playedAt),
    );
  }

  factory TriviaResultRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TriviaResultRow(
      id: serializer.fromJson<int>(json['id']),
      score: serializer.fromJson<int>(json['score']),
      correctAnswers: serializer.fromJson<int>(json['correctAnswers']),
      totalQuestions: serializer.fromJson<int>(json['totalQuestions']),
      playedAt: serializer.fromJson<DateTime>(json['playedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'score': serializer.toJson<int>(score),
      'correctAnswers': serializer.toJson<int>(correctAnswers),
      'totalQuestions': serializer.toJson<int>(totalQuestions),
      'playedAt': serializer.toJson<DateTime>(playedAt),
    };
  }

  TriviaResultRow copyWith({
    int? id,
    int? score,
    int? correctAnswers,
    int? totalQuestions,
    DateTime? playedAt,
  }) => TriviaResultRow(
    id: id ?? this.id,
    score: score ?? this.score,
    correctAnswers: correctAnswers ?? this.correctAnswers,
    totalQuestions: totalQuestions ?? this.totalQuestions,
    playedAt: playedAt ?? this.playedAt,
  );
  TriviaResultRow copyWithCompanion(TriviaResultsCompanion data) {
    return TriviaResultRow(
      id: data.id.present ? data.id.value : this.id,
      score: data.score.present ? data.score.value : this.score,
      correctAnswers: data.correctAnswers.present
          ? data.correctAnswers.value
          : this.correctAnswers,
      totalQuestions: data.totalQuestions.present
          ? data.totalQuestions.value
          : this.totalQuestions,
      playedAt: data.playedAt.present ? data.playedAt.value : this.playedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TriviaResultRow(')
          ..write('id: $id, ')
          ..write('score: $score, ')
          ..write('correctAnswers: $correctAnswers, ')
          ..write('totalQuestions: $totalQuestions, ')
          ..write('playedAt: $playedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, score, correctAnswers, totalQuestions, playedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TriviaResultRow &&
          other.id == this.id &&
          other.score == this.score &&
          other.correctAnswers == this.correctAnswers &&
          other.totalQuestions == this.totalQuestions &&
          other.playedAt == this.playedAt);
}

class TriviaResultsCompanion extends UpdateCompanion<TriviaResultRow> {
  final Value<int> id;
  final Value<int> score;
  final Value<int> correctAnswers;
  final Value<int> totalQuestions;
  final Value<DateTime> playedAt;
  const TriviaResultsCompanion({
    this.id = const Value.absent(),
    this.score = const Value.absent(),
    this.correctAnswers = const Value.absent(),
    this.totalQuestions = const Value.absent(),
    this.playedAt = const Value.absent(),
  });
  TriviaResultsCompanion.insert({
    this.id = const Value.absent(),
    required int score,
    required int correctAnswers,
    required int totalQuestions,
    required DateTime playedAt,
  }) : score = Value(score),
       correctAnswers = Value(correctAnswers),
       totalQuestions = Value(totalQuestions),
       playedAt = Value(playedAt);
  static Insertable<TriviaResultRow> custom({
    Expression<int>? id,
    Expression<int>? score,
    Expression<int>? correctAnswers,
    Expression<int>? totalQuestions,
    Expression<DateTime>? playedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (score != null) 'score': score,
      if (correctAnswers != null) 'correct_answers': correctAnswers,
      if (totalQuestions != null) 'total_questions': totalQuestions,
      if (playedAt != null) 'played_at': playedAt,
    });
  }

  TriviaResultsCompanion copyWith({
    Value<int>? id,
    Value<int>? score,
    Value<int>? correctAnswers,
    Value<int>? totalQuestions,
    Value<DateTime>? playedAt,
  }) {
    return TriviaResultsCompanion(
      id: id ?? this.id,
      score: score ?? this.score,
      correctAnswers: correctAnswers ?? this.correctAnswers,
      totalQuestions: totalQuestions ?? this.totalQuestions,
      playedAt: playedAt ?? this.playedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (score.present) {
      map['score'] = Variable<int>(score.value);
    }
    if (correctAnswers.present) {
      map['correct_answers'] = Variable<int>(correctAnswers.value);
    }
    if (totalQuestions.present) {
      map['total_questions'] = Variable<int>(totalQuestions.value);
    }
    if (playedAt.present) {
      map['played_at'] = Variable<DateTime>(playedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TriviaResultsCompanion(')
          ..write('id: $id, ')
          ..write('score: $score, ')
          ..write('correctAnswers: $correctAnswers, ')
          ..write('totalQuestions: $totalQuestions, ')
          ..write('playedAt: $playedAt')
          ..write(')'))
        .toString();
  }
}

class $TriviaAnswersTable extends TriviaAnswers
    with TableInfo<$TriviaAnswersTable, TriviaAnswerRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TriviaAnswersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _triviaResultIdMeta = const VerificationMeta(
    'triviaResultId',
  );
  @override
  late final GeneratedColumn<int> triviaResultId = GeneratedColumn<int>(
    'trivia_result_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES trivia_results (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _pokemonIdMeta = const VerificationMeta(
    'pokemonId',
  );
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
    'pokemon_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pokemons (id)',
    ),
  );
  static const VerificationMeta _correctMeta = const VerificationMeta(
    'correct',
  );
  @override
  late final GeneratedColumn<bool> correct = GeneratedColumn<bool>(
    'correct',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("correct" IN (0, 1))',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    triviaResultId,
    pokemonId,
    correct,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'trivia_answers';
  @override
  VerificationContext validateIntegrity(
    Insertable<TriviaAnswerRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('trivia_result_id')) {
      context.handle(
        _triviaResultIdMeta,
        triviaResultId.isAcceptableOrUnknown(
          data['trivia_result_id']!,
          _triviaResultIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_triviaResultIdMeta);
    }
    if (data.containsKey('pokemon_id')) {
      context.handle(
        _pokemonIdMeta,
        pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('correct')) {
      context.handle(
        _correctMeta,
        correct.isAcceptableOrUnknown(data['correct']!, _correctMeta),
      );
    } else if (isInserting) {
      context.missing(_correctMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TriviaAnswerRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TriviaAnswerRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      triviaResultId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}trivia_result_id'],
      )!,
      pokemonId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pokemon_id'],
      )!,
      correct: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}correct'],
      )!,
    );
  }

  @override
  $TriviaAnswersTable createAlias(String alias) {
    return $TriviaAnswersTable(attachedDatabase, alias);
  }
}

class TriviaAnswerRow extends DataClass implements Insertable<TriviaAnswerRow> {
  final int id;
  final int triviaResultId;
  final int pokemonId;
  final bool correct;
  const TriviaAnswerRow({
    required this.id,
    required this.triviaResultId,
    required this.pokemonId,
    required this.correct,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['trivia_result_id'] = Variable<int>(triviaResultId);
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['correct'] = Variable<bool>(correct);
    return map;
  }

  TriviaAnswersCompanion toCompanion(bool nullToAbsent) {
    return TriviaAnswersCompanion(
      id: Value(id),
      triviaResultId: Value(triviaResultId),
      pokemonId: Value(pokemonId),
      correct: Value(correct),
    );
  }

  factory TriviaAnswerRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TriviaAnswerRow(
      id: serializer.fromJson<int>(json['id']),
      triviaResultId: serializer.fromJson<int>(json['triviaResultId']),
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      correct: serializer.fromJson<bool>(json['correct']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'triviaResultId': serializer.toJson<int>(triviaResultId),
      'pokemonId': serializer.toJson<int>(pokemonId),
      'correct': serializer.toJson<bool>(correct),
    };
  }

  TriviaAnswerRow copyWith({
    int? id,
    int? triviaResultId,
    int? pokemonId,
    bool? correct,
  }) => TriviaAnswerRow(
    id: id ?? this.id,
    triviaResultId: triviaResultId ?? this.triviaResultId,
    pokemonId: pokemonId ?? this.pokemonId,
    correct: correct ?? this.correct,
  );
  TriviaAnswerRow copyWithCompanion(TriviaAnswersCompanion data) {
    return TriviaAnswerRow(
      id: data.id.present ? data.id.value : this.id,
      triviaResultId: data.triviaResultId.present
          ? data.triviaResultId.value
          : this.triviaResultId,
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      correct: data.correct.present ? data.correct.value : this.correct,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TriviaAnswerRow(')
          ..write('id: $id, ')
          ..write('triviaResultId: $triviaResultId, ')
          ..write('pokemonId: $pokemonId, ')
          ..write('correct: $correct')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, triviaResultId, pokemonId, correct);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TriviaAnswerRow &&
          other.id == this.id &&
          other.triviaResultId == this.triviaResultId &&
          other.pokemonId == this.pokemonId &&
          other.correct == this.correct);
}

class TriviaAnswersCompanion extends UpdateCompanion<TriviaAnswerRow> {
  final Value<int> id;
  final Value<int> triviaResultId;
  final Value<int> pokemonId;
  final Value<bool> correct;
  const TriviaAnswersCompanion({
    this.id = const Value.absent(),
    this.triviaResultId = const Value.absent(),
    this.pokemonId = const Value.absent(),
    this.correct = const Value.absent(),
  });
  TriviaAnswersCompanion.insert({
    this.id = const Value.absent(),
    required int triviaResultId,
    required int pokemonId,
    required bool correct,
  }) : triviaResultId = Value(triviaResultId),
       pokemonId = Value(pokemonId),
       correct = Value(correct);
  static Insertable<TriviaAnswerRow> custom({
    Expression<int>? id,
    Expression<int>? triviaResultId,
    Expression<int>? pokemonId,
    Expression<bool>? correct,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (triviaResultId != null) 'trivia_result_id': triviaResultId,
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (correct != null) 'correct': correct,
    });
  }

  TriviaAnswersCompanion copyWith({
    Value<int>? id,
    Value<int>? triviaResultId,
    Value<int>? pokemonId,
    Value<bool>? correct,
  }) {
    return TriviaAnswersCompanion(
      id: id ?? this.id,
      triviaResultId: triviaResultId ?? this.triviaResultId,
      pokemonId: pokemonId ?? this.pokemonId,
      correct: correct ?? this.correct,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (triviaResultId.present) {
      map['trivia_result_id'] = Variable<int>(triviaResultId.value);
    }
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (correct.present) {
      map['correct'] = Variable<bool>(correct.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TriviaAnswersCompanion(')
          ..write('id: $id, ')
          ..write('triviaResultId: $triviaResultId, ')
          ..write('pokemonId: $pokemonId, ')
          ..write('correct: $correct')
          ..write(')'))
        .toString();
  }
}

class $AchievementsTable extends Achievements
    with TableInfo<$AchievementsTable, AchievementRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AchievementsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unlockedAtMeta = const VerificationMeta(
    'unlockedAt',
  );
  @override
  late final GeneratedColumn<DateTime> unlockedAt = GeneratedColumn<DateTime>(
    'unlocked_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, unlockedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'achievements';
  @override
  VerificationContext validateIntegrity(
    Insertable<AchievementRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('unlocked_at')) {
      context.handle(
        _unlockedAtMeta,
        unlockedAt.isAcceptableOrUnknown(data['unlocked_at']!, _unlockedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_unlockedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AchievementRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AchievementRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      unlockedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}unlocked_at'],
      )!,
    );
  }

  @override
  $AchievementsTable createAlias(String alias) {
    return $AchievementsTable(attachedDatabase, alias);
  }
}

class AchievementRow extends DataClass implements Insertable<AchievementRow> {
  final String id;
  final DateTime unlockedAt;
  const AchievementRow({required this.id, required this.unlockedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['unlocked_at'] = Variable<DateTime>(unlockedAt);
    return map;
  }

  AchievementsCompanion toCompanion(bool nullToAbsent) {
    return AchievementsCompanion(id: Value(id), unlockedAt: Value(unlockedAt));
  }

  factory AchievementRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AchievementRow(
      id: serializer.fromJson<String>(json['id']),
      unlockedAt: serializer.fromJson<DateTime>(json['unlockedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'unlockedAt': serializer.toJson<DateTime>(unlockedAt),
    };
  }

  AchievementRow copyWith({String? id, DateTime? unlockedAt}) => AchievementRow(
    id: id ?? this.id,
    unlockedAt: unlockedAt ?? this.unlockedAt,
  );
  AchievementRow copyWithCompanion(AchievementsCompanion data) {
    return AchievementRow(
      id: data.id.present ? data.id.value : this.id,
      unlockedAt: data.unlockedAt.present
          ? data.unlockedAt.value
          : this.unlockedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AchievementRow(')
          ..write('id: $id, ')
          ..write('unlockedAt: $unlockedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, unlockedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AchievementRow &&
          other.id == this.id &&
          other.unlockedAt == this.unlockedAt);
}

class AchievementsCompanion extends UpdateCompanion<AchievementRow> {
  final Value<String> id;
  final Value<DateTime> unlockedAt;
  final Value<int> rowid;
  const AchievementsCompanion({
    this.id = const Value.absent(),
    this.unlockedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AchievementsCompanion.insert({
    required String id,
    required DateTime unlockedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       unlockedAt = Value(unlockedAt);
  static Insertable<AchievementRow> custom({
    Expression<String>? id,
    Expression<DateTime>? unlockedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (unlockedAt != null) 'unlocked_at': unlockedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AchievementsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? unlockedAt,
    Value<int>? rowid,
  }) {
    return AchievementsCompanion(
      id: id ?? this.id,
      unlockedAt: unlockedAt ?? this.unlockedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (unlockedAt.present) {
      map['unlocked_at'] = Variable<DateTime>(unlockedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AchievementsCompanion(')
          ..write('id: $id, ')
          ..write('unlockedAt: $unlockedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SyncMetadataTable extends SyncMetadata
    with TableInfo<$SyncMetadataTable, SyncMetadataRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncMetadataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _resourceKeyMeta = const VerificationMeta(
    'resourceKey',
  );
  @override
  late final GeneratedColumn<String> resourceKey = GeneratedColumn<String>(
    'resource_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastSuccessAtMeta = const VerificationMeta(
    'lastSuccessAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastSuccessAt =
      GeneratedColumn<DateTime>(
        'last_success_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cursorOrOffsetMeta = const VerificationMeta(
    'cursorOrOffset',
  );
  @override
  late final GeneratedColumn<int> cursorOrOffset = GeneratedColumn<int>(
    'cursor_or_offset',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    resourceKey,
    lastSuccessAt,
    status,
    cursorOrOffset,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_metadata';
  @override
  VerificationContext validateIntegrity(
    Insertable<SyncMetadataRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('resource_key')) {
      context.handle(
        _resourceKeyMeta,
        resourceKey.isAcceptableOrUnknown(
          data['resource_key']!,
          _resourceKeyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_resourceKeyMeta);
    }
    if (data.containsKey('last_success_at')) {
      context.handle(
        _lastSuccessAtMeta,
        lastSuccessAt.isAcceptableOrUnknown(
          data['last_success_at']!,
          _lastSuccessAtMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('cursor_or_offset')) {
      context.handle(
        _cursorOrOffsetMeta,
        cursorOrOffset.isAcceptableOrUnknown(
          data['cursor_or_offset']!,
          _cursorOrOffsetMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {resourceKey};
  @override
  SyncMetadataRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncMetadataRow(
      resourceKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}resource_key'],
      )!,
      lastSuccessAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_success_at'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      cursorOrOffset: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cursor_or_offset'],
      ),
    );
  }

  @override
  $SyncMetadataTable createAlias(String alias) {
    return $SyncMetadataTable(attachedDatabase, alias);
  }
}

class SyncMetadataRow extends DataClass implements Insertable<SyncMetadataRow> {
  final String resourceKey;
  final DateTime? lastSuccessAt;
  final String status;
  final int? cursorOrOffset;
  const SyncMetadataRow({
    required this.resourceKey,
    this.lastSuccessAt,
    required this.status,
    this.cursorOrOffset,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['resource_key'] = Variable<String>(resourceKey);
    if (!nullToAbsent || lastSuccessAt != null) {
      map['last_success_at'] = Variable<DateTime>(lastSuccessAt);
    }
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || cursorOrOffset != null) {
      map['cursor_or_offset'] = Variable<int>(cursorOrOffset);
    }
    return map;
  }

  SyncMetadataCompanion toCompanion(bool nullToAbsent) {
    return SyncMetadataCompanion(
      resourceKey: Value(resourceKey),
      lastSuccessAt: lastSuccessAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSuccessAt),
      status: Value(status),
      cursorOrOffset: cursorOrOffset == null && nullToAbsent
          ? const Value.absent()
          : Value(cursorOrOffset),
    );
  }

  factory SyncMetadataRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncMetadataRow(
      resourceKey: serializer.fromJson<String>(json['resourceKey']),
      lastSuccessAt: serializer.fromJson<DateTime?>(json['lastSuccessAt']),
      status: serializer.fromJson<String>(json['status']),
      cursorOrOffset: serializer.fromJson<int?>(json['cursorOrOffset']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'resourceKey': serializer.toJson<String>(resourceKey),
      'lastSuccessAt': serializer.toJson<DateTime?>(lastSuccessAt),
      'status': serializer.toJson<String>(status),
      'cursorOrOffset': serializer.toJson<int?>(cursorOrOffset),
    };
  }

  SyncMetadataRow copyWith({
    String? resourceKey,
    Value<DateTime?> lastSuccessAt = const Value.absent(),
    String? status,
    Value<int?> cursorOrOffset = const Value.absent(),
  }) => SyncMetadataRow(
    resourceKey: resourceKey ?? this.resourceKey,
    lastSuccessAt: lastSuccessAt.present
        ? lastSuccessAt.value
        : this.lastSuccessAt,
    status: status ?? this.status,
    cursorOrOffset: cursorOrOffset.present
        ? cursorOrOffset.value
        : this.cursorOrOffset,
  );
  SyncMetadataRow copyWithCompanion(SyncMetadataCompanion data) {
    return SyncMetadataRow(
      resourceKey: data.resourceKey.present
          ? data.resourceKey.value
          : this.resourceKey,
      lastSuccessAt: data.lastSuccessAt.present
          ? data.lastSuccessAt.value
          : this.lastSuccessAt,
      status: data.status.present ? data.status.value : this.status,
      cursorOrOffset: data.cursorOrOffset.present
          ? data.cursorOrOffset.value
          : this.cursorOrOffset,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncMetadataRow(')
          ..write('resourceKey: $resourceKey, ')
          ..write('lastSuccessAt: $lastSuccessAt, ')
          ..write('status: $status, ')
          ..write('cursorOrOffset: $cursorOrOffset')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(resourceKey, lastSuccessAt, status, cursorOrOffset);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncMetadataRow &&
          other.resourceKey == this.resourceKey &&
          other.lastSuccessAt == this.lastSuccessAt &&
          other.status == this.status &&
          other.cursorOrOffset == this.cursorOrOffset);
}

class SyncMetadataCompanion extends UpdateCompanion<SyncMetadataRow> {
  final Value<String> resourceKey;
  final Value<DateTime?> lastSuccessAt;
  final Value<String> status;
  final Value<int?> cursorOrOffset;
  final Value<int> rowid;
  const SyncMetadataCompanion({
    this.resourceKey = const Value.absent(),
    this.lastSuccessAt = const Value.absent(),
    this.status = const Value.absent(),
    this.cursorOrOffset = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SyncMetadataCompanion.insert({
    required String resourceKey,
    this.lastSuccessAt = const Value.absent(),
    required String status,
    this.cursorOrOffset = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : resourceKey = Value(resourceKey),
       status = Value(status);
  static Insertable<SyncMetadataRow> custom({
    Expression<String>? resourceKey,
    Expression<DateTime>? lastSuccessAt,
    Expression<String>? status,
    Expression<int>? cursorOrOffset,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (resourceKey != null) 'resource_key': resourceKey,
      if (lastSuccessAt != null) 'last_success_at': lastSuccessAt,
      if (status != null) 'status': status,
      if (cursorOrOffset != null) 'cursor_or_offset': cursorOrOffset,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SyncMetadataCompanion copyWith({
    Value<String>? resourceKey,
    Value<DateTime?>? lastSuccessAt,
    Value<String>? status,
    Value<int?>? cursorOrOffset,
    Value<int>? rowid,
  }) {
    return SyncMetadataCompanion(
      resourceKey: resourceKey ?? this.resourceKey,
      lastSuccessAt: lastSuccessAt ?? this.lastSuccessAt,
      status: status ?? this.status,
      cursorOrOffset: cursorOrOffset ?? this.cursorOrOffset,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (resourceKey.present) {
      map['resource_key'] = Variable<String>(resourceKey.value);
    }
    if (lastSuccessAt.present) {
      map['last_success_at'] = Variable<DateTime>(lastSuccessAt.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (cursorOrOffset.present) {
      map['cursor_or_offset'] = Variable<int>(cursorOrOffset.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncMetadataCompanion(')
          ..write('resourceKey: $resourceKey, ')
          ..write('lastSuccessAt: $lastSuccessAt, ')
          ..write('status: $status, ')
          ..write('cursorOrOffset: $cursorOrOffset, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PokemonSpeciesTable pokemonSpecies = $PokemonSpeciesTable(this);
  late final $PokemonsTable pokemons = $PokemonsTable(this);
  late final $TypesTable types = $TypesTable(this);
  late final $PokemonTypesTable pokemonTypes = $PokemonTypesTable(this);
  late final $AbilitiesTable abilities = $AbilitiesTable(this);
  late final $PokemonAbilitiesTable pokemonAbilities = $PokemonAbilitiesTable(
    this,
  );
  late final $EvolutionsTable evolutions = $EvolutionsTable(this);
  late final $EggGroupsTable eggGroups = $EggGroupsTable(this);
  late final $SpeciesEggGroupsTable speciesEggGroups = $SpeciesEggGroupsTable(
    this,
  );
  late final $VersionGroupsTable versionGroups = $VersionGroupsTable(this);
  late final $MovesTable moves = $MovesTable(this);
  late final $PokemonMovesTable pokemonMoves = $PokemonMovesTable(this);
  late final $PokemonGamesTable pokemonGames = $PokemonGamesTable(this);
  late final $TypeEfficaciesTable typeEfficacies = $TypeEfficaciesTable(this);
  late final $FavoritesTable favorites = $FavoritesTable(this);
  late final $AppSettingsTable appSettings = $AppSettingsTable(this);
  late final $TriviaResultsTable triviaResults = $TriviaResultsTable(this);
  late final $TriviaAnswersTable triviaAnswers = $TriviaAnswersTable(this);
  late final $AchievementsTable achievements = $AchievementsTable(this);
  late final $SyncMetadataTable syncMetadata = $SyncMetadataTable(this);
  late final Index idxSpeciesDisplayName = Index(
    'idx_species_display_name',
    'CREATE INDEX idx_species_display_name ON pokemon_species (display_name)',
  );
  late final Index idxSpeciesGeneration = Index(
    'idx_species_generation',
    'CREATE INDEX idx_species_generation ON pokemon_species (generation_id)',
  );
  late final Index idxSpeciesEvolutionChain = Index(
    'idx_species_evolution_chain',
    'CREATE INDEX idx_species_evolution_chain ON pokemon_species (evolution_chain_id)',
  );
  late final Index idxPokemonSpecies = Index(
    'idx_pokemon_species',
    'CREATE INDEX idx_pokemon_species ON pokemons (species_id)',
  );
  late final Index idxPokemonBaseStatTotal = Index(
    'idx_pokemon_base_stat_total',
    'CREATE INDEX idx_pokemon_base_stat_total ON pokemons (base_stat_total)',
  );
  late final Index idxPokemonTypesType = Index(
    'idx_pokemon_types_type',
    'CREATE INDEX idx_pokemon_types_type ON pokemon_types (type_id)',
  );
  late final Index idxEvolutionsFrom = Index(
    'idx_evolutions_from',
    'CREATE INDEX idx_evolutions_from ON evolutions (from_species_id)',
  );
  late final Index idxPokemonMovesVersion = Index(
    'idx_pokemon_moves_version',
    'CREATE INDEX idx_pokemon_moves_version ON pokemon_moves (pokemon_id, version_group_id)',
  );
  late final Index idxTriviaResultsScore = Index(
    'idx_trivia_results_score',
    'CREATE INDEX idx_trivia_results_score ON trivia_results (score)',
  );
  late final Index idxTriviaAnswersResult = Index(
    'idx_trivia_answers_result',
    'CREATE INDEX idx_trivia_answers_result ON trivia_answers (trivia_result_id)',
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    pokemonSpecies,
    pokemons,
    types,
    pokemonTypes,
    abilities,
    pokemonAbilities,
    evolutions,
    eggGroups,
    speciesEggGroups,
    versionGroups,
    moves,
    pokemonMoves,
    pokemonGames,
    typeEfficacies,
    favorites,
    appSettings,
    triviaResults,
    triviaAnswers,
    achievements,
    syncMetadata,
    idxSpeciesDisplayName,
    idxSpeciesGeneration,
    idxSpeciesEvolutionChain,
    idxPokemonSpecies,
    idxPokemonBaseStatTotal,
    idxPokemonTypesType,
    idxEvolutionsFrom,
    idxPokemonMovesVersion,
    idxTriviaResultsScore,
    idxTriviaAnswersResult,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'pokemons',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('pokemon_types', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'pokemons',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('pokemon_abilities', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'pokemon_species',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('evolutions', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'pokemon_species',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('evolutions', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'pokemon_species',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('species_egg_groups', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'pokemons',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('pokemon_moves', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'pokemons',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('pokemon_games', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'trivia_results',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('trivia_answers', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$PokemonSpeciesTableCreateCompanionBuilder =
    PokemonSpeciesCompanion Function({
      Value<int> id,
      required String name,
      required String displayName,
      required int nationalDexNumber,
      Value<int?> generationId,
      Value<int?> evolutionChainId,
      required DateTime updatedAt,
    });
typedef $$PokemonSpeciesTableUpdateCompanionBuilder =
    PokemonSpeciesCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> displayName,
      Value<int> nationalDexNumber,
      Value<int?> generationId,
      Value<int?> evolutionChainId,
      Value<DateTime> updatedAt,
    });

final class $$PokemonSpeciesTableReferences
    extends
        BaseReferences<_$AppDatabase, $PokemonSpeciesTable, PokemonSpeciesRow> {
  $$PokemonSpeciesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$PokemonsTable, List<PokemonRow>>
  _pokemonsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemons,
    aliasName: 'pokemon_species__id__pokemons__species_id',
  );

  $$PokemonsTableProcessedTableManager get pokemonsRefs {
    final manager = $$PokemonsTableTableManager(
      $_db,
      $_db.pokemons,
    ).filter((f) => f.speciesId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_pokemonsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$EvolutionsTable, List<EvolutionRow>>
  _outgoingEvolutionsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.evolutions,
    aliasName: 'pokemon_species__id__evolutions__from_species_id',
  );

  $$EvolutionsTableProcessedTableManager get outgoingEvolutions {
    final manager = $$EvolutionsTableTableManager(
      $_db,
      $_db.evolutions,
    ).filter((f) => f.fromSpeciesId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_outgoingEvolutionsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$EvolutionsTable, List<EvolutionRow>>
  _incomingEvolutionsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.evolutions,
    aliasName: 'pokemon_species__id__evolutions__to_species_id',
  );

  $$EvolutionsTableProcessedTableManager get incomingEvolutions {
    final manager = $$EvolutionsTableTableManager(
      $_db,
      $_db.evolutions,
    ).filter((f) => f.toSpeciesId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_incomingEvolutionsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$SpeciesEggGroupsTable, List<SpeciesEggGroupRow>>
  _speciesEggGroupsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.speciesEggGroups,
    aliasName: 'pokemon_species__id__species_egg_groups__species_id',
  );

  $$SpeciesEggGroupsTableProcessedTableManager get speciesEggGroupsRefs {
    final manager = $$SpeciesEggGroupsTableTableManager(
      $_db,
      $_db.speciesEggGroups,
    ).filter((f) => f.speciesId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _speciesEggGroupsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PokemonSpeciesTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonSpeciesTable> {
  $$PokemonSpeciesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get nationalDexNumber => $composableBuilder(
    column: $table.nationalDexNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get generationId => $composableBuilder(
    column: $table.generationId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get evolutionChainId => $composableBuilder(
    column: $table.evolutionChainId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> pokemonsRefs(
    Expression<bool> Function($$PokemonsTableFilterComposer f) f,
  ) {
    final $$PokemonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.speciesId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableFilterComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> outgoingEvolutions(
    Expression<bool> Function($$EvolutionsTableFilterComposer f) f,
  ) {
    final $$EvolutionsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.evolutions,
      getReferencedColumn: (t) => t.fromSpeciesId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvolutionsTableFilterComposer(
            $db: $db,
            $table: $db.evolutions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> incomingEvolutions(
    Expression<bool> Function($$EvolutionsTableFilterComposer f) f,
  ) {
    final $$EvolutionsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.evolutions,
      getReferencedColumn: (t) => t.toSpeciesId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvolutionsTableFilterComposer(
            $db: $db,
            $table: $db.evolutions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> speciesEggGroupsRefs(
    Expression<bool> Function($$SpeciesEggGroupsTableFilterComposer f) f,
  ) {
    final $$SpeciesEggGroupsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.speciesEggGroups,
      getReferencedColumn: (t) => t.speciesId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SpeciesEggGroupsTableFilterComposer(
            $db: $db,
            $table: $db.speciesEggGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PokemonSpeciesTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonSpeciesTable> {
  $$PokemonSpeciesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get nationalDexNumber => $composableBuilder(
    column: $table.nationalDexNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get generationId => $composableBuilder(
    column: $table.generationId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get evolutionChainId => $composableBuilder(
    column: $table.evolutionChainId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PokemonSpeciesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonSpeciesTable> {
  $$PokemonSpeciesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => column,
  );

  GeneratedColumn<int> get nationalDexNumber => $composableBuilder(
    column: $table.nationalDexNumber,
    builder: (column) => column,
  );

  GeneratedColumn<int> get generationId => $composableBuilder(
    column: $table.generationId,
    builder: (column) => column,
  );

  GeneratedColumn<int> get evolutionChainId => $composableBuilder(
    column: $table.evolutionChainId,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  Expression<T> pokemonsRefs<T extends Object>(
    Expression<T> Function($$PokemonsTableAnnotationComposer a) f,
  ) {
    final $$PokemonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.speciesId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> outgoingEvolutions<T extends Object>(
    Expression<T> Function($$EvolutionsTableAnnotationComposer a) f,
  ) {
    final $$EvolutionsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.evolutions,
      getReferencedColumn: (t) => t.fromSpeciesId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvolutionsTableAnnotationComposer(
            $db: $db,
            $table: $db.evolutions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> incomingEvolutions<T extends Object>(
    Expression<T> Function($$EvolutionsTableAnnotationComposer a) f,
  ) {
    final $$EvolutionsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.evolutions,
      getReferencedColumn: (t) => t.toSpeciesId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EvolutionsTableAnnotationComposer(
            $db: $db,
            $table: $db.evolutions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> speciesEggGroupsRefs<T extends Object>(
    Expression<T> Function($$SpeciesEggGroupsTableAnnotationComposer a) f,
  ) {
    final $$SpeciesEggGroupsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.speciesEggGroups,
      getReferencedColumn: (t) => t.speciesId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SpeciesEggGroupsTableAnnotationComposer(
            $db: $db,
            $table: $db.speciesEggGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PokemonSpeciesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonSpeciesTable,
          PokemonSpeciesRow,
          $$PokemonSpeciesTableFilterComposer,
          $$PokemonSpeciesTableOrderingComposer,
          $$PokemonSpeciesTableAnnotationComposer,
          $$PokemonSpeciesTableCreateCompanionBuilder,
          $$PokemonSpeciesTableUpdateCompanionBuilder,
          (PokemonSpeciesRow, $$PokemonSpeciesTableReferences),
          PokemonSpeciesRow,
          PrefetchHooks Function({
            bool pokemonsRefs,
            bool outgoingEvolutions,
            bool incomingEvolutions,
            bool speciesEggGroupsRefs,
          })
        > {
  $$PokemonSpeciesTableTableManager(
    _$AppDatabase db,
    $PokemonSpeciesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonSpeciesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonSpeciesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonSpeciesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> displayName = const Value.absent(),
                Value<int> nationalDexNumber = const Value.absent(),
                Value<int?> generationId = const Value.absent(),
                Value<int?> evolutionChainId = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => PokemonSpeciesCompanion(
                id: id,
                name: name,
                displayName: displayName,
                nationalDexNumber: nationalDexNumber,
                generationId: generationId,
                evolutionChainId: evolutionChainId,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String displayName,
                required int nationalDexNumber,
                Value<int?> generationId = const Value.absent(),
                Value<int?> evolutionChainId = const Value.absent(),
                required DateTime updatedAt,
              }) => PokemonSpeciesCompanion.insert(
                id: id,
                name: name,
                displayName: displayName,
                nationalDexNumber: nationalDexNumber,
                generationId: generationId,
                evolutionChainId: evolutionChainId,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonSpeciesTable, PokemonSpeciesRow>(table),
                  $$PokemonSpeciesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                pokemonsRefs = false,
                outgoingEvolutions = false,
                incomingEvolutions = false,
                speciesEggGroupsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (pokemonsRefs) db.pokemons,
                    if (outgoingEvolutions) db.evolutions,
                    if (incomingEvolutions) db.evolutions,
                    if (speciesEggGroupsRefs) db.speciesEggGroups,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (pokemonsRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonSpeciesRow,
                          $PokemonSpeciesTable,
                          PokemonRow,
                          $PokemonsTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonSpeciesTableReferences
                              ._pokemonsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonSpeciesTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'species_id',
                          typedResults: items,
                        ),
                      if (outgoingEvolutions)
                        await $_getPrefetchedDataByColumns<
                          PokemonSpeciesRow,
                          $PokemonSpeciesTable,
                          EvolutionRow,
                          $EvolutionsTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonSpeciesTableReferences
                              ._outgoingEvolutionsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonSpeciesTableReferences(
                                db,
                                table,
                                p0,
                              ).outgoingEvolutions,
                          currentColumn: 'id',
                          referencedColumn: 'from_species_id',
                          typedResults: items,
                        ),
                      if (incomingEvolutions)
                        await $_getPrefetchedDataByColumns<
                          PokemonSpeciesRow,
                          $PokemonSpeciesTable,
                          EvolutionRow,
                          $EvolutionsTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonSpeciesTableReferences
                              ._incomingEvolutionsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonSpeciesTableReferences(
                                db,
                                table,
                                p0,
                              ).incomingEvolutions,
                          currentColumn: 'id',
                          referencedColumn: 'to_species_id',
                          typedResults: items,
                        ),
                      if (speciesEggGroupsRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonSpeciesRow,
                          $PokemonSpeciesTable,
                          SpeciesEggGroupRow,
                          $SpeciesEggGroupsTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonSpeciesTableReferences
                              ._speciesEggGroupsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonSpeciesTableReferences(
                                db,
                                table,
                                p0,
                              ).speciesEggGroupsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'species_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$PokemonSpeciesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonSpeciesTable,
      PokemonSpeciesRow,
      $$PokemonSpeciesTableFilterComposer,
      $$PokemonSpeciesTableOrderingComposer,
      $$PokemonSpeciesTableAnnotationComposer,
      $$PokemonSpeciesTableCreateCompanionBuilder,
      $$PokemonSpeciesTableUpdateCompanionBuilder,
      (PokemonSpeciesRow, $$PokemonSpeciesTableReferences),
      PokemonSpeciesRow,
      PrefetchHooks Function({
        bool pokemonsRefs,
        bool outgoingEvolutions,
        bool incomingEvolutions,
        bool speciesEggGroupsRefs,
      })
    >;
typedef $$PokemonsTableCreateCompanionBuilder = PokemonsCompanion Function({
  Value<int> id,
  required int speciesId,
  required String name,
  required bool isDefault,
  required double height,
  required double weight,
  required String artworkUrl,
  Value<String?> shinyArtworkUrl,
  Value<String?> spriteUrl,
  Value<int?> hp,
  Value<int?> attack,
  Value<int?> defense,
  Value<int?> specialAttack,
  Value<int?> specialDefense,
  Value<int?> speed,
  Value<int?> baseStatTotal,
  required DateTime updatedAt,
});
typedef $$PokemonsTableUpdateCompanionBuilder = PokemonsCompanion Function({
  Value<int> id,
  Value<int> speciesId,
  Value<String> name,
  Value<bool> isDefault,
  Value<double> height,
  Value<double> weight,
  Value<String> artworkUrl,
  Value<String?> shinyArtworkUrl,
  Value<String?> spriteUrl,
  Value<int?> hp,
  Value<int?> attack,
  Value<int?> defense,
  Value<int?> specialAttack,
  Value<int?> specialDefense,
  Value<int?> speed,
  Value<int?> baseStatTotal,
  Value<DateTime> updatedAt,
});

final class $$PokemonsTableReferences
    extends BaseReferences<_$AppDatabase, $PokemonsTable, PokemonRow> {
  $$PokemonsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PokemonSpeciesTable _speciesIdTable(_$AppDatabase db) => db
      .pokemonSpecies
      .createAlias('pokemons__species_id__pokemon_species__id');

  $$PokemonSpeciesTableProcessedTableManager get speciesId {
    final $_column = $_itemColumn<int>('species_id')!;

    final manager = $$PokemonSpeciesTableTableManager(
      $_db,
      $_db.pokemonSpecies,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_speciesIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$PokemonTypesTable, List<PokemonTypeRow>>
  _pokemonTypesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonTypes,
    aliasName: 'pokemons__id__pokemon_types__pokemon_id',
  );

  $$PokemonTypesTableProcessedTableManager get pokemonTypesRefs {
    final manager = $$PokemonTypesTableTableManager(
      $_db,
      $_db.pokemonTypes,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_pokemonTypesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$PokemonAbilitiesTable, List<PokemonAbilityRow>>
  _pokemonAbilitiesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonAbilities,
    aliasName: 'pokemons__id__pokemon_abilities__pokemon_id',
  );

  $$PokemonAbilitiesTableProcessedTableManager get pokemonAbilitiesRefs {
    final manager = $$PokemonAbilitiesTableTableManager(
      $_db,
      $_db.pokemonAbilities,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _pokemonAbilitiesRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$PokemonMovesTable, List<PokemonMoveRow>>
  _pokemonMovesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonMoves,
    aliasName: 'pokemons__id__pokemon_moves__pokemon_id',
  );

  $$PokemonMovesTableProcessedTableManager get pokemonMovesRefs {
    final manager = $$PokemonMovesTableTableManager(
      $_db,
      $_db.pokemonMoves,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_pokemonMovesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$PokemonGamesTable, List<PokemonGameRow>>
  _pokemonGamesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonGames,
    aliasName: 'pokemons__id__pokemon_games__pokemon_id',
  );

  $$PokemonGamesTableProcessedTableManager get pokemonGamesRefs {
    final manager = $$PokemonGamesTableTableManager(
      $_db,
      $_db.pokemonGames,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_pokemonGamesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$FavoritesTable, List<FavoriteRow>>
  _favoritesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.favorites,
    aliasName: 'pokemons__id__favorites__pokemon_id',
  );

  $$FavoritesTableProcessedTableManager get favoritesRefs {
    final manager = $$FavoritesTableTableManager(
      $_db,
      $_db.favorites,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_favoritesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$TriviaAnswersTable, List<TriviaAnswerRow>>
  _triviaAnswersRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.triviaAnswers,
    aliasName: 'pokemons__id__trivia_answers__pokemon_id',
  );

  $$TriviaAnswersTableProcessedTableManager get triviaAnswersRefs {
    final manager = $$TriviaAnswersTableTableManager(
      $_db,
      $_db.triviaAnswers,
    ).filter((f) => f.pokemonId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_triviaAnswersRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PokemonsTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonsTable> {
  $$PokemonsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDefault => $composableBuilder(
    column: $table.isDefault,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get artworkUrl => $composableBuilder(
    column: $table.artworkUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shinyArtworkUrl => $composableBuilder(
    column: $table.shinyArtworkUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get spriteUrl => $composableBuilder(
    column: $table.spriteUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get hp => $composableBuilder(
    column: $table.hp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get attack => $composableBuilder(
    column: $table.attack,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get defense => $composableBuilder(
    column: $table.defense,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get specialAttack => $composableBuilder(
    column: $table.specialAttack,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get specialDefense => $composableBuilder(
    column: $table.specialDefense,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get speed => $composableBuilder(
    column: $table.speed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get baseStatTotal => $composableBuilder(
    column: $table.baseStatTotal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonSpeciesTableFilterComposer get speciesId {
    final $$PokemonSpeciesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.speciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> pokemonTypesRefs(
    Expression<bool> Function($$PokemonTypesTableFilterComposer f) f,
  ) {
    final $$PokemonTypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonTypes,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTypesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> pokemonAbilitiesRefs(
    Expression<bool> Function($$PokemonAbilitiesTableFilterComposer f) f,
  ) {
    final $$PokemonAbilitiesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonAbilities,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonAbilitiesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonAbilities,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> pokemonMovesRefs(
    Expression<bool> Function($$PokemonMovesTableFilterComposer f) f,
  ) {
    final $$PokemonMovesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonMoves,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonMovesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonMoves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> pokemonGamesRefs(
    Expression<bool> Function($$PokemonGamesTableFilterComposer f) f,
  ) {
    final $$PokemonGamesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonGames,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonGamesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonGames,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> favoritesRefs(
    Expression<bool> Function($$FavoritesTableFilterComposer f) f,
  ) {
    final $$FavoritesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.favorites,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FavoritesTableFilterComposer(
            $db: $db,
            $table: $db.favorites,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> triviaAnswersRefs(
    Expression<bool> Function($$TriviaAnswersTableFilterComposer f) f,
  ) {
    final $$TriviaAnswersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.triviaAnswers,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TriviaAnswersTableFilterComposer(
            $db: $db,
            $table: $db.triviaAnswers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PokemonsTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonsTable> {
  $$PokemonsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDefault => $composableBuilder(
    column: $table.isDefault,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get artworkUrl => $composableBuilder(
    column: $table.artworkUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shinyArtworkUrl => $composableBuilder(
    column: $table.shinyArtworkUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get spriteUrl => $composableBuilder(
    column: $table.spriteUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get hp => $composableBuilder(
    column: $table.hp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get attack => $composableBuilder(
    column: $table.attack,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get defense => $composableBuilder(
    column: $table.defense,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get specialAttack => $composableBuilder(
    column: $table.specialAttack,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get specialDefense => $composableBuilder(
    column: $table.specialDefense,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get speed => $composableBuilder(
    column: $table.speed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get baseStatTotal => $composableBuilder(
    column: $table.baseStatTotal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonSpeciesTableOrderingComposer get speciesId {
    final $$PokemonSpeciesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.speciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableOrderingComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonsTable> {
  $$PokemonsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<bool> get isDefault =>
      $composableBuilder(column: $table.isDefault, builder: (column) => column);

  GeneratedColumn<double> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<double> get weight =>
      $composableBuilder(column: $table.weight, builder: (column) => column);

  GeneratedColumn<String> get artworkUrl => $composableBuilder(
    column: $table.artworkUrl,
    builder: (column) => column,
  );

  GeneratedColumn<String> get shinyArtworkUrl => $composableBuilder(
    column: $table.shinyArtworkUrl,
    builder: (column) => column,
  );

  GeneratedColumn<String> get spriteUrl =>
      $composableBuilder(column: $table.spriteUrl, builder: (column) => column);

  GeneratedColumn<int> get hp =>
      $composableBuilder(column: $table.hp, builder: (column) => column);

  GeneratedColumn<int> get attack =>
      $composableBuilder(column: $table.attack, builder: (column) => column);

  GeneratedColumn<int> get defense =>
      $composableBuilder(column: $table.defense, builder: (column) => column);

  GeneratedColumn<int> get specialAttack => $composableBuilder(
    column: $table.specialAttack,
    builder: (column) => column,
  );

  GeneratedColumn<int> get specialDefense => $composableBuilder(
    column: $table.specialDefense,
    builder: (column) => column,
  );

  GeneratedColumn<int> get speed =>
      $composableBuilder(column: $table.speed, builder: (column) => column);

  GeneratedColumn<int> get baseStatTotal => $composableBuilder(
    column: $table.baseStatTotal,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$PokemonSpeciesTableAnnotationComposer get speciesId {
    final $$PokemonSpeciesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.speciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> pokemonTypesRefs<T extends Object>(
    Expression<T> Function($$PokemonTypesTableAnnotationComposer a) f,
  ) {
    final $$PokemonTypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonTypes,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTypesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> pokemonAbilitiesRefs<T extends Object>(
    Expression<T> Function($$PokemonAbilitiesTableAnnotationComposer a) f,
  ) {
    final $$PokemonAbilitiesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonAbilities,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonAbilitiesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonAbilities,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> pokemonMovesRefs<T extends Object>(
    Expression<T> Function($$PokemonMovesTableAnnotationComposer a) f,
  ) {
    final $$PokemonMovesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonMoves,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonMovesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonMoves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> pokemonGamesRefs<T extends Object>(
    Expression<T> Function($$PokemonGamesTableAnnotationComposer a) f,
  ) {
    final $$PokemonGamesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonGames,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonGamesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonGames,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> favoritesRefs<T extends Object>(
    Expression<T> Function($$FavoritesTableAnnotationComposer a) f,
  ) {
    final $$FavoritesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.favorites,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FavoritesTableAnnotationComposer(
            $db: $db,
            $table: $db.favorites,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> triviaAnswersRefs<T extends Object>(
    Expression<T> Function($$TriviaAnswersTableAnnotationComposer a) f,
  ) {
    final $$TriviaAnswersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.triviaAnswers,
      getReferencedColumn: (t) => t.pokemonId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TriviaAnswersTableAnnotationComposer(
            $db: $db,
            $table: $db.triviaAnswers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PokemonsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonsTable,
          PokemonRow,
          $$PokemonsTableFilterComposer,
          $$PokemonsTableOrderingComposer,
          $$PokemonsTableAnnotationComposer,
          $$PokemonsTableCreateCompanionBuilder,
          $$PokemonsTableUpdateCompanionBuilder,
          (PokemonRow, $$PokemonsTableReferences),
          PokemonRow,
          PrefetchHooks Function({
            bool speciesId,
            bool pokemonTypesRefs,
            bool pokemonAbilitiesRefs,
            bool pokemonMovesRefs,
            bool pokemonGamesRefs,
            bool favoritesRefs,
            bool triviaAnswersRefs,
          })
        > {
  $$PokemonsTableTableManager(_$AppDatabase db, $PokemonsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> speciesId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<bool> isDefault = const Value.absent(),
                Value<double> height = const Value.absent(),
                Value<double> weight = const Value.absent(),
                Value<String> artworkUrl = const Value.absent(),
                Value<String?> shinyArtworkUrl = const Value.absent(),
                Value<String?> spriteUrl = const Value.absent(),
                Value<int?> hp = const Value.absent(),
                Value<int?> attack = const Value.absent(),
                Value<int?> defense = const Value.absent(),
                Value<int?> specialAttack = const Value.absent(),
                Value<int?> specialDefense = const Value.absent(),
                Value<int?> speed = const Value.absent(),
                Value<int?> baseStatTotal = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => PokemonsCompanion(
                id: id,
                speciesId: speciesId,
                name: name,
                isDefault: isDefault,
                height: height,
                weight: weight,
                artworkUrl: artworkUrl,
                shinyArtworkUrl: shinyArtworkUrl,
                spriteUrl: spriteUrl,
                hp: hp,
                attack: attack,
                defense: defense,
                specialAttack: specialAttack,
                specialDefense: specialDefense,
                speed: speed,
                baseStatTotal: baseStatTotal,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int speciesId,
                required String name,
                required bool isDefault,
                required double height,
                required double weight,
                required String artworkUrl,
                Value<String?> shinyArtworkUrl = const Value.absent(),
                Value<String?> spriteUrl = const Value.absent(),
                Value<int?> hp = const Value.absent(),
                Value<int?> attack = const Value.absent(),
                Value<int?> defense = const Value.absent(),
                Value<int?> specialAttack = const Value.absent(),
                Value<int?> specialDefense = const Value.absent(),
                Value<int?> speed = const Value.absent(),
                Value<int?> baseStatTotal = const Value.absent(),
                required DateTime updatedAt,
              }) => PokemonsCompanion.insert(
                id: id,
                speciesId: speciesId,
                name: name,
                isDefault: isDefault,
                height: height,
                weight: weight,
                artworkUrl: artworkUrl,
                shinyArtworkUrl: shinyArtworkUrl,
                spriteUrl: spriteUrl,
                hp: hp,
                attack: attack,
                defense: defense,
                specialAttack: specialAttack,
                specialDefense: specialDefense,
                speed: speed,
                baseStatTotal: baseStatTotal,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonsTable, PokemonRow>(table),
                  $$PokemonsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                speciesId = false,
                pokemonTypesRefs = false,
                pokemonAbilitiesRefs = false,
                pokemonMovesRefs = false,
                pokemonGamesRefs = false,
                favoritesRefs = false,
                triviaAnswersRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (pokemonTypesRefs) db.pokemonTypes,
                    if (pokemonAbilitiesRefs) db.pokemonAbilities,
                    if (pokemonMovesRefs) db.pokemonMoves,
                    if (pokemonGamesRefs) db.pokemonGames,
                    if (favoritesRefs) db.favorites,
                    if (triviaAnswersRefs) db.triviaAnswers,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (speciesId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.speciesId,
                            referencedTable: $$PokemonsTableReferences
                                ._speciesIdTable(db),
                            referencedColumn: $$PokemonsTableReferences
                                ._speciesIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (pokemonTypesRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonsTable,
                          PokemonTypeRow,
                          $PokemonTypesTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonsTableReferences
                              ._pokemonTypesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonsTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonTypesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                      if (pokemonAbilitiesRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonsTable,
                          PokemonAbilityRow,
                          $PokemonAbilitiesTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonsTableReferences
                              ._pokemonAbilitiesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonsTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonAbilitiesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                      if (pokemonMovesRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonsTable,
                          PokemonMoveRow,
                          $PokemonMovesTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonsTableReferences
                              ._pokemonMovesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonsTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonMovesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                      if (pokemonGamesRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonsTable,
                          PokemonGameRow,
                          $PokemonGamesTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonsTableReferences
                              ._pokemonGamesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonsTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonGamesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                      if (favoritesRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonsTable,
                          FavoriteRow,
                          $FavoritesTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonsTableReferences
                              ._favoritesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonsTableReferences(
                                db,
                                table,
                                p0,
                              ).favoritesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                      if (triviaAnswersRefs)
                        await $_getPrefetchedDataByColumns<
                          PokemonRow,
                          $PokemonsTable,
                          TriviaAnswerRow,
                          $TriviaAnswersTable
                        >(
                          currentTable: table,
                          referencedTable: $$PokemonsTableReferences
                              ._triviaAnswersRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PokemonsTableReferences(
                                db,
                                table,
                                p0,
                              ).triviaAnswersRefs,
                          currentColumn: 'id',
                          referencedColumn: 'pokemon_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$PokemonsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonsTable,
      PokemonRow,
      $$PokemonsTableFilterComposer,
      $$PokemonsTableOrderingComposer,
      $$PokemonsTableAnnotationComposer,
      $$PokemonsTableCreateCompanionBuilder,
      $$PokemonsTableUpdateCompanionBuilder,
      (PokemonRow, $$PokemonsTableReferences),
      PokemonRow,
      PrefetchHooks Function({
        bool speciesId,
        bool pokemonTypesRefs,
        bool pokemonAbilitiesRefs,
        bool pokemonMovesRefs,
        bool pokemonGamesRefs,
        bool favoritesRefs,
        bool triviaAnswersRefs,
      })
    >;
typedef $$TypesTableCreateCompanionBuilder = TypesCompanion Function({
  Value<int> id,
  required String name,
});
typedef $$TypesTableUpdateCompanionBuilder = TypesCompanion Function({
  Value<int> id,
  Value<String> name,
});

final class $$TypesTableReferences
    extends BaseReferences<_$AppDatabase, $TypesTable, TypeRow> {
  $$TypesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PokemonTypesTable, List<PokemonTypeRow>>
  _pokemonTypesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonTypes,
    aliasName: 'types__id__pokemon_types__type_id',
  );

  $$PokemonTypesTableProcessedTableManager get pokemonTypesRefs {
    final manager = $$PokemonTypesTableTableManager(
      $_db,
      $_db.pokemonTypes,
    ).filter((f) => f.typeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_pokemonTypesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$MovesTable, List<MoveRow>> _movesRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.moves,
    aliasName: 'types__id__moves__type_id',
  );

  $$MovesTableProcessedTableManager get movesRefs {
    final manager = $$MovesTableTableManager(
      $_db,
      $_db.moves,
    ).filter((f) => f.typeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_movesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$TypeEfficaciesTable, List<TypeEfficacyRow>>
  _attackEfficaciesTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.typeEfficacies,
    aliasName: 'types__id__type_efficacies__attacking_type_id',
  );

  $$TypeEfficaciesTableProcessedTableManager get attackEfficacies {
    final manager = $$TypeEfficaciesTableTableManager(
      $_db,
      $_db.typeEfficacies,
    ).filter((f) => f.attackingTypeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_attackEfficaciesTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$TypeEfficaciesTable, List<TypeEfficacyRow>>
  _defenseEfficaciesTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.typeEfficacies,
    aliasName: 'types__id__type_efficacies__defending_type_id',
  );

  $$TypeEfficaciesTableProcessedTableManager get defenseEfficacies {
    final manager = $$TypeEfficaciesTableTableManager(
      $_db,
      $_db.typeEfficacies,
    ).filter((f) => f.defendingTypeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_defenseEfficaciesTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TypesTableFilterComposer extends Composer<_$AppDatabase, $TypesTable> {
  $$TypesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> pokemonTypesRefs(
    Expression<bool> Function($$PokemonTypesTableFilterComposer f) f,
  ) {
    final $$PokemonTypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonTypes,
      getReferencedColumn: (t) => t.typeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTypesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> movesRefs(
    Expression<bool> Function($$MovesTableFilterComposer f) f,
  ) {
    final $$MovesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.moves,
      getReferencedColumn: (t) => t.typeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MovesTableFilterComposer(
            $db: $db,
            $table: $db.moves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> attackEfficacies(
    Expression<bool> Function($$TypeEfficaciesTableFilterComposer f) f,
  ) {
    final $$TypeEfficaciesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.typeEfficacies,
      getReferencedColumn: (t) => t.attackingTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeEfficaciesTableFilterComposer(
            $db: $db,
            $table: $db.typeEfficacies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> defenseEfficacies(
    Expression<bool> Function($$TypeEfficaciesTableFilterComposer f) f,
  ) {
    final $$TypeEfficaciesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.typeEfficacies,
      getReferencedColumn: (t) => t.defendingTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeEfficaciesTableFilterComposer(
            $db: $db,
            $table: $db.typeEfficacies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TypesTableOrderingComposer
    extends Composer<_$AppDatabase, $TypesTable> {
  $$TypesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TypesTableAnnotationComposer
    extends Composer<_$AppDatabase, $TypesTable> {
  $$TypesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> pokemonTypesRefs<T extends Object>(
    Expression<T> Function($$PokemonTypesTableAnnotationComposer a) f,
  ) {
    final $$PokemonTypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonTypes,
      getReferencedColumn: (t) => t.typeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonTypesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> movesRefs<T extends Object>(
    Expression<T> Function($$MovesTableAnnotationComposer a) f,
  ) {
    final $$MovesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.moves,
      getReferencedColumn: (t) => t.typeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MovesTableAnnotationComposer(
            $db: $db,
            $table: $db.moves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> attackEfficacies<T extends Object>(
    Expression<T> Function($$TypeEfficaciesTableAnnotationComposer a) f,
  ) {
    final $$TypeEfficaciesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.typeEfficacies,
      getReferencedColumn: (t) => t.attackingTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeEfficaciesTableAnnotationComposer(
            $db: $db,
            $table: $db.typeEfficacies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> defenseEfficacies<T extends Object>(
    Expression<T> Function($$TypeEfficaciesTableAnnotationComposer a) f,
  ) {
    final $$TypeEfficaciesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.typeEfficacies,
      getReferencedColumn: (t) => t.defendingTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypeEfficaciesTableAnnotationComposer(
            $db: $db,
            $table: $db.typeEfficacies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TypesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TypesTable,
          TypeRow,
          $$TypesTableFilterComposer,
          $$TypesTableOrderingComposer,
          $$TypesTableAnnotationComposer,
          $$TypesTableCreateCompanionBuilder,
          $$TypesTableUpdateCompanionBuilder,
          (TypeRow, $$TypesTableReferences),
          TypeRow,
          PrefetchHooks Function({
            bool pokemonTypesRefs,
            bool movesRefs,
            bool attackEfficacies,
            bool defenseEfficacies,
          })
        > {
  $$TypesTableTableManager(_$AppDatabase db, $TypesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TypesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TypesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TypesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) => TypesCompanion(id: id, name: name),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) => TypesCompanion.insert(id: id, name: name),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$TypesTable, TypeRow>(table),
                  $$TypesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                pokemonTypesRefs = false,
                movesRefs = false,
                attackEfficacies = false,
                defenseEfficacies = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (pokemonTypesRefs) db.pokemonTypes,
                    if (movesRefs) db.moves,
                    if (attackEfficacies) db.typeEfficacies,
                    if (defenseEfficacies) db.typeEfficacies,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (pokemonTypesRefs)
                        await $_getPrefetchedDataByColumns<
                          TypeRow,
                          $TypesTable,
                          PokemonTypeRow,
                          $PokemonTypesTable
                        >(
                          currentTable: table,
                          referencedTable: $$TypesTableReferences
                              ._pokemonTypesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TypesTableReferences(
                                db,
                                table,
                                p0,
                              ).pokemonTypesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'type_id',
                          typedResults: items,
                        ),
                      if (movesRefs)
                        await $_getPrefetchedDataByColumns<
                          TypeRow,
                          $TypesTable,
                          MoveRow,
                          $MovesTable
                        >(
                          currentTable: table,
                          referencedTable: $$TypesTableReferences
                              ._movesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TypesTableReferences(db, table, p0).movesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'type_id',
                          typedResults: items,
                        ),
                      if (attackEfficacies)
                        await $_getPrefetchedDataByColumns<
                          TypeRow,
                          $TypesTable,
                          TypeEfficacyRow,
                          $TypeEfficaciesTable
                        >(
                          currentTable: table,
                          referencedTable: $$TypesTableReferences
                              ._attackEfficaciesTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TypesTableReferences(
                                db,
                                table,
                                p0,
                              ).attackEfficacies,
                          currentColumn: 'id',
                          referencedColumn: 'attacking_type_id',
                          typedResults: items,
                        ),
                      if (defenseEfficacies)
                        await $_getPrefetchedDataByColumns<
                          TypeRow,
                          $TypesTable,
                          TypeEfficacyRow,
                          $TypeEfficaciesTable
                        >(
                          currentTable: table,
                          referencedTable: $$TypesTableReferences
                              ._defenseEfficaciesTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TypesTableReferences(
                                db,
                                table,
                                p0,
                              ).defenseEfficacies,
                          currentColumn: 'id',
                          referencedColumn: 'defending_type_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$TypesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TypesTable,
      TypeRow,
      $$TypesTableFilterComposer,
      $$TypesTableOrderingComposer,
      $$TypesTableAnnotationComposer,
      $$TypesTableCreateCompanionBuilder,
      $$TypesTableUpdateCompanionBuilder,
      (TypeRow, $$TypesTableReferences),
      TypeRow,
      PrefetchHooks Function({
        bool pokemonTypesRefs,
        bool movesRefs,
        bool attackEfficacies,
        bool defenseEfficacies,
      })
    >;
typedef $$PokemonTypesTableCreateCompanionBuilder =
    PokemonTypesCompanion Function({
      required int pokemonId,
      required int typeId,
      required int slot,
      Value<int> rowid,
    });
typedef $$PokemonTypesTableUpdateCompanionBuilder =
    PokemonTypesCompanion Function({
      Value<int> pokemonId,
      Value<int> typeId,
      Value<int> slot,
      Value<int> rowid,
    });

final class $$PokemonTypesTableReferences
    extends BaseReferences<_$AppDatabase, $PokemonTypesTable, PokemonTypeRow> {
  $$PokemonTypesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PokemonsTable _pokemonIdTable(_$AppDatabase db) =>
      db.pokemons.createAlias('pokemon_types__pokemon_id__pokemons__id');

  $$PokemonsTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonsTableTableManager(
      $_db,
      $_db.pokemons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $TypesTable _typeIdTable(_$AppDatabase db) =>
      db.types.createAlias('pokemon_types__type_id__types__id');

  $$TypesTableProcessedTableManager get typeId {
    final $_column = $_itemColumn<int>('type_id')!;

    final manager = $$TypesTableTableManager(
      $_db,
      $_db.types,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_typeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PokemonTypesTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonTypesTable> {
  $$PokemonTypesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get slot => $composableBuilder(
    column: $table.slot,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonsTableFilterComposer get pokemonId {
    final $$PokemonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableFilterComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypesTableFilterComposer get typeId {
    final $$TypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.typeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableFilterComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonTypesTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonTypesTable> {
  $$PokemonTypesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get slot => $composableBuilder(
    column: $table.slot,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonsTableOrderingComposer get pokemonId {
    final $$PokemonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableOrderingComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypesTableOrderingComposer get typeId {
    final $$TypesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.typeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableOrderingComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonTypesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonTypesTable> {
  $$PokemonTypesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get slot =>
      $composableBuilder(column: $table.slot, builder: (column) => column);

  $$PokemonsTableAnnotationComposer get pokemonId {
    final $$PokemonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypesTableAnnotationComposer get typeId {
    final $$TypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.typeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableAnnotationComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonTypesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonTypesTable,
          PokemonTypeRow,
          $$PokemonTypesTableFilterComposer,
          $$PokemonTypesTableOrderingComposer,
          $$PokemonTypesTableAnnotationComposer,
          $$PokemonTypesTableCreateCompanionBuilder,
          $$PokemonTypesTableUpdateCompanionBuilder,
          (PokemonTypeRow, $$PokemonTypesTableReferences),
          PokemonTypeRow,
          PrefetchHooks Function({bool pokemonId, bool typeId})
        > {
  $$PokemonTypesTableTableManager(_$AppDatabase db, $PokemonTypesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonTypesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonTypesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonTypesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<int> typeId = const Value.absent(),
                Value<int> slot = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonTypesCompanion(
                pokemonId: pokemonId,
                typeId: typeId,
                slot: slot,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int pokemonId,
                required int typeId,
                required int slot,
                Value<int> rowid = const Value.absent(),
              }) => PokemonTypesCompanion.insert(
                pokemonId: pokemonId,
                typeId: typeId,
                slot: slot,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonTypesTable, PokemonTypeRow>(table),
                  $$PokemonTypesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonId = false, typeId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pokemonId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.pokemonId,
                        referencedTable: $$PokemonTypesTableReferences
                            ._pokemonIdTable(db),
                        referencedColumn: $$PokemonTypesTableReferences
                            ._pokemonIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (typeId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.typeId,
                        referencedTable: $$PokemonTypesTableReferences
                            ._typeIdTable(db),
                        referencedColumn: $$PokemonTypesTableReferences
                            ._typeIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PokemonTypesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonTypesTable,
      PokemonTypeRow,
      $$PokemonTypesTableFilterComposer,
      $$PokemonTypesTableOrderingComposer,
      $$PokemonTypesTableAnnotationComposer,
      $$PokemonTypesTableCreateCompanionBuilder,
      $$PokemonTypesTableUpdateCompanionBuilder,
      (PokemonTypeRow, $$PokemonTypesTableReferences),
      PokemonTypeRow,
      PrefetchHooks Function({bool pokemonId, bool typeId})
    >;
typedef $$AbilitiesTableCreateCompanionBuilder = AbilitiesCompanion Function({
  Value<int> id,
  required String name,
  Value<String?> effectSummary,
});
typedef $$AbilitiesTableUpdateCompanionBuilder = AbilitiesCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String?> effectSummary,
});

final class $$AbilitiesTableReferences
    extends BaseReferences<_$AppDatabase, $AbilitiesTable, AbilityRow> {
  $$AbilitiesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PokemonAbilitiesTable, List<PokemonAbilityRow>>
  _pokemonAbilitiesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonAbilities,
    aliasName: 'abilities__id__pokemon_abilities__ability_id',
  );

  $$PokemonAbilitiesTableProcessedTableManager get pokemonAbilitiesRefs {
    final manager = $$PokemonAbilitiesTableTableManager(
      $_db,
      $_db.pokemonAbilities,
    ).filter((f) => f.abilityId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _pokemonAbilitiesRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$AbilitiesTableFilterComposer
    extends Composer<_$AppDatabase, $AbilitiesTable> {
  $$AbilitiesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get effectSummary => $composableBuilder(
    column: $table.effectSummary,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> pokemonAbilitiesRefs(
    Expression<bool> Function($$PokemonAbilitiesTableFilterComposer f) f,
  ) {
    final $$PokemonAbilitiesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonAbilities,
      getReferencedColumn: (t) => t.abilityId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonAbilitiesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonAbilities,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AbilitiesTableOrderingComposer
    extends Composer<_$AppDatabase, $AbilitiesTable> {
  $$AbilitiesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get effectSummary => $composableBuilder(
    column: $table.effectSummary,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AbilitiesTableAnnotationComposer
    extends Composer<_$AppDatabase, $AbilitiesTable> {
  $$AbilitiesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get effectSummary => $composableBuilder(
    column: $table.effectSummary,
    builder: (column) => column,
  );

  Expression<T> pokemonAbilitiesRefs<T extends Object>(
    Expression<T> Function($$PokemonAbilitiesTableAnnotationComposer a) f,
  ) {
    final $$PokemonAbilitiesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonAbilities,
      getReferencedColumn: (t) => t.abilityId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonAbilitiesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonAbilities,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AbilitiesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AbilitiesTable,
          AbilityRow,
          $$AbilitiesTableFilterComposer,
          $$AbilitiesTableOrderingComposer,
          $$AbilitiesTableAnnotationComposer,
          $$AbilitiesTableCreateCompanionBuilder,
          $$AbilitiesTableUpdateCompanionBuilder,
          (AbilityRow, $$AbilitiesTableReferences),
          AbilityRow,
          PrefetchHooks Function({bool pokemonAbilitiesRefs})
        > {
  $$AbilitiesTableTableManager(_$AppDatabase db, $AbilitiesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AbilitiesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AbilitiesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AbilitiesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> effectSummary = const Value.absent(),
              }) => AbilitiesCompanion(
                id: id,
                name: name,
                effectSummary: effectSummary,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<String?> effectSummary = const Value.absent(),
              }) => AbilitiesCompanion.insert(
                id: id,
                name: name,
                effectSummary: effectSummary,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$AbilitiesTable, AbilityRow>(table),
                  $$AbilitiesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonAbilitiesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (pokemonAbilitiesRefs) db.pokemonAbilities,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (pokemonAbilitiesRefs)
                    await $_getPrefetchedDataByColumns<
                      AbilityRow,
                      $AbilitiesTable,
                      PokemonAbilityRow,
                      $PokemonAbilitiesTable
                    >(
                      currentTable: table,
                      referencedTable: $$AbilitiesTableReferences
                          ._pokemonAbilitiesRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$AbilitiesTableReferences(
                            db,
                            table,
                            p0,
                          ).pokemonAbilitiesRefs,
                      currentColumn: 'id',
                      referencedColumn: 'ability_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$AbilitiesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AbilitiesTable,
      AbilityRow,
      $$AbilitiesTableFilterComposer,
      $$AbilitiesTableOrderingComposer,
      $$AbilitiesTableAnnotationComposer,
      $$AbilitiesTableCreateCompanionBuilder,
      $$AbilitiesTableUpdateCompanionBuilder,
      (AbilityRow, $$AbilitiesTableReferences),
      AbilityRow,
      PrefetchHooks Function({bool pokemonAbilitiesRefs})
    >;
typedef $$PokemonAbilitiesTableCreateCompanionBuilder =
    PokemonAbilitiesCompanion Function({
      required int pokemonId,
      required int abilityId,
      required bool isHidden,
      Value<int> rowid,
    });
typedef $$PokemonAbilitiesTableUpdateCompanionBuilder =
    PokemonAbilitiesCompanion Function({
      Value<int> pokemonId,
      Value<int> abilityId,
      Value<bool> isHidden,
      Value<int> rowid,
    });

final class $$PokemonAbilitiesTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $PokemonAbilitiesTable,
          PokemonAbilityRow
        > {
  $$PokemonAbilitiesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PokemonsTable _pokemonIdTable(_$AppDatabase db) =>
      db.pokemons.createAlias('pokemon_abilities__pokemon_id__pokemons__id');

  $$PokemonsTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonsTableTableManager(
      $_db,
      $_db.pokemons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $AbilitiesTable _abilityIdTable(_$AppDatabase db) =>
      db.abilities.createAlias('pokemon_abilities__ability_id__abilities__id');

  $$AbilitiesTableProcessedTableManager get abilityId {
    final $_column = $_itemColumn<int>('ability_id')!;

    final manager = $$AbilitiesTableTableManager(
      $_db,
      $_db.abilities,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_abilityIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PokemonAbilitiesTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonAbilitiesTable> {
  $$PokemonAbilitiesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<bool> get isHidden => $composableBuilder(
    column: $table.isHidden,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonsTableFilterComposer get pokemonId {
    final $$PokemonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableFilterComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AbilitiesTableFilterComposer get abilityId {
    final $$AbilitiesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.abilityId,
      referencedTable: $db.abilities,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AbilitiesTableFilterComposer(
            $db: $db,
            $table: $db.abilities,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonAbilitiesTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonAbilitiesTable> {
  $$PokemonAbilitiesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<bool> get isHidden => $composableBuilder(
    column: $table.isHidden,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonsTableOrderingComposer get pokemonId {
    final $$PokemonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableOrderingComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AbilitiesTableOrderingComposer get abilityId {
    final $$AbilitiesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.abilityId,
      referencedTable: $db.abilities,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AbilitiesTableOrderingComposer(
            $db: $db,
            $table: $db.abilities,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonAbilitiesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonAbilitiesTable> {
  $$PokemonAbilitiesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<bool> get isHidden =>
      $composableBuilder(column: $table.isHidden, builder: (column) => column);

  $$PokemonsTableAnnotationComposer get pokemonId {
    final $$PokemonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AbilitiesTableAnnotationComposer get abilityId {
    final $$AbilitiesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.abilityId,
      referencedTable: $db.abilities,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AbilitiesTableAnnotationComposer(
            $db: $db,
            $table: $db.abilities,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonAbilitiesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonAbilitiesTable,
          PokemonAbilityRow,
          $$PokemonAbilitiesTableFilterComposer,
          $$PokemonAbilitiesTableOrderingComposer,
          $$PokemonAbilitiesTableAnnotationComposer,
          $$PokemonAbilitiesTableCreateCompanionBuilder,
          $$PokemonAbilitiesTableUpdateCompanionBuilder,
          (PokemonAbilityRow, $$PokemonAbilitiesTableReferences),
          PokemonAbilityRow,
          PrefetchHooks Function({bool pokemonId, bool abilityId})
        > {
  $$PokemonAbilitiesTableTableManager(
    _$AppDatabase db,
    $PokemonAbilitiesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonAbilitiesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonAbilitiesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonAbilitiesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<int> abilityId = const Value.absent(),
                Value<bool> isHidden = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonAbilitiesCompanion(
                pokemonId: pokemonId,
                abilityId: abilityId,
                isHidden: isHidden,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int pokemonId,
                required int abilityId,
                required bool isHidden,
                Value<int> rowid = const Value.absent(),
              }) => PokemonAbilitiesCompanion.insert(
                pokemonId: pokemonId,
                abilityId: abilityId,
                isHidden: isHidden,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonAbilitiesTable, PokemonAbilityRow>(table),
                  $$PokemonAbilitiesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonId = false, abilityId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pokemonId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.pokemonId,
                        referencedTable: $$PokemonAbilitiesTableReferences
                            ._pokemonIdTable(db),
                        referencedColumn: $$PokemonAbilitiesTableReferences
                            ._pokemonIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (abilityId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.abilityId,
                        referencedTable: $$PokemonAbilitiesTableReferences
                            ._abilityIdTable(db),
                        referencedColumn: $$PokemonAbilitiesTableReferences
                            ._abilityIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PokemonAbilitiesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonAbilitiesTable,
      PokemonAbilityRow,
      $$PokemonAbilitiesTableFilterComposer,
      $$PokemonAbilitiesTableOrderingComposer,
      $$PokemonAbilitiesTableAnnotationComposer,
      $$PokemonAbilitiesTableCreateCompanionBuilder,
      $$PokemonAbilitiesTableUpdateCompanionBuilder,
      (PokemonAbilityRow, $$PokemonAbilitiesTableReferences),
      PokemonAbilityRow,
      PrefetchHooks Function({bool pokemonId, bool abilityId})
    >;
typedef $$EvolutionsTableCreateCompanionBuilder = EvolutionsCompanion Function({
  required int fromSpeciesId,
  required int toSpeciesId,
  required String trigger,
  Value<int?> minLevel,
  Value<String?> item,
  Value<int?> minHappiness,
  Value<String?> timeOfDay,
  Value<int> rowid,
});
typedef $$EvolutionsTableUpdateCompanionBuilder = EvolutionsCompanion Function({
  Value<int> fromSpeciesId,
  Value<int> toSpeciesId,
  Value<String> trigger,
  Value<int?> minLevel,
  Value<String?> item,
  Value<int?> minHappiness,
  Value<String?> timeOfDay,
  Value<int> rowid,
});

final class $$EvolutionsTableReferences
    extends BaseReferences<_$AppDatabase, $EvolutionsTable, EvolutionRow> {
  $$EvolutionsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PokemonSpeciesTable _fromSpeciesIdTable(_$AppDatabase db) => db
      .pokemonSpecies
      .createAlias('evolutions__from_species_id__pokemon_species__id');

  $$PokemonSpeciesTableProcessedTableManager get fromSpeciesId {
    final $_column = $_itemColumn<int>('from_species_id')!;

    final manager = $$PokemonSpeciesTableTableManager(
      $_db,
      $_db.pokemonSpecies,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_fromSpeciesIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $PokemonSpeciesTable _toSpeciesIdTable(_$AppDatabase db) => db
      .pokemonSpecies
      .createAlias('evolutions__to_species_id__pokemon_species__id');

  $$PokemonSpeciesTableProcessedTableManager get toSpeciesId {
    final $_column = $_itemColumn<int>('to_species_id')!;

    final manager = $$PokemonSpeciesTableTableManager(
      $_db,
      $_db.pokemonSpecies,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_toSpeciesIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$EvolutionsTableFilterComposer
    extends Composer<_$AppDatabase, $EvolutionsTable> {
  $$EvolutionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get trigger => $composableBuilder(
    column: $table.trigger,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minLevel => $composableBuilder(
    column: $table.minLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get item => $composableBuilder(
    column: $table.item,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minHappiness => $composableBuilder(
    column: $table.minHappiness,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get timeOfDay => $composableBuilder(
    column: $table.timeOfDay,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonSpeciesTableFilterComposer get fromSpeciesId {
    final $$PokemonSpeciesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.fromSpeciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$PokemonSpeciesTableFilterComposer get toSpeciesId {
    final $$PokemonSpeciesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.toSpeciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EvolutionsTableOrderingComposer
    extends Composer<_$AppDatabase, $EvolutionsTable> {
  $$EvolutionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get trigger => $composableBuilder(
    column: $table.trigger,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minLevel => $composableBuilder(
    column: $table.minLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get item => $composableBuilder(
    column: $table.item,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minHappiness => $composableBuilder(
    column: $table.minHappiness,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get timeOfDay => $composableBuilder(
    column: $table.timeOfDay,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonSpeciesTableOrderingComposer get fromSpeciesId {
    final $$PokemonSpeciesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.fromSpeciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableOrderingComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$PokemonSpeciesTableOrderingComposer get toSpeciesId {
    final $$PokemonSpeciesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.toSpeciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableOrderingComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EvolutionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EvolutionsTable> {
  $$EvolutionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get trigger =>
      $composableBuilder(column: $table.trigger, builder: (column) => column);

  GeneratedColumn<int> get minLevel =>
      $composableBuilder(column: $table.minLevel, builder: (column) => column);

  GeneratedColumn<String> get item =>
      $composableBuilder(column: $table.item, builder: (column) => column);

  GeneratedColumn<int> get minHappiness => $composableBuilder(
    column: $table.minHappiness,
    builder: (column) => column,
  );

  GeneratedColumn<String> get timeOfDay =>
      $composableBuilder(column: $table.timeOfDay, builder: (column) => column);

  $$PokemonSpeciesTableAnnotationComposer get fromSpeciesId {
    final $$PokemonSpeciesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.fromSpeciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$PokemonSpeciesTableAnnotationComposer get toSpeciesId {
    final $$PokemonSpeciesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.toSpeciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EvolutionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EvolutionsTable,
          EvolutionRow,
          $$EvolutionsTableFilterComposer,
          $$EvolutionsTableOrderingComposer,
          $$EvolutionsTableAnnotationComposer,
          $$EvolutionsTableCreateCompanionBuilder,
          $$EvolutionsTableUpdateCompanionBuilder,
          (EvolutionRow, $$EvolutionsTableReferences),
          EvolutionRow,
          PrefetchHooks Function({bool fromSpeciesId, bool toSpeciesId})
        > {
  $$EvolutionsTableTableManager(_$AppDatabase db, $EvolutionsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EvolutionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EvolutionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EvolutionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> fromSpeciesId = const Value.absent(),
                Value<int> toSpeciesId = const Value.absent(),
                Value<String> trigger = const Value.absent(),
                Value<int?> minLevel = const Value.absent(),
                Value<String?> item = const Value.absent(),
                Value<int?> minHappiness = const Value.absent(),
                Value<String?> timeOfDay = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EvolutionsCompanion(
                fromSpeciesId: fromSpeciesId,
                toSpeciesId: toSpeciesId,
                trigger: trigger,
                minLevel: minLevel,
                item: item,
                minHappiness: minHappiness,
                timeOfDay: timeOfDay,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int fromSpeciesId,
                required int toSpeciesId,
                required String trigger,
                Value<int?> minLevel = const Value.absent(),
                Value<String?> item = const Value.absent(),
                Value<int?> minHappiness = const Value.absent(),
                Value<String?> timeOfDay = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EvolutionsCompanion.insert(
                fromSpeciesId: fromSpeciesId,
                toSpeciesId: toSpeciesId,
                trigger: trigger,
                minLevel: minLevel,
                item: item,
                minHappiness: minHappiness,
                timeOfDay: timeOfDay,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$EvolutionsTable, EvolutionRow>(table),
                  $$EvolutionsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({fromSpeciesId = false, toSpeciesId = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (fromSpeciesId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.fromSpeciesId,
                            referencedTable: $$EvolutionsTableReferences
                                ._fromSpeciesIdTable(db),
                            referencedColumn: $$EvolutionsTableReferences
                                ._fromSpeciesIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (toSpeciesId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.toSpeciesId,
                            referencedTable: $$EvolutionsTableReferences
                                ._toSpeciesIdTable(db),
                            referencedColumn: $$EvolutionsTableReferences
                                ._toSpeciesIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$EvolutionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EvolutionsTable,
      EvolutionRow,
      $$EvolutionsTableFilterComposer,
      $$EvolutionsTableOrderingComposer,
      $$EvolutionsTableAnnotationComposer,
      $$EvolutionsTableCreateCompanionBuilder,
      $$EvolutionsTableUpdateCompanionBuilder,
      (EvolutionRow, $$EvolutionsTableReferences),
      EvolutionRow,
      PrefetchHooks Function({bool fromSpeciesId, bool toSpeciesId})
    >;
typedef $$EggGroupsTableCreateCompanionBuilder = EggGroupsCompanion Function({
  Value<int> id,
  required String name,
});
typedef $$EggGroupsTableUpdateCompanionBuilder = EggGroupsCompanion Function({
  Value<int> id,
  Value<String> name,
});

final class $$EggGroupsTableReferences
    extends BaseReferences<_$AppDatabase, $EggGroupsTable, EggGroupRow> {
  $$EggGroupsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$SpeciesEggGroupsTable, List<SpeciesEggGroupRow>>
  _speciesEggGroupsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.speciesEggGroups,
    aliasName: 'egg_groups__id__species_egg_groups__egg_group_id',
  );

  $$SpeciesEggGroupsTableProcessedTableManager get speciesEggGroupsRefs {
    final manager = $$SpeciesEggGroupsTableTableManager(
      $_db,
      $_db.speciesEggGroups,
    ).filter((f) => f.eggGroupId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _speciesEggGroupsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$EggGroupsTableFilterComposer
    extends Composer<_$AppDatabase, $EggGroupsTable> {
  $$EggGroupsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> speciesEggGroupsRefs(
    Expression<bool> Function($$SpeciesEggGroupsTableFilterComposer f) f,
  ) {
    final $$SpeciesEggGroupsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.speciesEggGroups,
      getReferencedColumn: (t) => t.eggGroupId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SpeciesEggGroupsTableFilterComposer(
            $db: $db,
            $table: $db.speciesEggGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$EggGroupsTableOrderingComposer
    extends Composer<_$AppDatabase, $EggGroupsTable> {
  $$EggGroupsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$EggGroupsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EggGroupsTable> {
  $$EggGroupsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> speciesEggGroupsRefs<T extends Object>(
    Expression<T> Function($$SpeciesEggGroupsTableAnnotationComposer a) f,
  ) {
    final $$SpeciesEggGroupsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.speciesEggGroups,
      getReferencedColumn: (t) => t.eggGroupId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SpeciesEggGroupsTableAnnotationComposer(
            $db: $db,
            $table: $db.speciesEggGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$EggGroupsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EggGroupsTable,
          EggGroupRow,
          $$EggGroupsTableFilterComposer,
          $$EggGroupsTableOrderingComposer,
          $$EggGroupsTableAnnotationComposer,
          $$EggGroupsTableCreateCompanionBuilder,
          $$EggGroupsTableUpdateCompanionBuilder,
          (EggGroupRow, $$EggGroupsTableReferences),
          EggGroupRow,
          PrefetchHooks Function({bool speciesEggGroupsRefs})
        > {
  $$EggGroupsTableTableManager(_$AppDatabase db, $EggGroupsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EggGroupsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EggGroupsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EggGroupsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) => EggGroupsCompanion(id: id, name: name),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) => EggGroupsCompanion.insert(id: id, name: name),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$EggGroupsTable, EggGroupRow>(table),
                  $$EggGroupsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({speciesEggGroupsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (speciesEggGroupsRefs) db.speciesEggGroups,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (speciesEggGroupsRefs)
                    await $_getPrefetchedDataByColumns<
                      EggGroupRow,
                      $EggGroupsTable,
                      SpeciesEggGroupRow,
                      $SpeciesEggGroupsTable
                    >(
                      currentTable: table,
                      referencedTable: $$EggGroupsTableReferences
                          ._speciesEggGroupsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$EggGroupsTableReferences(
                            db,
                            table,
                            p0,
                          ).speciesEggGroupsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'egg_group_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$EggGroupsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EggGroupsTable,
      EggGroupRow,
      $$EggGroupsTableFilterComposer,
      $$EggGroupsTableOrderingComposer,
      $$EggGroupsTableAnnotationComposer,
      $$EggGroupsTableCreateCompanionBuilder,
      $$EggGroupsTableUpdateCompanionBuilder,
      (EggGroupRow, $$EggGroupsTableReferences),
      EggGroupRow,
      PrefetchHooks Function({bool speciesEggGroupsRefs})
    >;
typedef $$SpeciesEggGroupsTableCreateCompanionBuilder =
    SpeciesEggGroupsCompanion Function({
      required int speciesId,
      required int eggGroupId,
      Value<int> rowid,
    });
typedef $$SpeciesEggGroupsTableUpdateCompanionBuilder =
    SpeciesEggGroupsCompanion Function({
      Value<int> speciesId,
      Value<int> eggGroupId,
      Value<int> rowid,
    });

final class $$SpeciesEggGroupsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $SpeciesEggGroupsTable,
          SpeciesEggGroupRow
        > {
  $$SpeciesEggGroupsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PokemonSpeciesTable _speciesIdTable(_$AppDatabase db) => db
      .pokemonSpecies
      .createAlias('species_egg_groups__species_id__pokemon_species__id');

  $$PokemonSpeciesTableProcessedTableManager get speciesId {
    final $_column = $_itemColumn<int>('species_id')!;

    final manager = $$PokemonSpeciesTableTableManager(
      $_db,
      $_db.pokemonSpecies,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_speciesIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $EggGroupsTable _eggGroupIdTable(_$AppDatabase db) => db.eggGroups
      .createAlias('species_egg_groups__egg_group_id__egg_groups__id');

  $$EggGroupsTableProcessedTableManager get eggGroupId {
    final $_column = $_itemColumn<int>('egg_group_id')!;

    final manager = $$EggGroupsTableTableManager(
      $_db,
      $_db.eggGroups,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_eggGroupIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SpeciesEggGroupsTableFilterComposer
    extends Composer<_$AppDatabase, $SpeciesEggGroupsTable> {
  $$SpeciesEggGroupsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$PokemonSpeciesTableFilterComposer get speciesId {
    final $$PokemonSpeciesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.speciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$EggGroupsTableFilterComposer get eggGroupId {
    final $$EggGroupsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.eggGroupId,
      referencedTable: $db.eggGroups,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EggGroupsTableFilterComposer(
            $db: $db,
            $table: $db.eggGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SpeciesEggGroupsTableOrderingComposer
    extends Composer<_$AppDatabase, $SpeciesEggGroupsTable> {
  $$SpeciesEggGroupsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$PokemonSpeciesTableOrderingComposer get speciesId {
    final $$PokemonSpeciesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.speciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableOrderingComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$EggGroupsTableOrderingComposer get eggGroupId {
    final $$EggGroupsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.eggGroupId,
      referencedTable: $db.eggGroups,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EggGroupsTableOrderingComposer(
            $db: $db,
            $table: $db.eggGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SpeciesEggGroupsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SpeciesEggGroupsTable> {
  $$SpeciesEggGroupsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$PokemonSpeciesTableAnnotationComposer get speciesId {
    final $$PokemonSpeciesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.speciesId,
      referencedTable: $db.pokemonSpecies,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonSpeciesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonSpecies,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$EggGroupsTableAnnotationComposer get eggGroupId {
    final $$EggGroupsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.eggGroupId,
      referencedTable: $db.eggGroups,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EggGroupsTableAnnotationComposer(
            $db: $db,
            $table: $db.eggGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SpeciesEggGroupsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SpeciesEggGroupsTable,
          SpeciesEggGroupRow,
          $$SpeciesEggGroupsTableFilterComposer,
          $$SpeciesEggGroupsTableOrderingComposer,
          $$SpeciesEggGroupsTableAnnotationComposer,
          $$SpeciesEggGroupsTableCreateCompanionBuilder,
          $$SpeciesEggGroupsTableUpdateCompanionBuilder,
          (SpeciesEggGroupRow, $$SpeciesEggGroupsTableReferences),
          SpeciesEggGroupRow,
          PrefetchHooks Function({bool speciesId, bool eggGroupId})
        > {
  $$SpeciesEggGroupsTableTableManager(
    _$AppDatabase db,
    $SpeciesEggGroupsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SpeciesEggGroupsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SpeciesEggGroupsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SpeciesEggGroupsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> speciesId = const Value.absent(),
                Value<int> eggGroupId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SpeciesEggGroupsCompanion(
                speciesId: speciesId,
                eggGroupId: eggGroupId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int speciesId,
                required int eggGroupId,
                Value<int> rowid = const Value.absent(),
              }) => SpeciesEggGroupsCompanion.insert(
                speciesId: speciesId,
                eggGroupId: eggGroupId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SpeciesEggGroupsTable, SpeciesEggGroupRow>(
                    table,
                  ),
                  $$SpeciesEggGroupsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({speciesId = false, eggGroupId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (speciesId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.speciesId,
                        referencedTable: $$SpeciesEggGroupsTableReferences
                            ._speciesIdTable(db),
                        referencedColumn: $$SpeciesEggGroupsTableReferences
                            ._speciesIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (eggGroupId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.eggGroupId,
                        referencedTable: $$SpeciesEggGroupsTableReferences
                            ._eggGroupIdTable(db),
                        referencedColumn: $$SpeciesEggGroupsTableReferences
                            ._eggGroupIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$SpeciesEggGroupsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SpeciesEggGroupsTable,
      SpeciesEggGroupRow,
      $$SpeciesEggGroupsTableFilterComposer,
      $$SpeciesEggGroupsTableOrderingComposer,
      $$SpeciesEggGroupsTableAnnotationComposer,
      $$SpeciesEggGroupsTableCreateCompanionBuilder,
      $$SpeciesEggGroupsTableUpdateCompanionBuilder,
      (SpeciesEggGroupRow, $$SpeciesEggGroupsTableReferences),
      SpeciesEggGroupRow,
      PrefetchHooks Function({bool speciesId, bool eggGroupId})
    >;
typedef $$VersionGroupsTableCreateCompanionBuilder =
    VersionGroupsCompanion Function({Value<int> id, required String name});
typedef $$VersionGroupsTableUpdateCompanionBuilder =
    VersionGroupsCompanion Function({Value<int> id, Value<String> name});

final class $$VersionGroupsTableReferences
    extends
        BaseReferences<_$AppDatabase, $VersionGroupsTable, VersionGroupRow> {
  $$VersionGroupsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$PokemonMovesTable, List<PokemonMoveRow>>
  _pokemonMovesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonMoves,
    aliasName: 'version_groups__id__pokemon_moves__version_group_id',
  );

  $$PokemonMovesTableProcessedTableManager get pokemonMovesRefs {
    final manager = $$PokemonMovesTableTableManager(
      $_db,
      $_db.pokemonMoves,
    ).filter((f) => f.versionGroupId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_pokemonMovesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$VersionGroupsTableFilterComposer
    extends Composer<_$AppDatabase, $VersionGroupsTable> {
  $$VersionGroupsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> pokemonMovesRefs(
    Expression<bool> Function($$PokemonMovesTableFilterComposer f) f,
  ) {
    final $$PokemonMovesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonMoves,
      getReferencedColumn: (t) => t.versionGroupId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonMovesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonMoves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$VersionGroupsTableOrderingComposer
    extends Composer<_$AppDatabase, $VersionGroupsTable> {
  $$VersionGroupsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$VersionGroupsTableAnnotationComposer
    extends Composer<_$AppDatabase, $VersionGroupsTable> {
  $$VersionGroupsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> pokemonMovesRefs<T extends Object>(
    Expression<T> Function($$PokemonMovesTableAnnotationComposer a) f,
  ) {
    final $$PokemonMovesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonMoves,
      getReferencedColumn: (t) => t.versionGroupId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonMovesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonMoves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$VersionGroupsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $VersionGroupsTable,
          VersionGroupRow,
          $$VersionGroupsTableFilterComposer,
          $$VersionGroupsTableOrderingComposer,
          $$VersionGroupsTableAnnotationComposer,
          $$VersionGroupsTableCreateCompanionBuilder,
          $$VersionGroupsTableUpdateCompanionBuilder,
          (VersionGroupRow, $$VersionGroupsTableReferences),
          VersionGroupRow,
          PrefetchHooks Function({bool pokemonMovesRefs})
        > {
  $$VersionGroupsTableTableManager(_$AppDatabase db, $VersionGroupsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$VersionGroupsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$VersionGroupsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$VersionGroupsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) => VersionGroupsCompanion(id: id, name: name),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) => VersionGroupsCompanion.insert(id: id, name: name),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$VersionGroupsTable, VersionGroupRow>(table),
                  $$VersionGroupsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonMovesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (pokemonMovesRefs) db.pokemonMoves],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (pokemonMovesRefs)
                    await $_getPrefetchedDataByColumns<
                      VersionGroupRow,
                      $VersionGroupsTable,
                      PokemonMoveRow,
                      $PokemonMovesTable
                    >(
                      currentTable: table,
                      referencedTable: $$VersionGroupsTableReferences
                          ._pokemonMovesRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$VersionGroupsTableReferences(
                            db,
                            table,
                            p0,
                          ).pokemonMovesRefs,
                      currentColumn: 'id',
                      referencedColumn: 'version_group_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$VersionGroupsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $VersionGroupsTable,
      VersionGroupRow,
      $$VersionGroupsTableFilterComposer,
      $$VersionGroupsTableOrderingComposer,
      $$VersionGroupsTableAnnotationComposer,
      $$VersionGroupsTableCreateCompanionBuilder,
      $$VersionGroupsTableUpdateCompanionBuilder,
      (VersionGroupRow, $$VersionGroupsTableReferences),
      VersionGroupRow,
      PrefetchHooks Function({bool pokemonMovesRefs})
    >;
typedef $$MovesTableCreateCompanionBuilder = MovesCompanion Function({
  Value<int> id,
  required String name,
  required int typeId,
});
typedef $$MovesTableUpdateCompanionBuilder = MovesCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<int> typeId,
});

final class $$MovesTableReferences
    extends BaseReferences<_$AppDatabase, $MovesTable, MoveRow> {
  $$MovesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $TypesTable _typeIdTable(_$AppDatabase db) =>
      db.types.createAlias('moves__type_id__types__id');

  $$TypesTableProcessedTableManager get typeId {
    final $_column = $_itemColumn<int>('type_id')!;

    final manager = $$TypesTableTableManager(
      $_db,
      $_db.types,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_typeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$PokemonMovesTable, List<PokemonMoveRow>>
  _pokemonMovesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pokemonMoves,
    aliasName: 'moves__id__pokemon_moves__move_id',
  );

  $$PokemonMovesTableProcessedTableManager get pokemonMovesRefs {
    final manager = $$PokemonMovesTableTableManager(
      $_db,
      $_db.pokemonMoves,
    ).filter((f) => f.moveId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_pokemonMovesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$MovesTableFilterComposer extends Composer<_$AppDatabase, $MovesTable> {
  $$MovesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  $$TypesTableFilterComposer get typeId {
    final $$TypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.typeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableFilterComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> pokemonMovesRefs(
    Expression<bool> Function($$PokemonMovesTableFilterComposer f) f,
  ) {
    final $$PokemonMovesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonMoves,
      getReferencedColumn: (t) => t.moveId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonMovesTableFilterComposer(
            $db: $db,
            $table: $db.pokemonMoves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MovesTableOrderingComposer
    extends Composer<_$AppDatabase, $MovesTable> {
  $$MovesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  $$TypesTableOrderingComposer get typeId {
    final $$TypesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.typeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableOrderingComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MovesTableAnnotationComposer
    extends Composer<_$AppDatabase, $MovesTable> {
  $$MovesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  $$TypesTableAnnotationComposer get typeId {
    final $$TypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.typeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableAnnotationComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> pokemonMovesRefs<T extends Object>(
    Expression<T> Function($$PokemonMovesTableAnnotationComposer a) f,
  ) {
    final $$PokemonMovesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pokemonMoves,
      getReferencedColumn: (t) => t.moveId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonMovesTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemonMoves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MovesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MovesTable,
          MoveRow,
          $$MovesTableFilterComposer,
          $$MovesTableOrderingComposer,
          $$MovesTableAnnotationComposer,
          $$MovesTableCreateCompanionBuilder,
          $$MovesTableUpdateCompanionBuilder,
          (MoveRow, $$MovesTableReferences),
          MoveRow,
          PrefetchHooks Function({bool typeId, bool pokemonMovesRefs})
        > {
  $$MovesTableTableManager(_$AppDatabase db, $MovesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MovesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MovesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MovesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> typeId = const Value.absent(),
          }) => MovesCompanion(id: id, name: name, typeId: typeId),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required int typeId,
          }) => MovesCompanion.insert(id: id, name: name, typeId: typeId),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$MovesTable, MoveRow>(table),
                  $$MovesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({typeId = false, pokemonMovesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (pokemonMovesRefs) db.pokemonMoves],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (typeId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.typeId,
                        referencedTable: $$MovesTableReferences._typeIdTable(
                          db,
                        ),
                        referencedColumn: $$MovesTableReferences
                            ._typeIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (pokemonMovesRefs)
                    await $_getPrefetchedDataByColumns<
                      MoveRow,
                      $MovesTable,
                      PokemonMoveRow,
                      $PokemonMovesTable
                    >(
                      currentTable: table,
                      referencedTable: $$MovesTableReferences
                          ._pokemonMovesRefsTable(db),
                      managerFromTypedResult: (p0) => $$MovesTableReferences(
                        db,
                        table,
                        p0,
                      ).pokemonMovesRefs,
                      currentColumn: 'id',
                      referencedColumn: 'move_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$MovesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MovesTable,
      MoveRow,
      $$MovesTableFilterComposer,
      $$MovesTableOrderingComposer,
      $$MovesTableAnnotationComposer,
      $$MovesTableCreateCompanionBuilder,
      $$MovesTableUpdateCompanionBuilder,
      (MoveRow, $$MovesTableReferences),
      MoveRow,
      PrefetchHooks Function({bool typeId, bool pokemonMovesRefs})
    >;
typedef $$PokemonMovesTableCreateCompanionBuilder =
    PokemonMovesCompanion Function({
      required int pokemonId,
      required int moveId,
      required int versionGroupId,
      required String learnMethod,
      required int level,
      Value<int> rowid,
    });
typedef $$PokemonMovesTableUpdateCompanionBuilder =
    PokemonMovesCompanion Function({
      Value<int> pokemonId,
      Value<int> moveId,
      Value<int> versionGroupId,
      Value<String> learnMethod,
      Value<int> level,
      Value<int> rowid,
    });

final class $$PokemonMovesTableReferences
    extends BaseReferences<_$AppDatabase, $PokemonMovesTable, PokemonMoveRow> {
  $$PokemonMovesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PokemonsTable _pokemonIdTable(_$AppDatabase db) =>
      db.pokemons.createAlias('pokemon_moves__pokemon_id__pokemons__id');

  $$PokemonsTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonsTableTableManager(
      $_db,
      $_db.pokemons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $MovesTable _moveIdTable(_$AppDatabase db) =>
      db.moves.createAlias('pokemon_moves__move_id__moves__id');

  $$MovesTableProcessedTableManager get moveId {
    final $_column = $_itemColumn<int>('move_id')!;

    final manager = $$MovesTableTableManager(
      $_db,
      $_db.moves,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_moveIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $VersionGroupsTable _versionGroupIdTable(_$AppDatabase db) => db
      .versionGroups
      .createAlias('pokemon_moves__version_group_id__version_groups__id');

  $$VersionGroupsTableProcessedTableManager get versionGroupId {
    final $_column = $_itemColumn<int>('version_group_id')!;

    final manager = $$VersionGroupsTableTableManager(
      $_db,
      $_db.versionGroups,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_versionGroupIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PokemonMovesTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonMovesTable> {
  $$PokemonMovesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get learnMethod => $composableBuilder(
    column: $table.learnMethod,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get level => $composableBuilder(
    column: $table.level,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonsTableFilterComposer get pokemonId {
    final $$PokemonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableFilterComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MovesTableFilterComposer get moveId {
    final $$MovesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.moveId,
      referencedTable: $db.moves,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MovesTableFilterComposer(
            $db: $db,
            $table: $db.moves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$VersionGroupsTableFilterComposer get versionGroupId {
    final $$VersionGroupsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.versionGroupId,
      referencedTable: $db.versionGroups,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VersionGroupsTableFilterComposer(
            $db: $db,
            $table: $db.versionGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonMovesTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonMovesTable> {
  $$PokemonMovesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get learnMethod => $composableBuilder(
    column: $table.learnMethod,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get level => $composableBuilder(
    column: $table.level,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonsTableOrderingComposer get pokemonId {
    final $$PokemonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableOrderingComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MovesTableOrderingComposer get moveId {
    final $$MovesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.moveId,
      referencedTable: $db.moves,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MovesTableOrderingComposer(
            $db: $db,
            $table: $db.moves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$VersionGroupsTableOrderingComposer get versionGroupId {
    final $$VersionGroupsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.versionGroupId,
      referencedTable: $db.versionGroups,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VersionGroupsTableOrderingComposer(
            $db: $db,
            $table: $db.versionGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonMovesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonMovesTable> {
  $$PokemonMovesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get learnMethod => $composableBuilder(
    column: $table.learnMethod,
    builder: (column) => column,
  );

  GeneratedColumn<int> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  $$PokemonsTableAnnotationComposer get pokemonId {
    final $$PokemonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$MovesTableAnnotationComposer get moveId {
    final $$MovesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.moveId,
      referencedTable: $db.moves,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MovesTableAnnotationComposer(
            $db: $db,
            $table: $db.moves,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$VersionGroupsTableAnnotationComposer get versionGroupId {
    final $$VersionGroupsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.versionGroupId,
      referencedTable: $db.versionGroups,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VersionGroupsTableAnnotationComposer(
            $db: $db,
            $table: $db.versionGroups,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonMovesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonMovesTable,
          PokemonMoveRow,
          $$PokemonMovesTableFilterComposer,
          $$PokemonMovesTableOrderingComposer,
          $$PokemonMovesTableAnnotationComposer,
          $$PokemonMovesTableCreateCompanionBuilder,
          $$PokemonMovesTableUpdateCompanionBuilder,
          (PokemonMoveRow, $$PokemonMovesTableReferences),
          PokemonMoveRow,
          PrefetchHooks Function({
            bool pokemonId,
            bool moveId,
            bool versionGroupId,
          })
        > {
  $$PokemonMovesTableTableManager(_$AppDatabase db, $PokemonMovesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonMovesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonMovesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonMovesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<int> moveId = const Value.absent(),
                Value<int> versionGroupId = const Value.absent(),
                Value<String> learnMethod = const Value.absent(),
                Value<int> level = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonMovesCompanion(
                pokemonId: pokemonId,
                moveId: moveId,
                versionGroupId: versionGroupId,
                learnMethod: learnMethod,
                level: level,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int pokemonId,
                required int moveId,
                required int versionGroupId,
                required String learnMethod,
                required int level,
                Value<int> rowid = const Value.absent(),
              }) => PokemonMovesCompanion.insert(
                pokemonId: pokemonId,
                moveId: moveId,
                versionGroupId: versionGroupId,
                learnMethod: learnMethod,
                level: level,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonMovesTable, PokemonMoveRow>(table),
                  $$PokemonMovesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({pokemonId = false, moveId = false, versionGroupId = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (pokemonId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.pokemonId,
                            referencedTable: $$PokemonMovesTableReferences
                                ._pokemonIdTable(db),
                            referencedColumn: $$PokemonMovesTableReferences
                                ._pokemonIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (moveId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.moveId,
                            referencedTable: $$PokemonMovesTableReferences
                                ._moveIdTable(db),
                            referencedColumn: $$PokemonMovesTableReferences
                                ._moveIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (versionGroupId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.versionGroupId,
                            referencedTable: $$PokemonMovesTableReferences
                                ._versionGroupIdTable(db),
                            referencedColumn: $$PokemonMovesTableReferences
                                ._versionGroupIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$PokemonMovesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonMovesTable,
      PokemonMoveRow,
      $$PokemonMovesTableFilterComposer,
      $$PokemonMovesTableOrderingComposer,
      $$PokemonMovesTableAnnotationComposer,
      $$PokemonMovesTableCreateCompanionBuilder,
      $$PokemonMovesTableUpdateCompanionBuilder,
      (PokemonMoveRow, $$PokemonMovesTableReferences),
      PokemonMoveRow,
      PrefetchHooks Function({bool pokemonId, bool moveId, bool versionGroupId})
    >;
typedef $$PokemonGamesTableCreateCompanionBuilder =
    PokemonGamesCompanion Function({
      required int pokemonId,
      required String gameName,
      Value<int> rowid,
    });
typedef $$PokemonGamesTableUpdateCompanionBuilder =
    PokemonGamesCompanion Function({
      Value<int> pokemonId,
      Value<String> gameName,
      Value<int> rowid,
    });

final class $$PokemonGamesTableReferences
    extends BaseReferences<_$AppDatabase, $PokemonGamesTable, PokemonGameRow> {
  $$PokemonGamesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PokemonsTable _pokemonIdTable(_$AppDatabase db) =>
      db.pokemons.createAlias('pokemon_games__pokemon_id__pokemons__id');

  $$PokemonsTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonsTableTableManager(
      $_db,
      $_db.pokemons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PokemonGamesTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonGamesTable> {
  $$PokemonGamesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get gameName => $composableBuilder(
    column: $table.gameName,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonsTableFilterComposer get pokemonId {
    final $$PokemonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableFilterComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonGamesTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonGamesTable> {
  $$PokemonGamesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get gameName => $composableBuilder(
    column: $table.gameName,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonsTableOrderingComposer get pokemonId {
    final $$PokemonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableOrderingComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonGamesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonGamesTable> {
  $$PokemonGamesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get gameName =>
      $composableBuilder(column: $table.gameName, builder: (column) => column);

  $$PokemonsTableAnnotationComposer get pokemonId {
    final $$PokemonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PokemonGamesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PokemonGamesTable,
          PokemonGameRow,
          $$PokemonGamesTableFilterComposer,
          $$PokemonGamesTableOrderingComposer,
          $$PokemonGamesTableAnnotationComposer,
          $$PokemonGamesTableCreateCompanionBuilder,
          $$PokemonGamesTableUpdateCompanionBuilder,
          (PokemonGameRow, $$PokemonGamesTableReferences),
          PokemonGameRow,
          PrefetchHooks Function({bool pokemonId})
        > {
  $$PokemonGamesTableTableManager(_$AppDatabase db, $PokemonGamesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonGamesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonGamesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonGamesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                Value<String> gameName = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PokemonGamesCompanion(
                pokemonId: pokemonId,
                gameName: gameName,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int pokemonId,
                required String gameName,
                Value<int> rowid = const Value.absent(),
              }) => PokemonGamesCompanion.insert(
                pokemonId: pokemonId,
                gameName: gameName,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PokemonGamesTable, PokemonGameRow>(table),
                  $$PokemonGamesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pokemonId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.pokemonId,
                        referencedTable: $$PokemonGamesTableReferences
                            ._pokemonIdTable(db),
                        referencedColumn: $$PokemonGamesTableReferences
                            ._pokemonIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PokemonGamesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PokemonGamesTable,
      PokemonGameRow,
      $$PokemonGamesTableFilterComposer,
      $$PokemonGamesTableOrderingComposer,
      $$PokemonGamesTableAnnotationComposer,
      $$PokemonGamesTableCreateCompanionBuilder,
      $$PokemonGamesTableUpdateCompanionBuilder,
      (PokemonGameRow, $$PokemonGamesTableReferences),
      PokemonGameRow,
      PrefetchHooks Function({bool pokemonId})
    >;
typedef $$TypeEfficaciesTableCreateCompanionBuilder =
    TypeEfficaciesCompanion Function({
      required int attackingTypeId,
      required int defendingTypeId,
      required int damageFactor,
      Value<int> rowid,
    });
typedef $$TypeEfficaciesTableUpdateCompanionBuilder =
    TypeEfficaciesCompanion Function({
      Value<int> attackingTypeId,
      Value<int> defendingTypeId,
      Value<int> damageFactor,
      Value<int> rowid,
    });

final class $$TypeEfficaciesTableReferences
    extends
        BaseReferences<_$AppDatabase, $TypeEfficaciesTable, TypeEfficacyRow> {
  $$TypeEfficaciesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $TypesTable _attackingTypeIdTable(_$AppDatabase db) =>
      db.types.createAlias('type_efficacies__attacking_type_id__types__id');

  $$TypesTableProcessedTableManager get attackingTypeId {
    final $_column = $_itemColumn<int>('attacking_type_id')!;

    final manager = $$TypesTableTableManager(
      $_db,
      $_db.types,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_attackingTypeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $TypesTable _defendingTypeIdTable(_$AppDatabase db) =>
      db.types.createAlias('type_efficacies__defending_type_id__types__id');

  $$TypesTableProcessedTableManager get defendingTypeId {
    final $_column = $_itemColumn<int>('defending_type_id')!;

    final manager = $$TypesTableTableManager(
      $_db,
      $_db.types,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_defendingTypeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TypeEfficaciesTableFilterComposer
    extends Composer<_$AppDatabase, $TypeEfficaciesTable> {
  $$TypeEfficaciesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get damageFactor => $composableBuilder(
    column: $table.damageFactor,
    builder: (column) => ColumnFilters(column),
  );

  $$TypesTableFilterComposer get attackingTypeId {
    final $$TypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.attackingTypeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableFilterComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypesTableFilterComposer get defendingTypeId {
    final $$TypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.defendingTypeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableFilterComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TypeEfficaciesTableOrderingComposer
    extends Composer<_$AppDatabase, $TypeEfficaciesTable> {
  $$TypeEfficaciesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get damageFactor => $composableBuilder(
    column: $table.damageFactor,
    builder: (column) => ColumnOrderings(column),
  );

  $$TypesTableOrderingComposer get attackingTypeId {
    final $$TypesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.attackingTypeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableOrderingComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypesTableOrderingComposer get defendingTypeId {
    final $$TypesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.defendingTypeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableOrderingComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TypeEfficaciesTableAnnotationComposer
    extends Composer<_$AppDatabase, $TypeEfficaciesTable> {
  $$TypeEfficaciesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get damageFactor => $composableBuilder(
    column: $table.damageFactor,
    builder: (column) => column,
  );

  $$TypesTableAnnotationComposer get attackingTypeId {
    final $$TypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.attackingTypeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableAnnotationComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TypesTableAnnotationComposer get defendingTypeId {
    final $$TypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.defendingTypeId,
      referencedTable: $db.types,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TypesTableAnnotationComposer(
            $db: $db,
            $table: $db.types,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TypeEfficaciesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TypeEfficaciesTable,
          TypeEfficacyRow,
          $$TypeEfficaciesTableFilterComposer,
          $$TypeEfficaciesTableOrderingComposer,
          $$TypeEfficaciesTableAnnotationComposer,
          $$TypeEfficaciesTableCreateCompanionBuilder,
          $$TypeEfficaciesTableUpdateCompanionBuilder,
          (TypeEfficacyRow, $$TypeEfficaciesTableReferences),
          TypeEfficacyRow,
          PrefetchHooks Function({bool attackingTypeId, bool defendingTypeId})
        > {
  $$TypeEfficaciesTableTableManager(
    _$AppDatabase db,
    $TypeEfficaciesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TypeEfficaciesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TypeEfficaciesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TypeEfficaciesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> attackingTypeId = const Value.absent(),
                Value<int> defendingTypeId = const Value.absent(),
                Value<int> damageFactor = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TypeEfficaciesCompanion(
                attackingTypeId: attackingTypeId,
                defendingTypeId: defendingTypeId,
                damageFactor: damageFactor,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int attackingTypeId,
                required int defendingTypeId,
                required int damageFactor,
                Value<int> rowid = const Value.absent(),
              }) => TypeEfficaciesCompanion.insert(
                attackingTypeId: attackingTypeId,
                defendingTypeId: defendingTypeId,
                damageFactor: damageFactor,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$TypeEfficaciesTable, TypeEfficacyRow>(table),
                  $$TypeEfficaciesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({attackingTypeId = false, defendingTypeId = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (attackingTypeId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.attackingTypeId,
                            referencedTable: $$TypeEfficaciesTableReferences
                                ._attackingTypeIdTable(db),
                            referencedColumn: $$TypeEfficaciesTableReferences
                                ._attackingTypeIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (defendingTypeId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.defendingTypeId,
                            referencedTable: $$TypeEfficaciesTableReferences
                                ._defendingTypeIdTable(db),
                            referencedColumn: $$TypeEfficaciesTableReferences
                                ._defendingTypeIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$TypeEfficaciesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TypeEfficaciesTable,
      TypeEfficacyRow,
      $$TypeEfficaciesTableFilterComposer,
      $$TypeEfficaciesTableOrderingComposer,
      $$TypeEfficaciesTableAnnotationComposer,
      $$TypeEfficaciesTableCreateCompanionBuilder,
      $$TypeEfficaciesTableUpdateCompanionBuilder,
      (TypeEfficacyRow, $$TypeEfficaciesTableReferences),
      TypeEfficacyRow,
      PrefetchHooks Function({bool attackingTypeId, bool defendingTypeId})
    >;
typedef $$FavoritesTableCreateCompanionBuilder = FavoritesCompanion Function({
  Value<int> pokemonId,
  required DateTime createdAt,
});
typedef $$FavoritesTableUpdateCompanionBuilder = FavoritesCompanion Function({
  Value<int> pokemonId,
  Value<DateTime> createdAt,
});

final class $$FavoritesTableReferences
    extends BaseReferences<_$AppDatabase, $FavoritesTable, FavoriteRow> {
  $$FavoritesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PokemonsTable _pokemonIdTable(_$AppDatabase db) =>
      db.pokemons.createAlias('favorites__pokemon_id__pokemons__id');

  $$PokemonsTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonsTableTableManager(
      $_db,
      $_db.pokemons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$FavoritesTableFilterComposer
    extends Composer<_$AppDatabase, $FavoritesTable> {
  $$FavoritesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$PokemonsTableFilterComposer get pokemonId {
    final $$PokemonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableFilterComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoritesTableOrderingComposer
    extends Composer<_$AppDatabase, $FavoritesTable> {
  $$FavoritesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$PokemonsTableOrderingComposer get pokemonId {
    final $$PokemonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableOrderingComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoritesTableAnnotationComposer
    extends Composer<_$AppDatabase, $FavoritesTable> {
  $$FavoritesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$PokemonsTableAnnotationComposer get pokemonId {
    final $$PokemonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoritesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FavoritesTable,
          FavoriteRow,
          $$FavoritesTableFilterComposer,
          $$FavoritesTableOrderingComposer,
          $$FavoritesTableAnnotationComposer,
          $$FavoritesTableCreateCompanionBuilder,
          $$FavoritesTableUpdateCompanionBuilder,
          (FavoriteRow, $$FavoritesTableReferences),
          FavoriteRow,
          PrefetchHooks Function({bool pokemonId})
        > {
  $$FavoritesTableTableManager(_$AppDatabase db, $FavoritesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FavoritesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FavoritesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FavoritesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> pokemonId = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) => FavoritesCompanion(pokemonId: pokemonId, createdAt: createdAt),
          createCompanionCallback:
              ({
                Value<int> pokemonId = const Value.absent(),
                required DateTime createdAt,
              }) => FavoritesCompanion.insert(
                pokemonId: pokemonId,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$FavoritesTable, FavoriteRow>(table),
                  $$FavoritesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pokemonId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pokemonId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.pokemonId,
                        referencedTable: $$FavoritesTableReferences
                            ._pokemonIdTable(db),
                        referencedColumn: $$FavoritesTableReferences
                            ._pokemonIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$FavoritesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FavoritesTable,
      FavoriteRow,
      $$FavoritesTableFilterComposer,
      $$FavoritesTableOrderingComposer,
      $$FavoritesTableAnnotationComposer,
      $$FavoritesTableCreateCompanionBuilder,
      $$FavoritesTableUpdateCompanionBuilder,
      (FavoriteRow, $$FavoritesTableReferences),
      FavoriteRow,
      PrefetchHooks Function({bool pokemonId})
    >;
typedef $$AppSettingsTableCreateCompanionBuilder =
    AppSettingsCompanion Function({
      required String key,
      required String value,
      Value<int> rowid,
    });
typedef $$AppSettingsTableUpdateCompanionBuilder =
    AppSettingsCompanion Function({
      Value<String> key,
      Value<String> value,
      Value<int> rowid,
    });

class $$AppSettingsTableFilterComposer
    extends Composer<_$AppDatabase, $AppSettingsTable> {
  $$AppSettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AppSettingsTableOrderingComposer
    extends Composer<_$AppDatabase, $AppSettingsTable> {
  $$AppSettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AppSettingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AppSettingsTable> {
  $$AppSettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$AppSettingsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AppSettingsTable,
          AppSettingRow,
          $$AppSettingsTableFilterComposer,
          $$AppSettingsTableOrderingComposer,
          $$AppSettingsTableAnnotationComposer,
          $$AppSettingsTableCreateCompanionBuilder,
          $$AppSettingsTableUpdateCompanionBuilder,
          (
            AppSettingRow,
            BaseReferences<_$AppDatabase, $AppSettingsTable, AppSettingRow>,
          ),
          AppSettingRow,
          PrefetchHooks Function()
        > {
  $$AppSettingsTableTableManager(_$AppDatabase db, $AppSettingsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AppSettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AppSettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AppSettingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> key = const Value.absent(),
            Value<String> value = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) => AppSettingsCompanion(key: key, value: value, rowid: rowid),
          createCompanionCallback:
              ({
                required String key,
                required String value,
                Value<int> rowid = const Value.absent(),
              }) => AppSettingsCompanion.insert(
                key: key,
                value: value,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$AppSettingsTable, AppSettingRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $AppSettingsTable,
                    AppSettingRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AppSettingsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AppSettingsTable,
      AppSettingRow,
      $$AppSettingsTableFilterComposer,
      $$AppSettingsTableOrderingComposer,
      $$AppSettingsTableAnnotationComposer,
      $$AppSettingsTableCreateCompanionBuilder,
      $$AppSettingsTableUpdateCompanionBuilder,
      (
        AppSettingRow,
        BaseReferences<_$AppDatabase, $AppSettingsTable, AppSettingRow>,
      ),
      AppSettingRow,
      PrefetchHooks Function()
    >;
typedef $$TriviaResultsTableCreateCompanionBuilder =
    TriviaResultsCompanion Function({
      Value<int> id,
      required int score,
      required int correctAnswers,
      required int totalQuestions,
      required DateTime playedAt,
    });
typedef $$TriviaResultsTableUpdateCompanionBuilder =
    TriviaResultsCompanion Function({
      Value<int> id,
      Value<int> score,
      Value<int> correctAnswers,
      Value<int> totalQuestions,
      Value<DateTime> playedAt,
    });

final class $$TriviaResultsTableReferences
    extends
        BaseReferences<_$AppDatabase, $TriviaResultsTable, TriviaResultRow> {
  $$TriviaResultsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$TriviaAnswersTable, List<TriviaAnswerRow>>
  _triviaAnswersRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.triviaAnswers,
    aliasName: 'trivia_results__id__trivia_answers__trivia_result_id',
  );

  $$TriviaAnswersTableProcessedTableManager get triviaAnswersRefs {
    final manager = $$TriviaAnswersTableTableManager(
      $_db,
      $_db.triviaAnswers,
    ).filter((f) => f.triviaResultId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_triviaAnswersRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TriviaResultsTableFilterComposer
    extends Composer<_$AppDatabase, $TriviaResultsTable> {
  $$TriviaResultsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get score => $composableBuilder(
    column: $table.score,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get correctAnswers => $composableBuilder(
    column: $table.correctAnswers,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalQuestions => $composableBuilder(
    column: $table.totalQuestions,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get playedAt => $composableBuilder(
    column: $table.playedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> triviaAnswersRefs(
    Expression<bool> Function($$TriviaAnswersTableFilterComposer f) f,
  ) {
    final $$TriviaAnswersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.triviaAnswers,
      getReferencedColumn: (t) => t.triviaResultId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TriviaAnswersTableFilterComposer(
            $db: $db,
            $table: $db.triviaAnswers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TriviaResultsTableOrderingComposer
    extends Composer<_$AppDatabase, $TriviaResultsTable> {
  $$TriviaResultsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get score => $composableBuilder(
    column: $table.score,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get correctAnswers => $composableBuilder(
    column: $table.correctAnswers,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalQuestions => $composableBuilder(
    column: $table.totalQuestions,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get playedAt => $composableBuilder(
    column: $table.playedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TriviaResultsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TriviaResultsTable> {
  $$TriviaResultsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get score =>
      $composableBuilder(column: $table.score, builder: (column) => column);

  GeneratedColumn<int> get correctAnswers => $composableBuilder(
    column: $table.correctAnswers,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalQuestions => $composableBuilder(
    column: $table.totalQuestions,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get playedAt =>
      $composableBuilder(column: $table.playedAt, builder: (column) => column);

  Expression<T> triviaAnswersRefs<T extends Object>(
    Expression<T> Function($$TriviaAnswersTableAnnotationComposer a) f,
  ) {
    final $$TriviaAnswersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.triviaAnswers,
      getReferencedColumn: (t) => t.triviaResultId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TriviaAnswersTableAnnotationComposer(
            $db: $db,
            $table: $db.triviaAnswers,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TriviaResultsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TriviaResultsTable,
          TriviaResultRow,
          $$TriviaResultsTableFilterComposer,
          $$TriviaResultsTableOrderingComposer,
          $$TriviaResultsTableAnnotationComposer,
          $$TriviaResultsTableCreateCompanionBuilder,
          $$TriviaResultsTableUpdateCompanionBuilder,
          (TriviaResultRow, $$TriviaResultsTableReferences),
          TriviaResultRow,
          PrefetchHooks Function({bool triviaAnswersRefs})
        > {
  $$TriviaResultsTableTableManager(_$AppDatabase db, $TriviaResultsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TriviaResultsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TriviaResultsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TriviaResultsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> score = const Value.absent(),
                Value<int> correctAnswers = const Value.absent(),
                Value<int> totalQuestions = const Value.absent(),
                Value<DateTime> playedAt = const Value.absent(),
              }) => TriviaResultsCompanion(
                id: id,
                score: score,
                correctAnswers: correctAnswers,
                totalQuestions: totalQuestions,
                playedAt: playedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int score,
                required int correctAnswers,
                required int totalQuestions,
                required DateTime playedAt,
              }) => TriviaResultsCompanion.insert(
                id: id,
                score: score,
                correctAnswers: correctAnswers,
                totalQuestions: totalQuestions,
                playedAt: playedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$TriviaResultsTable, TriviaResultRow>(table),
                  $$TriviaResultsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({triviaAnswersRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (triviaAnswersRefs) db.triviaAnswers,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (triviaAnswersRefs)
                    await $_getPrefetchedDataByColumns<
                      TriviaResultRow,
                      $TriviaResultsTable,
                      TriviaAnswerRow,
                      $TriviaAnswersTable
                    >(
                      currentTable: table,
                      referencedTable: $$TriviaResultsTableReferences
                          ._triviaAnswersRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$TriviaResultsTableReferences(
                            db,
                            table,
                            p0,
                          ).triviaAnswersRefs,
                      currentColumn: 'id',
                      referencedColumn: 'trivia_result_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$TriviaResultsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TriviaResultsTable,
      TriviaResultRow,
      $$TriviaResultsTableFilterComposer,
      $$TriviaResultsTableOrderingComposer,
      $$TriviaResultsTableAnnotationComposer,
      $$TriviaResultsTableCreateCompanionBuilder,
      $$TriviaResultsTableUpdateCompanionBuilder,
      (TriviaResultRow, $$TriviaResultsTableReferences),
      TriviaResultRow,
      PrefetchHooks Function({bool triviaAnswersRefs})
    >;
typedef $$TriviaAnswersTableCreateCompanionBuilder =
    TriviaAnswersCompanion Function({
      Value<int> id,
      required int triviaResultId,
      required int pokemonId,
      required bool correct,
    });
typedef $$TriviaAnswersTableUpdateCompanionBuilder =
    TriviaAnswersCompanion Function({
      Value<int> id,
      Value<int> triviaResultId,
      Value<int> pokemonId,
      Value<bool> correct,
    });

final class $$TriviaAnswersTableReferences
    extends
        BaseReferences<_$AppDatabase, $TriviaAnswersTable, TriviaAnswerRow> {
  $$TriviaAnswersTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $TriviaResultsTable _triviaResultIdTable(_$AppDatabase db) => db
      .triviaResults
      .createAlias('trivia_answers__trivia_result_id__trivia_results__id');

  $$TriviaResultsTableProcessedTableManager get triviaResultId {
    final $_column = $_itemColumn<int>('trivia_result_id')!;

    final manager = $$TriviaResultsTableTableManager(
      $_db,
      $_db.triviaResults,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_triviaResultIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $PokemonsTable _pokemonIdTable(_$AppDatabase db) =>
      db.pokemons.createAlias('trivia_answers__pokemon_id__pokemons__id');

  $$PokemonsTableProcessedTableManager get pokemonId {
    final $_column = $_itemColumn<int>('pokemon_id')!;

    final manager = $$PokemonsTableTableManager(
      $_db,
      $_db.pokemons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TriviaAnswersTableFilterComposer
    extends Composer<_$AppDatabase, $TriviaAnswersTable> {
  $$TriviaAnswersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get correct => $composableBuilder(
    column: $table.correct,
    builder: (column) => ColumnFilters(column),
  );

  $$TriviaResultsTableFilterComposer get triviaResultId {
    final $$TriviaResultsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.triviaResultId,
      referencedTable: $db.triviaResults,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TriviaResultsTableFilterComposer(
            $db: $db,
            $table: $db.triviaResults,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$PokemonsTableFilterComposer get pokemonId {
    final $$PokemonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableFilterComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TriviaAnswersTableOrderingComposer
    extends Composer<_$AppDatabase, $TriviaAnswersTable> {
  $$TriviaAnswersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get correct => $composableBuilder(
    column: $table.correct,
    builder: (column) => ColumnOrderings(column),
  );

  $$TriviaResultsTableOrderingComposer get triviaResultId {
    final $$TriviaResultsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.triviaResultId,
      referencedTable: $db.triviaResults,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TriviaResultsTableOrderingComposer(
            $db: $db,
            $table: $db.triviaResults,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$PokemonsTableOrderingComposer get pokemonId {
    final $$PokemonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableOrderingComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TriviaAnswersTableAnnotationComposer
    extends Composer<_$AppDatabase, $TriviaAnswersTable> {
  $$TriviaAnswersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get correct =>
      $composableBuilder(column: $table.correct, builder: (column) => column);

  $$TriviaResultsTableAnnotationComposer get triviaResultId {
    final $$TriviaResultsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.triviaResultId,
      referencedTable: $db.triviaResults,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TriviaResultsTableAnnotationComposer(
            $db: $db,
            $table: $db.triviaResults,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$PokemonsTableAnnotationComposer get pokemonId {
    final $$PokemonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pokemonId,
      referencedTable: $db.pokemons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PokemonsTableAnnotationComposer(
            $db: $db,
            $table: $db.pokemons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TriviaAnswersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TriviaAnswersTable,
          TriviaAnswerRow,
          $$TriviaAnswersTableFilterComposer,
          $$TriviaAnswersTableOrderingComposer,
          $$TriviaAnswersTableAnnotationComposer,
          $$TriviaAnswersTableCreateCompanionBuilder,
          $$TriviaAnswersTableUpdateCompanionBuilder,
          (TriviaAnswerRow, $$TriviaAnswersTableReferences),
          TriviaAnswerRow,
          PrefetchHooks Function({bool triviaResultId, bool pokemonId})
        > {
  $$TriviaAnswersTableTableManager(_$AppDatabase db, $TriviaAnswersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TriviaAnswersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TriviaAnswersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TriviaAnswersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> triviaResultId = const Value.absent(),
                Value<int> pokemonId = const Value.absent(),
                Value<bool> correct = const Value.absent(),
              }) => TriviaAnswersCompanion(
                id: id,
                triviaResultId: triviaResultId,
                pokemonId: pokemonId,
                correct: correct,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int triviaResultId,
                required int pokemonId,
                required bool correct,
              }) => TriviaAnswersCompanion.insert(
                id: id,
                triviaResultId: triviaResultId,
                pokemonId: pokemonId,
                correct: correct,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$TriviaAnswersTable, TriviaAnswerRow>(table),
                  $$TriviaAnswersTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({triviaResultId = false, pokemonId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (triviaResultId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.triviaResultId,
                        referencedTable: $$TriviaAnswersTableReferences
                            ._triviaResultIdTable(db),
                        referencedColumn: $$TriviaAnswersTableReferences
                            ._triviaResultIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (pokemonId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.pokemonId,
                        referencedTable: $$TriviaAnswersTableReferences
                            ._pokemonIdTable(db),
                        referencedColumn: $$TriviaAnswersTableReferences
                            ._pokemonIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$TriviaAnswersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TriviaAnswersTable,
      TriviaAnswerRow,
      $$TriviaAnswersTableFilterComposer,
      $$TriviaAnswersTableOrderingComposer,
      $$TriviaAnswersTableAnnotationComposer,
      $$TriviaAnswersTableCreateCompanionBuilder,
      $$TriviaAnswersTableUpdateCompanionBuilder,
      (TriviaAnswerRow, $$TriviaAnswersTableReferences),
      TriviaAnswerRow,
      PrefetchHooks Function({bool triviaResultId, bool pokemonId})
    >;
typedef $$AchievementsTableCreateCompanionBuilder =
    AchievementsCompanion Function({
      required String id,
      required DateTime unlockedAt,
      Value<int> rowid,
    });
typedef $$AchievementsTableUpdateCompanionBuilder =
    AchievementsCompanion Function({
      Value<String> id,
      Value<DateTime> unlockedAt,
      Value<int> rowid,
    });

class $$AchievementsTableFilterComposer
    extends Composer<_$AppDatabase, $AchievementsTable> {
  $$AchievementsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get unlockedAt => $composableBuilder(
    column: $table.unlockedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AchievementsTableOrderingComposer
    extends Composer<_$AppDatabase, $AchievementsTable> {
  $$AchievementsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get unlockedAt => $composableBuilder(
    column: $table.unlockedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AchievementsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AchievementsTable> {
  $$AchievementsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get unlockedAt => $composableBuilder(
    column: $table.unlockedAt,
    builder: (column) => column,
  );
}

class $$AchievementsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AchievementsTable,
          AchievementRow,
          $$AchievementsTableFilterComposer,
          $$AchievementsTableOrderingComposer,
          $$AchievementsTableAnnotationComposer,
          $$AchievementsTableCreateCompanionBuilder,
          $$AchievementsTableUpdateCompanionBuilder,
          (
            AchievementRow,
            BaseReferences<_$AppDatabase, $AchievementsTable, AchievementRow>,
          ),
          AchievementRow,
          PrefetchHooks Function()
        > {
  $$AchievementsTableTableManager(_$AppDatabase db, $AchievementsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AchievementsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AchievementsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AchievementsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> unlockedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AchievementsCompanion(
                id: id,
                unlockedAt: unlockedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required DateTime unlockedAt,
                Value<int> rowid = const Value.absent(),
              }) => AchievementsCompanion.insert(
                id: id,
                unlockedAt: unlockedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$AchievementsTable, AchievementRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $AchievementsTable,
                    AchievementRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AchievementsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AchievementsTable,
      AchievementRow,
      $$AchievementsTableFilterComposer,
      $$AchievementsTableOrderingComposer,
      $$AchievementsTableAnnotationComposer,
      $$AchievementsTableCreateCompanionBuilder,
      $$AchievementsTableUpdateCompanionBuilder,
      (
        AchievementRow,
        BaseReferences<_$AppDatabase, $AchievementsTable, AchievementRow>,
      ),
      AchievementRow,
      PrefetchHooks Function()
    >;
typedef $$SyncMetadataTableCreateCompanionBuilder =
    SyncMetadataCompanion Function({
      required String resourceKey,
      Value<DateTime?> lastSuccessAt,
      required String status,
      Value<int?> cursorOrOffset,
      Value<int> rowid,
    });
typedef $$SyncMetadataTableUpdateCompanionBuilder =
    SyncMetadataCompanion Function({
      Value<String> resourceKey,
      Value<DateTime?> lastSuccessAt,
      Value<String> status,
      Value<int?> cursorOrOffset,
      Value<int> rowid,
    });

class $$SyncMetadataTableFilterComposer
    extends Composer<_$AppDatabase, $SyncMetadataTable> {
  $$SyncMetadataTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get resourceKey => $composableBuilder(
    column: $table.resourceKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastSuccessAt => $composableBuilder(
    column: $table.lastSuccessAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get cursorOrOffset => $composableBuilder(
    column: $table.cursorOrOffset,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SyncMetadataTableOrderingComposer
    extends Composer<_$AppDatabase, $SyncMetadataTable> {
  $$SyncMetadataTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get resourceKey => $composableBuilder(
    column: $table.resourceKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastSuccessAt => $composableBuilder(
    column: $table.lastSuccessAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get cursorOrOffset => $composableBuilder(
    column: $table.cursorOrOffset,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SyncMetadataTableAnnotationComposer
    extends Composer<_$AppDatabase, $SyncMetadataTable> {
  $$SyncMetadataTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get resourceKey => $composableBuilder(
    column: $table.resourceKey,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastSuccessAt => $composableBuilder(
    column: $table.lastSuccessAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get cursorOrOffset => $composableBuilder(
    column: $table.cursorOrOffset,
    builder: (column) => column,
  );
}

class $$SyncMetadataTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SyncMetadataTable,
          SyncMetadataRow,
          $$SyncMetadataTableFilterComposer,
          $$SyncMetadataTableOrderingComposer,
          $$SyncMetadataTableAnnotationComposer,
          $$SyncMetadataTableCreateCompanionBuilder,
          $$SyncMetadataTableUpdateCompanionBuilder,
          (
            SyncMetadataRow,
            BaseReferences<_$AppDatabase, $SyncMetadataTable, SyncMetadataRow>,
          ),
          SyncMetadataRow,
          PrefetchHooks Function()
        > {
  $$SyncMetadataTableTableManager(_$AppDatabase db, $SyncMetadataTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncMetadataTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncMetadataTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncMetadataTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> resourceKey = const Value.absent(),
                Value<DateTime?> lastSuccessAt = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int?> cursorOrOffset = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SyncMetadataCompanion(
                resourceKey: resourceKey,
                lastSuccessAt: lastSuccessAt,
                status: status,
                cursorOrOffset: cursorOrOffset,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String resourceKey,
                Value<DateTime?> lastSuccessAt = const Value.absent(),
                required String status,
                Value<int?> cursorOrOffset = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SyncMetadataCompanion.insert(
                resourceKey: resourceKey,
                lastSuccessAt: lastSuccessAt,
                status: status,
                cursorOrOffset: cursorOrOffset,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SyncMetadataTable, SyncMetadataRow>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $SyncMetadataTable,
                    SyncMetadataRow
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SyncMetadataTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SyncMetadataTable,
      SyncMetadataRow,
      $$SyncMetadataTableFilterComposer,
      $$SyncMetadataTableOrderingComposer,
      $$SyncMetadataTableAnnotationComposer,
      $$SyncMetadataTableCreateCompanionBuilder,
      $$SyncMetadataTableUpdateCompanionBuilder,
      (
        SyncMetadataRow,
        BaseReferences<_$AppDatabase, $SyncMetadataTable, SyncMetadataRow>,
      ),
      SyncMetadataRow,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PokemonSpeciesTableTableManager get pokemonSpecies =>
      $$PokemonSpeciesTableTableManager(_db, _db.pokemonSpecies);
  $$PokemonsTableTableManager get pokemons =>
      $$PokemonsTableTableManager(_db, _db.pokemons);
  $$TypesTableTableManager get types =>
      $$TypesTableTableManager(_db, _db.types);
  $$PokemonTypesTableTableManager get pokemonTypes =>
      $$PokemonTypesTableTableManager(_db, _db.pokemonTypes);
  $$AbilitiesTableTableManager get abilities =>
      $$AbilitiesTableTableManager(_db, _db.abilities);
  $$PokemonAbilitiesTableTableManager get pokemonAbilities =>
      $$PokemonAbilitiesTableTableManager(_db, _db.pokemonAbilities);
  $$EvolutionsTableTableManager get evolutions =>
      $$EvolutionsTableTableManager(_db, _db.evolutions);
  $$EggGroupsTableTableManager get eggGroups =>
      $$EggGroupsTableTableManager(_db, _db.eggGroups);
  $$SpeciesEggGroupsTableTableManager get speciesEggGroups =>
      $$SpeciesEggGroupsTableTableManager(_db, _db.speciesEggGroups);
  $$VersionGroupsTableTableManager get versionGroups =>
      $$VersionGroupsTableTableManager(_db, _db.versionGroups);
  $$MovesTableTableManager get moves =>
      $$MovesTableTableManager(_db, _db.moves);
  $$PokemonMovesTableTableManager get pokemonMoves =>
      $$PokemonMovesTableTableManager(_db, _db.pokemonMoves);
  $$PokemonGamesTableTableManager get pokemonGames =>
      $$PokemonGamesTableTableManager(_db, _db.pokemonGames);
  $$TypeEfficaciesTableTableManager get typeEfficacies =>
      $$TypeEfficaciesTableTableManager(_db, _db.typeEfficacies);
  $$FavoritesTableTableManager get favorites =>
      $$FavoritesTableTableManager(_db, _db.favorites);
  $$AppSettingsTableTableManager get appSettings =>
      $$AppSettingsTableTableManager(_db, _db.appSettings);
  $$TriviaResultsTableTableManager get triviaResults =>
      $$TriviaResultsTableTableManager(_db, _db.triviaResults);
  $$TriviaAnswersTableTableManager get triviaAnswers =>
      $$TriviaAnswersTableTableManager(_db, _db.triviaAnswers);
  $$AchievementsTableTableManager get achievements =>
      $$AchievementsTableTableManager(_db, _db.achievements);
  $$SyncMetadataTableTableManager get syncMetadata =>
      $$SyncMetadataTableTableManager(_db, _db.syncMetadata);
}
