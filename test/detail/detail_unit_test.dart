import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:testing_unit_widget/model/post_model.dart';
import 'package:testing_unit_widget/services/network_service.dart';

void main() {
  test("Network connection POST", () async {
    Post post = Post(
        id: Random().nextInt(100),
        title: 'title',
        body: 'body',
        userId: Random().nextInt(100));
    String? response = await Network.POST(Network.API_UPDATE, post.toJson());
    expect(response, isNotNull);
  });
  test("Network connection PUT", () async {
    Post post = Post(
        id: Random().nextInt(100),
        title: 'title',
        body: 'body',
        userId: Random().nextInt(100));
    String? response =
        await Network.PUT('${Network.API_UPDATE}1', post.toJson());
    expect(response, isNotNull);
  });
  test("Check changed post's not null", () async{
    String? response =
    await Network.GET(Network.API_LIST, Network.paramsEmpty());
    List<Post> posts = Network.parsePostList(response ?? ' ');
    Post post = posts.firstWhere((element) => element.id == 1);
    expect(post.title, isNotNull);
  });
  test("Post id 1 exist", () async {
    String? response =
        await Network.GET(Network.API_LIST, Network.paramsEmpty());
    List<Post> posts = Network.parsePostList(response ?? ' ');
    Post post = posts.firstWhere((element) => element.id == 1);
    expect(post.id, 1);
  });
}
