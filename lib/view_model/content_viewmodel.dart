import 'package:festival_search/repository/content_repository.dart';

class ContentViewModel {
  final contentRepository = ContentRepository();
  dynamic fetchContents() async {
    return await contentRepository.fetchContents();
  }
}
