.PHONY: install

install:
	# setup various resource files
	cp ackrc ~/.ackrc
	cp aliases ~/.aliases
	cp emacs ~/.emacs
	cp foprc ~/.foprc
	cp inputrc ~/.inputrc
	cp signature ~/.signature
	
	# setup docutils
	cp default.css ~/.default.css
	cp docutils ~/.docutils
	
	# setup bash
	cp `uname`_bash_profile ~/.bash_profile
	cp bashrc ~/.bashrc
	
	# setup Subversion
	mkdir -p ~/.subversion
	cp subversion_config ~/.subversion/config
	
	# setup SSH
	mkdir -p ~/.ssh
	cp ssh_config ~/.ssh/config
	
	# setup git
	./git_setup.sh
	cp git-completion.bash ~/.git-completion.bash
	cp gitconfig ~/.gitconfig
	cp gitignore_global ~/.gitignore_global
	
	# setup IPython custom
	mkdir -p ~/.ipython/profile_default/static/custom
	cp ipython_custom.css ~/.ipython/profile_default/static/custom/custom.css

	cp ipython_config.py ~/.ipython/profile_default
	cp ipython_nbconvert_config.py ~/.ipython/profile_default
	cp ipython_notebook_config.py ~/.ipython/profile_default
	cp ipython_qtconsole_config.py ~/.ipython/profile_default