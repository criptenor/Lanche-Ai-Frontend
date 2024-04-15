// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class DropSpace extends StatefulWidget {
  const DropSpace({
    Key? key,
    this.width,
    this.height,
    this.listTitle,
    this.callback,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? listTitle;
  final Future<dynamic> Function()? callback;

  @override
  _DropSpaceState createState() => _DropSpaceState();
}

class _DropSpaceState extends State<DropSpace> {
  @override
  Widget build(BuildContext context) {
    return DragTarget<Map<String, dynamic>>(
      builder: (
        BuildContext context,
        List<dynamic> accepted,
        List<dynamic> rejected,
      ) {
        return Stack(
          children: [
            Container(
              width: widget.width,
              height: widget.height,
              decoration: BoxDecoration(
                color: Color.fromARGB(0, 255, 255, 255),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            if (accepted.isNotEmpty)
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Container(
                  width: widget.width,
                  height: widget.height,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 145, 146, 150),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
          ],
        );
      },
      onWillAccept: (dynamic data) {
        if (data is Map<String, dynamic>) {
          if (data.containsKey('list') && data.containsKey('title')) {
            return true;
          }
        }
        return false;
      },
      onAccept: (data) {
        if (data.containsKey('list') && data.containsKey('title')) {
          setState(() {
            final List<Map<String, dynamic>> tasks =
                FFAppState().tasks.cast<Map<String, dynamic>>();
            final index =
                tasks.indexWhere((task) => task['title'] == data['title']);
            if (index != -1) {
              tasks[index]['list'] = widget.listTitle;
              widget.callback
                  ?.call(); // call the callback with the accepted data
            }
          });
        }
      },
    );
  }
}
