import 'package:festival_search/service/api_client.dart';

class ContentRepository {
  final apiClient = ApiClient();
  dynamic fetchContents() async {
    return await apiClient.fetchContents();
  }
}
