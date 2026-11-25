const fetchPokemonPageQuery = r'''
query FetchPokemonPage($limit: Int!, $offset: Int!) {
  pokemon(limit: $limit, offset: $offset, order_by: {id: asc}) {
    id
    name
    is_default
    height
    weight
    pokemonspecy {
      id
      name
      generation_id
      pokemonspeciesnames(where: {language: {name: {_eq: "en"}}}) {
        name
      }
    }
    pokemonstats {
      base_stat
      stat {
        name
      }
    }
    pokemonsprites {
      artwork: sprites(path: "other.official-artwork.front_default")
      shiny: sprites(path: "other.official-artwork.front_shiny")
      sprite: sprites(path: "front_default")
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
