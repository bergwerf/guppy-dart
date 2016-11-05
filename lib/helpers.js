// Copyright (c) 2016, Herman Bergwerf. All rights reserved.
// Use of this source code is governed by a MIT-style license
// that can be found in the LICENSE file.

// Unset symbol that was set by [Guppy.symb_raw]
function _guppyUnsetSymbol (name) {
  delete Guppy.kb.symbols[name]
}