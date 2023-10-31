import 'package:appwrite/appwrite.dart';

class Appwrite {
  static const projectId = '6540ad8c997ce007359f';
  static const endpoint = 'https://cloud.appwrite.io/v1';

  static const databaseId = '6540b44502941be730c7';
  static const collectionUsers = '6540b4cf1f86df6cebdf';
  static const collectionWorkers = '6540b4f7aaf75ba2fa14';
  static const collectionBooking = '6540b511288e25321811';

  static Client client = Client();
  static late Account account;
  static late Databases databases;

  static init() {
    client
        .setEndpoint(endpoint)
        .setProject(projectId)
        .setSelfSigned(status: true);
    account = Account(client);
    databases = Databases(client);
  }
}
