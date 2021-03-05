///Модель интересного места
class Sight {
  ///название интересного местаа
  final String name;

  ///Координаты интересного места
  final double lat, lon;

  ///Путь до фотографии в интернете
  final String url;

  ///Описание интересного места
  final String details;

  ///Тип интересного места
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
