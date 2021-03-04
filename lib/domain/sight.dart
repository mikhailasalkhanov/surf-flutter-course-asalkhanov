///Модель карточки места
class Sight {
  ///название достопримечательности
  final String name;

  ///Координаты места
  final double lat, lon;

  ///Путь до фотографии в интернете
  final String url;

  ///Описание достопримечательности
  final String details;

  ///Тип достопримечательности
  final String type;

  Sight({
    this.name, 
    this.lat, 
    this.lon, 
    this.url, 
    this.details, 
    this.type
  });
}
