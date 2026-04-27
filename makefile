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
		--method get \
		--accept '200..=299,403,429' \
		--timeout 60 \
		--max-retries 3 \
		--retry-wait-time 5 \
		--user-agent 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36' \
		readme.md
