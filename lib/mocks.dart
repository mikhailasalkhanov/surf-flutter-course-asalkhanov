import 'domain/sight.dart';
import 'ui/screen/sight_card.dart';

///Заглушки для карточек интересных мест
const List<SightCard> sightCardMocks = [
  SightCard(sight: amurskiyMost),
  SightCard(sight: vdrovaPizzeria),
  SightCard(sight: uspenskiySobor),
];

const amurskiyMost = const Sight(
  name: 'Мост через реку Амур',
  lat: 48.5354,
  lon: 135.001,
  url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Amurbridge2.jpg/1200px-Amurbridge2.jpg',
  details: '«Амурское чудо», «Алексеевский мост» — это мост, перекинутый через' +
      'реку Амур в городе Хабаровск, истинное «инженерное чудо», которому уже больше' +
      'сотни лет, — самый большой на Транссибе и во всей России. В нем совмещены' +
      'железнодорожное однопутное (нижний ярус) и автомобильное в две полосы движение.',
  type: 'сооружение',
);

const vdrovaPizzeria = const Sight(
  name: 'Ресторан "ВДрова"',
  lat: 48.476327,
  lon: 135.06199,
  url: 'https://media-cdn.tripadvisor.com/media/photo-s/11/3d/be/5c/caption.jpg',
  details: 'Пользующийся большой популярностью в Хабаровске ресторан "ВДрова"' +
      'славится прекрасной кухней и неординарностью',
  type: 'ресторан',
);

const uspenskiySobor = const Sight(
  name: 'Успенский собор',
  lat: 48.473233,
  lon: 135.05660,
  url: 'https://lh3.googleusercontent.com/proxy/DBlTK7XXMpW0n5bQG9CIjpHfQo4fxZumTizYWq_oicytwvxNuaNLCOke8v55LIDqfNNYVkxhZ8A9UiVGEh-Br5QsI8hIJZrlCYehH7W_wiWlxJi0lOspNauphWWw-RqcnaPS3MH8Bd1NwAWyHFGrvk8oDVB_dA',
  details: 'Возводился в 80-е годы XIX века. Стал первым каменным храмом' +
      'города. В 30-е годы прошлого века здание разобрали, чтобы использовать' +
      'кирпичи и освободившуюся территорию.',
  type: 'сооружение',
);
