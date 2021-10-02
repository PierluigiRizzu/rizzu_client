import 'package:rizzu_client/rizzu_client.dart';



void main() async {
  var a = RizzuClient(baseUrl: 'https://jsonplaceholder.typicode.com/');
  print(await a.call('/posts', method: ApiMethod.GET));
  //PUT REQUEST
  print(await a.call('/posts/1', method: ApiMethod.PUT, params: {
    'id': 1,
    'title': 'foo',
    'body': 'hii',
    'userId': '1',
  }));
  print(await a.call('/posts', method: ApiMethod.POST, params: {
    'id': 5,
    'title': 'foo',
    'body': 'bar',
    'userId': '1',
  }));
}