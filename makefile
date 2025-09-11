.PHONY: update-toc
update-toc:
	bun x markdown-toc \
		--bullets='-' \
		-i \
		readme.md


.PHONY: lint
lint:
	bun x awesome-lint


.PHONY: test
test: lint
	lychee \
		--max-redirects 0 \
		--require-https \
		readme.md
