init:
	# Create symlink for pre-commit hook.
	ln -sf ../../tool/pre-commit.sh .git/hooks/pre-commit

copy-guppy-sources:
	mkdir -p lib/deps
	cp lib/guppy/lib/katex/katex-modified.min.css lib/deps/katex-modified.min.css
	cp lib/guppy/lib/katex/katex-modified.min.js lib/deps/katex-modified.min.js
	cp lib/guppy/lib/mousetrap/mousetrap.min.js lib/deps/mousetrap.min.js
	cp lib/guppy/src/guppy.js lib/deps/guppy.js
	mkdir -p lib/default
	cp lib/guppy/src/transform.xsl lib/default/transform.xsl
	cp lib/guppy/src/symbols.json lib/default/symbols.json
