const fetchPokemonPageQuery = r'''
query FetchPokemonPage($limit: Int!, $offset: Int!) {
  pokemon(
    limit: $limit
    offset: $offset
    order_by: {id: asc}
    where: {is_default: {_eq: true}}
  ) {
    id
    name
    height
    weight
    pokemon_species_id
    pokemonsprites {
      sprites(path: "other.official-artwork.front_default")
    }
    pokemontypes(order_by: {slot: asc}) {
      slot
      type {
        id
        name
      }
    }
    pokemonabilities {
      is_hidden
      ability {
        id
        name
      }
    }
  }
}
''';