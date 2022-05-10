import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'dto/pokemons_response_dto.dart';

part 'pokemon_api.g.dart';

@RestApi()
abstract class PokemonApi {
  factory PokemonApi(Dio _dio) = _PokemonApi;

  @GET('/v2/pokemon')
  Stream<PokemonResponseDTO> getPokemons();
}
