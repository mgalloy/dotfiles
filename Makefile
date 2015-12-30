.PHONY: install templates

install:
	# setup various resource files
	cp ackrc ~/.ackrc
	cp aliases ~/.aliases
	cp emacs ~/.emacs
	cp foprc ~/.foprc
	cp inputrc ~/.inputrc
	cp signature ~/.signature
	cp nethackrc ~/.nethackrc
	cp pythonrc ~/.pythonrc

	# setup TextMate
	cp tm_properties ~/.tm_properties

	# setup docutils
	cp default.css ~/.default.css
	cp docutils ~/.docutils

	# setup bash
	cp `uname`_bash_profile ~/.bash_profile
	cp `uname`_bashrc ~/.bashrc

	# setup Subversion
	mkdir -p ~/.subversion
	cp subversion_config ~/.subversion/config

	# setup SSH
	mkdir -p ~/.ssh
	cp ssh_config ~/.ssh/config

	# setup git
	./git_setup.sh
	cp git-completion.bash ~/.git-completion.bash
	cp gitignore_global ~/.gitignore_global
	cp gitattributes ~/.gitattributes

	# setup IPython custom
	mkdir -p ~/.ipython/profile_default/static/custom
	#cp ipython_custom.css ~/.ipython/profile_default/static/custom/custom.css
	rm -f ~/.ipython/profile_default/static/custom/custom.css
	cp ipython_config.py ~/.ipython/profile_default
	cp ipython_nbconvert_config.py ~/.ipython/profile_default
	cp ipython_notebook_config.py ~/.ipython/profile_default
	cp ipython_qtconsole_config.py ~/.ipython/profile_default

	# Anaconda license
	mkdir -p ~/.continuum
	cp licenses/license_academic_20150715172552.txt ~/.continuum

templates:
	@test -s ~/.gvoice || { cp gvoice ~/.gvoice; echo "Make sure to add Google Voice password in ~/.gvoice"; }
