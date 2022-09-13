import 'package:flutter_test/flutter_test.dart';
import 'package:testing_unit_widget/model/post_model.dart';
import 'package:testing_unit_widget/services/network_service.dart';

void main(){
  test("Posts in not null", () async{
    String? response = await Network.GET(Network.API_LIST, Network.paramsEmpty());
    List<Post> posts = Network.parsePostList(response ?? ' ');
    expect(posts, isNotNull);
  });
  test("Posts is greater than zero", () async{
    String? response = await Network.GET(Network.API_LIST, Network.paramsEmpty());
    List<Post> posts = Network.parsePostList(response ?? ' ');
    expect(posts.length, greaterThan(0));
  });
  test("Posts are exactly 100 ", () async{
    String? response = await Network.GET(Network.API_LIST, Network.paramsEmpty());
    List<Post> posts = Network.parsePostList(response ?? ' ');
    expect(posts.length, equals(100));
  });
  test("Check first post's title", () async{
    String? response = await Network.GET(Network.API_LIST, Network.paramsEmpty());
    List<Post> posts = Network.parsePostList(response ?? ' ');
    expect(posts[1].title.toUpperCase(), equals("QUI EST ESSE"));
  });
}