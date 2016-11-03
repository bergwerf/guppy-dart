init:
	# Create symlink for pre-commit hook.
	ln -sf ../../tool/pre-commit.sh .git/hooks/pre-commit

update-guppy-deps:
	# Pub does not like git submodules, so we have to copy the sources into the
	# repository.
	git clone https://github.com/daniel3735928559/guppy

	mkdir -p lib/deps/fonts
	cp -R guppy/lib/katex/fonts/ lib/deps/
	cp guppy/lib/katex/katex-modified.min.css lib/deps/katex-modified.min.css
	cp guppy/lib/katex/katex-modified.min.js lib/deps/katex-modified.min.js
	cp guppy/lib/mousetrap/mousetrap.min.js lib/deps/mousetrap.min.js
	cp guppy/src/guppy.js lib/deps/guppy.js
	cp guppy/src/transform.xsl lib/deps/transform.xsl
	cp guppy/src/symbols.json lib/deps/symbols.json

	rm -rf guppy
