// Copyright (c) 2016, Herman Bergwerf. All rights reserved.
// Use of this source code is governed by a MIT-style license
// that can be found in the LICENSE file.

import 'dart:html';

import 'package:guppy_dart/guppy_dart.dart';

void main() {
  guppyInit('packages/guppy_dart/deps/transform.xsl',
      'packages/guppy_dart/deps/symbols.json');
  final editor = new Guppy(querySelector('#guppy'));
  guppyAddSymbol('theta', '\\theta', 'theta');
  guppyAddSymbol('ihat', '\\hat{i}', 'ihat');
  guppyAddSymbol('phi', '\\phi', 'phi');
  guppyRemoveSymbol('phi');

  querySelector('#alert').onClick.listen((_) {
    print(editor.get_content('latex'));
  });
}
