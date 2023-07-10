import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'parking_tile_calculator.dart';
import 'tile/tile_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: InputScreen(),
    );
  }
}

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TileBloc(const ParkingTileCalculator()),
      child: Scaffold(
        appBar: AppBar(),
        body: const _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TileBloc>();

    return BlocBuilder<TileBloc, TileState>(
      builder: (context, state) {
        final url = state.tileUrl;

        return ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          children: [
            TextField(
              onChanged: (v) => bloc.add(TileEvent.setLatitude(v)),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Latitude',
                errorText: state.latitudeError,
              ),
            ),
            TextField(
              onChanged: (v) => bloc.add(TileEvent.setLongitude(v)),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Longitude',
                errorText: state.longitudeError,
              ),
            ),
            TextField(
              onChanged: (v) => bloc.add(TileEvent.setZoom(v)),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Zoom',
                errorText: state.zoomError,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: state.canSubmit
                  ? () => bloc.add(const TileEvent.submit())
                  : null,
              child: const Text('Show Tile'),
            ),
            if (url != null) ...[
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Плитка',
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 300,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: url,
                    fit: BoxFit.fitHeight,
                    errorWidget: (context, url, error) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.error),
                          Text('Плитка не найдена'),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}
