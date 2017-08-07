TARGET := generate_openvpn_config
SERVICE_DEST := ${HOME}/.config/systemd/user

install:
	sed -e 's|<PATH_TO>|'${PWD}'|g' ${PWD}/files/${TARGET}.service > ${SERVICE_DEST}/${TARGET}.service

uninstall:
	rm ${SERVICE_DEST}/${TARGET}.service
