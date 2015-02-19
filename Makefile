.PHONY: deploy new preview

deploy:
	rake generate
	rake deploy
	git push

new:
	[ -n "${TITLE}" ] && rake 'new_post[${TITLE}]'

preview:
	rake preview
