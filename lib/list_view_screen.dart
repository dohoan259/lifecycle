import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lifecycle/movie.dart';

class MovieListScreenList extends StatefulWidget {
  const MovieListScreenList({Key? key}) : super(key: key);

  @override
  State<MovieListScreenList> createState() => _MovieListScreenListState();
}

class _MovieListScreenListState extends State<MovieListScreenList> {
  // state màn hình này
  List<Movie> _movieList = [];

  @override
  void initState() {
    // lấy từ server/ API về
    _movieList.add(Movie(
      name: 'Movie 1',
      icon1: Icons.share,
      icon2: Icons.share,
      icon3: Icons.share,
      icon4: Icons.share,
      icon5: Icons.share,
    ));
    _movieList.add(Movie(
      name: 'Movie 1',
      icon1: Icons.share,
      icon2: Icons.share,
      icon3: Icons.share,
      icon4: Icons.share,
      icon5: Icons.share,
    ));
    _movieList.add(Movie(
      name: 'Movie 1',
      icon1: Icons.share,
      icon2: Icons.share,
      icon3: Icons.share,
      icon4: Icons.share,
      icon5: Icons.share,
    ));
    _movieList.add(Movie(
      name: 'Movie 1',
      icon1: Icons.share,
      icon2: Icons.share,
      icon3: Icons.share,
      icon4: Icons.share,
      icon5: Icons.share,
    ));
    super.initState();
  }

  // state đại diện cho data
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _movieList.length,
          itemBuilder: (context, index) {
            // trả về định nghĩa giao diện của 1 item view

            // movie item ở đây
            // State/Data ở đây, gồm cái gì, kiểu dữ liệu là gì
            // String: text
            // Icon: icon

            Bool isSelect = false;

            // Lấy ra data của 1 item và mapping (ánh xạ) lên UI cho Item
            final movie = _movieList[index];

            return Column(
              children: [
                Text(
                  movie.name,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(movie.icon1),
                    Icon(movie.icon2),
                    Icon(movie.icon3),
                    Icon(movie.icon4),
                    Icon(movie.icon5),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
