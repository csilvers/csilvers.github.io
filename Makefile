deploy:
	rake generate
	rake deploy

new:
	[ -n "${TITLE}" ] && rake 'new_post[${TITLE}]'

preview:
	rake preview
