.PHONY: update-toc
update-toc:
	bun x markdown-toc \
		--bullets='-' \
		-i \
		readme.md


.PHONY: test
test:
	lychee readme.md
