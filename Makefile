install:
	cp chomsky /usr/local/bin
	mkdir -p /usr/local/share/chomsky
	cp -r words /usr/local/share/chomsky
	chmod +x /usr/local/bin/chomsky
