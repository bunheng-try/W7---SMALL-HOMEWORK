import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w7_small_homework/ui/screens/library/view_model/library_view_model.dart';
import 'package:w7_small_homework/ui/screens/library/widgets/library_content.dart';

import '../../../data/repositories/songs/song_repository.dart';
import '../../../model/songs/song.dart';
import '../../states/player_state.dart';
import '../../states/settings_state.dart';
import '../../theme/theme.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: LibraryContent(),
      create: (_) {
        return LibraryViewModel(
          playerState: context.read<PlayerState>(),
          songRepository: context.watch<SongRepository>(),
        );
      },
    );
  }
}
