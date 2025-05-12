import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'logoround_model.dart';
export 'logoround_model.dart';

class LogoroundWidget extends StatefulWidget {
  const LogoroundWidget({super.key});

  @override
  State<LogoroundWidget> createState() => _LogoroundWidgetState();
}

class _LogoroundWidgetState extends State<LogoroundWidget> {
  late LogoroundModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoroundModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        'assets/images/launcher_icn.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
