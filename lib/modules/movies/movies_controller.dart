import 'package:app_filmes/application/ui/messages/messages_mixin.dart';
import 'package:app_filmes/models/genre_model.dart';
import 'package:app_filmes/services/genres/genres_service.dart';
import 'package:get/get.dart';

class MoviesController extends GetxController {
  final GenresService _genresService;
  final _message = Rxn<MessageModel>();
  final _genres = <GenreModel>[].obs;

  MoviesController({
    required GenresService genresService,
  }) : _genresService = genresService;

  List<GenreModel> get genres => _genres;

  @override
  void onInit() {
    super.onInit();
    messageListener(_message);
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    try {
      final genres = await _genresService.getGenres();
      this.genres.assignAll(genres);
    } catch (e) {
      print(e);
      _message(MessageModel.error(
          title: 'Erro', message: 'Erro ao buscar Categorias'));
    }
  }

  void messageListener(Rxn<MessageModel> message) {}
}
