
import 'package:flutter/material.dart';

import '../main.dart';

LinearGradient linearPattern() {
    return  const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.center,
              colors: [lightBlue, menuBlue],
              stops: [0.0, 1.0],
            );
  }