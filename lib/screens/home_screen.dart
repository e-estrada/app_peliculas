import 'package:app_peliculas/providers/movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Películas en Cines'),
          elevation: 0,
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined))],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Tarjetas Principales
              CardSwiper(movies: moviesProvider.onDisplayMovies),

              //Slider de Películas
              MovieSlider(
                  onNextPage: () => moviesProvider.getPopularMovies(),
                  movies: moviesProvider.popularMovies,
                  title: 'Películas Populares'),
            ],
          ),
        ));
  }
}
