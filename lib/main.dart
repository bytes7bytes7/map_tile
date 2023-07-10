import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      create: (context) => TileBloc(),
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
        return ListView(
          shrinkWrap: true,
          children: [
            TextField(
              onChanged: (v) => bloc.add(TileEvent.setLatitude(v)),
              decoration: InputDecoration(
                hintText: 'Latitude',
                errorText: state.latitudeError,
              ),
            ),
            TextField(
              onChanged: (v) => bloc.add(TileEvent.setLongitude(v)),
              decoration: InputDecoration(
                hintText: 'Longitude',
                errorText: state.longitudeError,
              ),
            ),
            TextField(
              onChanged: (v) => bloc.add(TileEvent.setZoom(v)),
              decoration: InputDecoration(
                hintText: 'Zoom',
                errorText: state.zoomError,
              ),
            ),
          ],
        );
      },
    );
  }
}
