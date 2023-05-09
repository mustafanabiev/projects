class ApiConst {
  static String api(String? name) =>
      'https://pokeapi.co/api/v2/contest-type/${name ?? '1'}';
}
