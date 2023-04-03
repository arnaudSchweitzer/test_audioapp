import 'package:flutter/material.dart';
import 'package:audio_app_example/Views/songscreen.dart';
import 'package:just_audio/just_audio.dart';

class NoteDialog extends StatefulWidget {
  final AudioPlayer audioPlayer;

  const NoteDialog({Key? key, required this.audioPlayer}) : super(key: key);

  @override
  _NoteDialogState createState() => _NoteDialogState();
}

class _NoteDialogState extends State<NoteDialog> {
  String note = '';
  Duration? time;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add a Note'),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            TextField(
              onChanged: (value) => note = value,
              decoration: const InputDecoration(
                labelText: 'Note',
              ),
              autofocus: true,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Time:',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                StreamBuilder<Duration>(
                  stream: widget.audioPlayer.positionStream,
                  builder: (context, snapshot) {
                    final position = snapshot.data ?? Duration.zero;
                    time = position;
                    return Text(
                      '${position.inMinutes}:${(position.inSeconds % 60).toString().padLeft(2, '0')}',
                      style: Theme.of(context).textTheme.bodyText1,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            // Do something with the note and time.
            Navigator.of(context).pop();
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}
