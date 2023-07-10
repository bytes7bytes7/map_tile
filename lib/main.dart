import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'parking_tile_calculator.dart';
import 'tile/tile_bloc.dart';

const _maxWidth = 600.0;

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
    final size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) => TileBloc(const ParkingTileCalculator()),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Map Tile'),
        ),
        body: SafeArea(
          child: Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: min(size.width, _maxWidth),
              child: const _Body(),
            ),
          ),
        ),
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
                labelText: 'Latitude',
                errorText: state.latitudeError,
              ),
            ),
            TextField(
              onChanged: (v) => bloc.add(TileEvent.setLongitude(v)),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Longitude',
                errorText: state.longitudeError,
              ),
            ),
            TextField(
              onChanged: (v) => bloc.add(TileEvent.setZoom(v)),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Zoom',
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
                'Tile',
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'x: ${state.x}, y: ${state.y}',
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
                          Text('No tile found'),
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
