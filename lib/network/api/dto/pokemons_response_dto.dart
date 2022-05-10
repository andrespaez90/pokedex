import 'package:json_annotation/json_annotation.dart';

part 'pokemons_response_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class PokemonResponseDTO {
  PokemonResponseDTO(this.count, this.next, this.previous);

  factory PokemonResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseDTOFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonResponseDTOToJson(this);

  @JsonKey(name: 'count')
  final int count;

  @JsonKey(name: 'next')
  final String next;

  @JsonKey(name: 'previous')
  final String? previous;
}
