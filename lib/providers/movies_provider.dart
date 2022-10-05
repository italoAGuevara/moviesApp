import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies_app/models/now_playing_response.dart';

import '../models/movie.dart';
import '../models/popular_response.dart';


class MoviesProvider extends ChangeNotifier{

  final String _apiKey = '0e1d00de9b8a56c35ed143bdb54da653';
  final String _baseUrl = 'api.themoviedb.org';
  final String _languaje = 'es-ES';

  List<Movie> onDisplayMovies = [];
  List<Movie> moviePopular = [];

  int _popularPage = 1;

  MoviesProvider(){    
    getOnPLayMovies();
    getMoviesPopular();
  }

  
  Future<String> _getJsonData( String endpoint, [int page = 1] ) async {
    var url = Uri.https( _baseUrl, endpoint, {
      'api_key': _apiKey,
      'languaje': _languaje,
      'page': '$page'
    });

    final response = await http.get(url);
    return response.body;
  }


  getOnPLayMovies() async {
    final jsonData =  await  _getJsonData( '/3/movie/now_playing');
    final nowPlayingResponse = NowPlayingResponse.fromJson( jsonData );
    onDisplayMovies = nowPlayingResponse.results;

    notifyListeners();
  }



  getMoviesPopular() async {

    _popularPage++;

    final jsonData = await _getJsonData( '/3/movie/popular',  _popularPage );
    final popularMovieResponse = MoviePopular.fromJson( jsonData );
    moviePopular = [ ...moviePopular, ...popularMovieResponse.results ];

    notifyListeners();
  }
}