// Copyright (c) 2016, Herman Bergwerf. All rights reserved.
// Use of this source code is governed by a MIT-style license
// that can be found in the LICENSE file.

/// See: https://github.com/daniel3735928559/guppy/blob/master/doc/api.md
@JS()
library guppy_dart;

import 'package:js/js.dart';
import 'dart:html';

@JS('Guppy.guppy_init')
external void guppyInit(String xslPath, String symbolsPath);

@JS('Guppy.symb_raw')
external void guppyAddSymbol(String name, String latex, String text);

@JS('_guppyRemoveSymbol')
external void guppyRemoveSymbol(String name);

@JS()
class Guppy {
  external Guppy(DivElement container,
      [Map<String, dynamic> properties = const {}]);

  external String get_content(String type);
  external void set_content(String xmlData);

  external void activate();
  external void deactivate();
}
