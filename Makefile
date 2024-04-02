.PHONY: install update gz
install:
	$(MAKE) update
update:
	sudo apt update
	sudo apt install -uy `cat apt.txt`
	bin/pip install -U `cat requirements.in`

# curl https://packages.microsoft.com/keys/microsoft.asc | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc
# curl https://packages.microsoft.com/config/debian/12/prod.list | tee /etc/apt/sources.list.d/msprod.list
