SYSTEMD_DIR=~/.config/systemd/
USER_PATH=~/.local/bin/

NAME=rescue-devshm

install:
	cp ./rescue-devshm.service $(SYSTEMD_DIR)
	cp ./rescue-devshm.sh $(USER_PATH)
	systemctl --user enable rescue-devshm.service

clean:
	$(RM) $(SYSTEMD_DIR)$(NAME).sh
