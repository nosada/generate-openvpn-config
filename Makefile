TARGET := generate_openvpn_config
SERVICE_DEST := ${HOME}/.config/systemd/user

install:
	install -Dm644 ${TARGET}.service ${SERVICE_DEST}/${TARGET}.service

uninstall:
	rm ${SERVICE_DEST}/${TARGET}.service
