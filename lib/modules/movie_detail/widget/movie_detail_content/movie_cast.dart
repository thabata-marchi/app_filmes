import 'package:app_filmes/application/ui/theme_extensions.dart';
import 'package:app_filmes/models/cast_model.dart';
import 'package:flutter/material.dart';

class MovieCast extends StatelessWidget {
  final CastModel? cast;

  const MovieCast({Key? key, this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('AQUIIII ===> ${cast?.image}');
    return Container(
        width: 95,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (cast?.image != 'https://image.tmdb.org/t/p/w200')
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    cast?.image ?? '',
                    //'https://image.tmdb.org/t/p/w200/euDPyqLnuwaWMHajcU3oZ9uZezR.jpg',

                    width: 85,
                    height: 85,
                    fit: BoxFit.cover,
                  )),
            Text(
              cast?.name ?? '',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Text(cast?.character ?? '',
                style: TextStyle(fontSize: 12, color: context.themeGrey)),
          ],
        ));
  }
}
