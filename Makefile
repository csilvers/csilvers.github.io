.PHONY: deploy new preview

deploy:
	git status | grep -q "nothing to commit"
	rake generate
	rake deploy
	git push

new:
	[ -n "${TITLE}" ] && rake 'new_post[${TITLE}]'

preview:
	rake preview
