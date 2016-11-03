// Copyright (c) 2016, Herman Bergwerf. All rights reserved.
// Use of this source code is governed by a MIT-style license
// that can be found in the LICENSE file.

import 'dart:html';

import 'package:guppy_dart/guppy.dart';

void main() {
  guppyInit('packages/guppy_dart/guppy/src/transform.xsl',
      'packages/guppy_dart/guppy/src/symbols.json');
  new Guppy(querySelector('#guppy'));
}
