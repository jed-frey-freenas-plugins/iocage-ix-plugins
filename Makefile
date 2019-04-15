PLUGINS_!=ls *.json
PLUGINS:=${PLUGINS:.json=}

.PHONY:${PLUGINS}

.PHONY: debug
debug:
	echo ${PLUGINS}
	echo ${PLUGINS:.json=}

${PLUGINS}:
