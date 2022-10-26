
import 'package:flutter/material.dart';

class MoviesProviders extends ChangeNotifier{
  MoviesProviders() {
    print('MoviesProviders inicializado');
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    print('getOnDisplayMovies');
  }
}
