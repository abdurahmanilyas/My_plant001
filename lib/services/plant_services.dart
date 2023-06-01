part of 'services.dart';

class PlantServices {
  static Future<ApiReturnValue<List<Plant>>> getPlants(
      {required http.Client client}) async {
    client ??= http.Client();

    String url = baseURL + 'plant';

    var response = await client.get(url as Uri);

    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'Please try again', value: []);
    }

    var data = jsonDecode(response.body);

    List<Plant> plants = (data['data']['data'] as Iterable)
        .map((e) => Plant.fromJson(e))
        .toList();

    return ApiReturnValue(value: plants, message: '');
  }
}
